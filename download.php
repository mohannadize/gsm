<?php

$id = (int) $_GET['id'];

$file = $db->query("SELECT id,`url`,size from files where id='$id'");
$file = $db->fetch_array($file);

if (isset($_SESSION['admin']) && $_SESSION['admin']) {
    header("location: $file[url]");
}

$user = $db->query("SELECT balance,daily_balance from users where id='$_SESSION[id]'");
$user = $db->fetch_array($user);
if ($user['balance'] + $user['daily_balance'] > $file['size']) {
    if ($user['daily_balance'] - $file['size'] > 0) {
        $new_daily = $user['daily_balance'] - $file['size'];
        $new_balance = $user['balance'];
    } else {
        $new_daily = 0;
        $new_balance = $user["balance"] + $user['daily_balance'] - $file['size'];
    }
    if ($db->query("UPDATE users set balance='$new_balance', daily_balance='$new_daily'")) {
        $db->query("UPDATE files set downloads=downloads+1 where id='$file[id]'");
        header("location: $file[url]");
    } else {
        $message = "Sorry an error has occurred";
        $page = "./components/error.php";
        print_notice_page("login", $page, $message, null, $db, $logged_in);
    };
} else {
    $message = 'You do not have enough balance in your account';
    $page = "./components/error.php";
    print_notice_page("login", $page, $message, null, $db, $logged_in);
    exit;
}
exit;
