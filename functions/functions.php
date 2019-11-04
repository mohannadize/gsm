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

function print_notice_page($action, $page, $message,  $section = false, $db = null, $logged_in = false)
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

            // Component 
            include $page;
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

    if (filter_var($data['email'], FILTER_VALIDATE_EMAIL))
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
    $logo_as_text = isset($data['logo_as_text']) ? 1 : 0;
    $maintainance = isset($data['maintainance']) ? 1 : 0;
    $increment_daily = isset($data['increment_daily']) ? 1 : 0;

    if (
        !filter_var($email, FILTER_VALIDATE_EMAIL)
        || !filter_var($paypal, FILTER_VALIDATE_EMAIL)
    ) return false;

    return $db->query("UPDATE `site` SET 
     `site-name`='$site_name',
     `description`='$description',
     `daily_free`='$daily_free',
     `email`='$email',
     `paypal`='$paypal',
     `increment_daily`='$increment_daily',
     `logo_as_text`='$logo_as_text',
     `maintainance`='$maintainance' ");
}

function add_rom($data, $db)
{
    $admin_check = $db->query("SELECT admin from users WHERE username='$_SESSION[username]'");
    $admin_check = $db->fetch_array($admin_check);
    $admin_check = (int) $admin_check["admin"];
    if ($admin_check === 0) return false;

    $model = strip_tags(trim($data['model']));
    $build = strip_tags(trim($data['build']));
    $android = strip_tags(trim($data['android']));
    $country = strip_tags(trim($data['country']));
    $size = trim($data['size']) * 1024 * 1024;
    $url = trim($data['url']);
    $search = "$model $build $country";

    $query = "INSERT INTO files (model, build_v, android_v, country, size, `url`, search_text) 
    VALUES ('$model', '$build', '$android', '$country', '$size', '$url', '$search')";

    return $db->query($query);
}

function add_comb($data, $db)
{
    $admin_check = $db->query("SELECT admin from users WHERE username='$_SESSION[username]'");
    $admin_check = $db->fetch_array($admin_check);
    $admin_check = (int) $admin_check["admin"];
    if ($admin_check === 0) return false;

    $model = strip_tags(trim($data['model']));
    $build = strip_tags(trim($data['build']));
    $android = strip_tags(trim($data['android']));
    $country = strip_tags(trim($data['country']));
    $security = strip_tags(trim($data['security']));
    $type = 1;
    $size = trim($data['size']) * 1024 * 1024;
    $url = trim($data['url']);
    $search = "$model $build $country";

    $query = "INSERT INTO files (model, build_v, android_v, country, size, `url`, security_level, `type`, search_text) 
    VALUES ('$model', '$build', '$android', '$country', '$size', '$url', '$security', '$type', '$search')";

    return $db->query($query);
}

function change_logo_image($file, $db)
{
    $admin_check = $db->query("SELECT admin from users WHERE username='$_SESSION[username]'");
    $admin_check = $db->fetch_array($admin_check);
    $admin_check = (int) $admin_check["admin"];
    if ($admin_check === 0) return false;

    $ext = strtolower(pathinfo($file['name'], PATHINFO_EXTENSION));
    if ($ext == 'php') return false;
    if ($file['size'] == 0) return false;

    $target_dir = "./imgs/";
    $target_file = $target_dir . "logo.$ext";
    $query = "UPDATE `site` SET `logo_file`='$target_file'";
    is_dir($target_dir) ? 0 : mkdir($target_dir);
    if ($db->query($query) && move_uploaded_file($file["tmp_name"], $target_file)) {
        return true;
    } else {
        return false;
    }
}

function modify_file($data, $db)
{
    $admin_check = $db->query("SELECT admin from users WHERE username='$_SESSION[username]'");
    $admin_check = $db->fetch_array($admin_check);
    $admin_check = (int) $admin_check["admin"];
    if ($admin_check === 0) return false;
    
    $id = (int) (trim($data['id']));
    $model = strip_tags(trim($data['model']));
    $build = strip_tags(trim($data['build']));
    $android = strip_tags(trim($data['android']));
    $country = strip_tags(trim($data['country']));
    if (isset($data['security'])) {
        $security = strip_tags(trim($data['security']));
    } else {
        $security = null;
    }
    $size = trim($data['size']) * 1024 * 1024;
    $url = trim($data['url']);
    $search = "$model $build $country";

    $query = "UPDATE files SET model='$model', build_v='$build', android_v='$android', country='$country', security_level='$security', size='$size', `url`='$url', search_text='$search' WHERE id='$id'";

    return $db->query($query);
}

function delete_rom($data, $db)
{

}

function download_rom($data, $db)
{ }

function modify_user($data, $db)
{
    $username = trim($data["username"]);
    $email = trim($data['email']);
    if (!preg_match("/^\w+$/", $username) || strlen($username) > 30) return false;

    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) return false;

    $user_exists = $db->query("SELECT username from users WHERE `username`='$username'");
    if ($db->num_rows($user_exists)) return false;

    $_SESSION['username'] = $username;
    if ($data['password'] != "") {
        if ($data['password'] != $data['cpassword']) {
            return false;
        } else {
            return $db->query("UPDATE users SET `username`='$username',`email`='$email',`password`='$data[password]' WHERE `id`='$_SESSION[id]'");
        }
    } else {
        return $db->query("UPDATE users SET `username`='$username',`email`='$email' WHERE `id`='$_SESSION[id]'");
    }
}

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

function generateRandomString($length = 6, $letters = '1234567890QWERTYUOPASDFGHJKLZXCVBNM1234567890qwertyuiopasdfghjkzxcvbnm')
{
    $s = '';
    $lettersLength = strlen($letters) - 1;

    for ($i = 0; $i < $length; $i++) {
        $s .= $letters[rand(0, $lettersLength)];
    }

    return $s;
}

function bytes_to_human($bytes) {
    $mapping = ["B","KB","MB","GB","TB"];
    $counter = 0;
    while ((+$bytes / 1024) >= 1) {
        $bytes = +$bytes / 1024;
        $counter++;
    }
    $bytes = round($bytes,2);
    return "$bytes $mapping[$counter]";
}