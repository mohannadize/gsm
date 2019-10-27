<?php

function print_web_page($action, $section,$logged_in,$db, $head_append="")
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

function print_notice_page($action, $notification, $message, $section=false, $head_append="")
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

function verify_signup($data) {
    if ($data["name"] == "" || $data["username"] == "" || $data["password"] == "" || $data["email"] == "")
        return false;

    $data["name"] = strip_tags(trim($data["name"]));

    if (preg_match( "/^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/", $data[ 'email' ] )) 
    $data['email'] = trim($data['email']); 
    else return false;

    if (strlen($data['name']) > 40) return false;

    if (!preg_match("/^\w+$/",$data['username']) || strlen($data['username']) > 30) return false;

    if ($data['password'] != $data['cpassword'] || !isset($data['terms'])) return false;

    return $data;
}

function login_user($data,$db) {
    
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

function update_site_settings($data,$db) {

    var_dump($data);
}