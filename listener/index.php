<?php

ini_set("display_errors",0);

require('PaypalIPN.php');

use PaypalIPN;

$ipn = new PaypalIPN();

// // Use the sandbox endpoint during testing.
$ipn->useSandbox();
// $verified = $_POST['payment_status'] === "Completed";
$verified = $ipn->verifyIPN();
if ($verified) {
    $arraii = [
        "verified" => $verified,
        "POST" => $_POST,
        "phpInput" => file_get_contents("php://input"),
        "SERVER" => $_SERVER,
        "REQUEST" => $_REQUEST,
        "COOKIE" => $_COOKIE,
        "GET" => $_GET,
        "SESSION" => $_SESSION
    ];
    file_put_contents("log.json", json_encode($arraii).PHP_EOL.PHP_EOL, FILE_APPEND);
}

// // Reply with an empty 200 response to indicate to paypal the IPN was received correctly.
header("HTTP/1.1 200 OK");

?>