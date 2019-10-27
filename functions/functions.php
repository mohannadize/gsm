<?php

function print_web_page($action, $section, $logged_in, $db, $head_append = "")
{
    ?>

    <!DOCTYPE html>
    <html lang="en" class="has-navbar-fixed-top">

    <head>
        <?php

            include "components/head.php";
            echo $head_append;

            ?>
    </head>

    <body>


        <?php

            include "components/header.php";

            // Page Content
            include $section;

            include "components/footer.php";

            include "components/scripts.php";

            ?>
    </body>

    </html>


<?php
}

function print_notice_page($action, $notification, $message,  $section = false, $db = null, $logged_in=false)
{
    ?>

    <!DOCTYPE html>
    <html lang="en" class="has-navbar-fixed-top">

    <head>
        <?php

            include "components/head.php";

            ?>
    </head>

    <body>


        <?php

            include "components/header.php";

            // Notification 
            include $notification;
            // Page Content
            if ($section) include $section;

            include "components/footer.php";

            include "components/scripts.php";

            ?>
    </body>

    </html>


<?php
}

function verify_signup($data)
{
    if ($data["name"] == "" || $data["username"] == "" || $data["password"] == "" || $data["email"] == "")
        return false;

    $data["name"] = strip_tags(trim($data["name"]));

    if (preg_match("/^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/", $data['email']))
        $data['email'] = trim($data['email']);
    else return false;

    if (strlen($data['name']) > 40) return false;

    if (!preg_match("/^\w+$/", $data['username']) || strlen($data['username']) > 30) return false;

    if ($data['password'] != $data['cpassword'] || !isset($data['terms'])) return false;

    return $data;
}

function login_user($data, $db)
{

    $username = trim($data['username']);
    $password = trim($data['password']);

    $result = $db->query("SELECT id,username,password,admin from users WHERE username='$username'");

    if ($db->num_rows($result)) {
        $result = $db->fetch_array($result);
        if ($password == $result['password']) {
            session_start();
            $_SESSION['loggedin'] = true;
            $_SESSION['id'] = $result['id'];
            $_SESSION['username'] = $result['username'];
            if ($result['admin']) {
                $_SESSION['admin'] = true;
            };

            return true;
        } else {
            return false;
        };
    } else {
        return false;
    }

    return false;
}

function update_site_settings($data, $db)
{
    $admin_check = $db->query("SELECT admin from users WHERE username='$_SESSION[username]'");
    $admin_check = $db->fetch_array($admin_check);
    $admin_check = (int) $admin_check["admin"];
    if ($admin_check === 0) {
        return false;
    }
    $site_name = strip_tags(trim($data['site-name']));
    $description = strip_tags(trim($data['description']));
    $daily_free = (int) $data['daily_free'];
    $email = trim($data['email']);
    $paypal = trim($data['paypal']);
    $logo_as_text = isset($data['logo_as_text']) ? 1:0;
    $maintainance = isset($data['maintainance']) ? 1:0;
    $increment_daily = isset($data['increment_daily']) ? 1:0;

    if (
        !preg_match("/^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/", $email)
        || !preg_match("/^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/", $paypal)
    ) return false;

    $db->query("UPDATE `site` SET 
     `site-name`='$site_name',
     `description`='$description',
     `daily_free`='$daily_free',
     `email`='$email',
     `paypal`='$paypal',
     `increment_daily`='$increment_daily',
     `logo_as_text`='$logo_as_text',
     `maintainance`='$maintainance' ");

    return true;
}

function add_rom($data, $file, $db)
{ }

function modify_rom($data, $db)
{ }

function delete_rom($data, $db)
{ }

function download_rom($data, $db)
{ }

function modify_user($data, $db)
{ }

function add_admin_account($data, $db)
{
    if ($data["name"] == "" || $data["username"] == "" || $data["password"] == "" || $data["email"] == "")
        return false;

    $data["name"] = strip_tags(trim($data["name"]));

    if (preg_match("/^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/", $data['email']))
        $data['email'] = trim($data['email']);
    else return false;

    if (strlen($data['name']) > 40) return false;

    if (!preg_match("/^\w+$/", $data['username']) || strlen($data['username']) > 30) return false;

    if ($data['password'] != $data['cpassword'] || !isset($data['terms'])) return false;

    return $data;
}

function change_logo_image($data,$file,$db) {

}