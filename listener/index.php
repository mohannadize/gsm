<?php
include "../functions/database.php";
include "../functions/functions.php";

ini_set("display_errors", 0);

require('PaypalIPN.php');

if ($_SERVER['REQUEST_METHOD'] == "POST") {


    $ipn = new PaypalIPN();

    // // Use the sandbox endpoint during testing.
    $ipn->useSandbox();

    $verified = $ipn->verifyIPN();

    $paid = $verified && $_POST['payment_status'] === "Completed";

    if ($paid) {
        $time = time();
        $transaction_ref = $db->escape_value($_GET['transaction_ref']);
        $db->query("UPDATE transactions SET `confirmed` = '$time' WHERE BINARY `transaction_ref`='$transaction_ref'");
        $details = $db->query("SELECT * from transactions WHERE BINARY `transaction_ref` = '$transaction_ref'");
        $details = $db->fetch_array($details);
        successful_subscription([
            'user_id' => $details['user_id'],
            'plan_id' => $details['plan_id']
        ],$db);
    }

    // // Reply with an empty 200 response to indicate to paypal the IPN was received correctly.
    header("HTTP/1.1 200 OK");
} else {
    header("location: .");
}
