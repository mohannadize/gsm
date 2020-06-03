<?php

ini_set("display_errors", false);

$id = (int) $_GET['id'];

$file = $db->query("SELECT id,`url`,size from files where id='$id'");
$file = $db->fetch_array($file);


$user = $db->query("SELECT balance from users where id='$logged_in[id]'");
$user = $db->fetch_array($user);

$active = get_active_subscription($logged_in, $db);

if ($active['balance'] == '-1' || isset($logged_in['admin']) && $logged_in['admin']) {
    if (!$logged_in['admin']) {
        $db->query("UPDATE files set downloads=downloads+1 where id='$file[id]'");
    }
    if (is_numeric($file['url'])) {
        $file = $db->fetch_array($db->query("SELECT * from uploads WHERE id = '$file[url]'"));
        $name = $file['file_name'];

        header("Content-Type: $file[type]");
        header("Content-Length: " . filesize($file['location']));
        header("content-disposition: attachment; filename=\"$name\"");
        
        readfile($file['location']);
        exit;
        
    } else {
        header("location: $file[url]");
    }
}

if ($active && $active['balance'] > $file['size']) {
    $new_balance = $user["balance"] - $file['size'];
    if ($db->query("UPDATE users set balance='$new_balance'")) {
        $db->query("UPDATE files set downloads=downloads+1 where id='$file[id]'");
        if (is_numeric($file['url'])) {
            $file = $db->fetch_array($db->query("SELECT * from uploads WHERE id = '$file[url]'"));
            $name = $file['file_name'];

            header("Content-Type: $file[type]");
            header("Content-Length: " . filesize($file['location']));
            header("content-disposition: attachment; filename=\"$name\"");
            
            readfile($file['location']);
            exit;
            
        } else {
            header("location: $file[url]");
        }
    } else {
        $message = "حدث خطا مفاجئ<br>الرجاء مراجعة صاحب الموقع";
        $page = "./components/error.php";
        print_notice_page("roms", $page, $message, "components/roms.php", $db, $logged_in);
    };
} else {
    $message = "لا يوجد رصيد كافي لتحميل هذا الملف<br>الرجاء الاشتراك في باقة اكبر";
    $page = "./components/error.php";
    print_notice_page("packages", $page, $message, 'components/packages.php', $db, $logged_in);
    exit;
}
exit;
