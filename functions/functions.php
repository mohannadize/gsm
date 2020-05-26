<?php
session_start();
$GLOBALS['title'] = 'gsm';

function print_web_page($action, $section, $logged_in, $db, $head_append = "")
{
?>
    <!DOCTYPE html>
    <html lang="ar" class="has-navbar-fixed-top">

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
    <html lang="ar" class="has-navbar-fixed-top">

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

function generate_email($details, $db)
{
    $site_info = $db->query("SELECT * from `site`");
    $site_info = $db->fetch_array($site_info);
    $title = $site_info['site-name'];
    $url = $site_info['url'];
    $admin_email = $site_info['email'];
    if (!isset($details['subject']) || !isset($details['message'])) {
        return false;
    }
    $subject = $details['subject'];
    $message = $details['message'];

    if (isset($details['title'])) {
        $title .= " || $details[title]";
    }

    $email = "
    <!DOCTYPE html>
                <html lang=\"en\">
                <head>
                <meta charset=\"UTF-8\">
                <style>
                html,body {
                    margin:0;
                    padding:0;
                    font-family: sans-serif;
                }
                header {
                    max-width: 100%;
                    box-sizing: border-box;
                    background-color: teal;
                    color:white
                }
                header, main, footer {
                    padding: 20px 30px 20px;
                }
                footer {
                    text-align: center;
                    background-color: lightgrey;
                }
                header a {
                    text-decoration: none;
                    color:rgb(95, 226, 243);
                }
                a {
                    color: teal;
                    font-weight: 600;
                    display:inline-block;
                }
                .rtl {
                    direction: rtl;
                }

                .ltr {
                    direction: ltr;
                }
                </style>
                </head>
                <body>
                <header>
                <h1 class='rtl' style=\"font-weight: 400;\">$title</h1>
                </header>
                <main class='rtl'>
                <h2>$subject</h2>
                <p>
                $message
        </p>
        </main>
        <footer class='rtl'>
        راسلنا على <a class='ltr' href='mailto:$admin_email'>$admin_email</a><br><br><a class='ltr' href='$url'>$url</a>
        </footer>
        </body>
        </html>

    ";

    return $email;
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
    $username = trim($db->escape_value($data['username']));
    preg_replace("/[^A-Za-z0-9-_]/", "", $username);
    $password = trim($data['password']);

    $result = $db->query("SELECT u.`name`, u.`id`, u.`username`, u.`password`, u.`plan`, u.`last_login`, u.`admin` from users u WHERE (email='$username' OR username='$username') AND `deactivated`='0'");
    $settings = $db->query("SELECT daily_free from `site`");
    $settings = $db->fetch_array($settings);

    if ($db->num_rows($result)) {
        $result = $db->fetch_array($result);

        if ($password == $result['password']) {
            $_SESSION[$GLOBALS['title']]['loggedin'] = true;
            $_SESSION[$GLOBALS['title']]['id'] = $result['id'];
            $_SESSION[$GLOBALS['title']]['name'] = $result['name'];
            $_SESSION[$GLOBALS['title']]['username'] = $result['username'];
            $_SESSION[$GLOBALS['title']]['admin'] = (int) $result['admin'];
            $_SESSION[$GLOBALS['title']]['plan'] = (int) $result['plan'];
            $new_rewards = time() - date_timestamp_get(date_create($result['last_login']));
            if ($new_rewards > 86400) {
                $db->query("UPDATE users SET daily_balance='$settings[daily_free]',last_login=CURRENT_TIMESTAMP where id='$result[id]'");
            }

            return true;
        } else {
            return false;
        };
    } else {
        return false;
    }

    return false;
}

function check_login($db)
{
    $title = $GLOBALS['title'];
    if (!isset($_SESSION[$title])) return false;
    $session = $_SESSION[$title];
    if (isset($session['loggedin']) && $session['loggedin'] == true) {
        if (isset($session['LAST_ACTIVITY']) && (time() - $session['LAST_ACTIVITY'] > 60000)) {
            session_unset();
            session_destroy();
            return false;
        } else {
            return $session;
        }
    }
    return false;
}

function update_site_settings($data, $db)
{
    $site_name = strip_tags(trim($data['site-name']));
    $description = strip_tags(trim($data['description']));
    $daily_free = (int) $data['daily_free'] * 1024 * 1024;
    $email = trim($data['email']);
    $paypal = trim($data['paypal']);
    $price = (float) $data['price'];
    $logo_as_text = isset($data['logo_as_text']) ? 1 : 0;
    $maintainance = isset($data['maintainance']) ? 1 : 0;

    if (
        !filter_var($email, FILTER_VALIDATE_EMAIL)
        || !filter_var($paypal, FILTER_VALIDATE_EMAIL)
    ) return false;

    return $db->query("UPDATE `site` SET 
     `site-name`='$site_name',
     `description`='$description',
     `daily_free`='$daily_free',
     `email`='$email',
     `price`='$price',
     `paypal`='$paypal',
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
    $search = "$model $country $build";

    $query = "INSERT INTO files (model, build_v, android_v, country, size, `url`, search_text) 
    VALUES ('$model', '$build', '$android', '$country', '$size', '$url', '$search')";

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
    $search = "$model $country $build";

    $query = "UPDATE files SET model='$model', build_v='$build', android_v='$android', country='$country', security_level='$security', size='$size', `url`='$url', search_text='$search' WHERE id='$id'";

    return $db->query($query);
}

function delete_file($data, $db)
{
    $admin_check = $db->query("SELECT admin from users WHERE username='$_SESSION[username]'");
    $admin_check = $db->fetch_array($admin_check);
    $admin_check = (int) $admin_check["admin"];
    if ($admin_check === 0) return false;

    if (isset($data['id'])) {
        $id = (int) (trim($data['id']));
        return $db->query("DELETE FROM files WHERE id='$id'");
    } else {
        return false;
    }
}
function delete_user($data, $db)
{
    $admin_check = $db->query("SELECT admin from users WHERE username='$_SESSION[username]'");
    $admin_check = $db->fetch_array($admin_check);
    $admin_check = (int) $admin_check["admin"];
    if ($admin_check === 0) return false;

    if (isset($data['id'])) {
        $id = (int) (trim($data['id']));
        return $db->query("DELETE FROM users WHERE id='$id'");
    } else {
        return false;
    }
}

function admin_add_balance($data, $db)
{
    $admin_check = $db->query("SELECT admin from users WHERE username='$_SESSION[username]'");
    $admin_check = $db->fetch_array($admin_check);
    $admin_check = (int) $admin_check["admin"];
    if ($admin_check === 0) return false;

    if (!isset($data['id']) || !isset($data['add_balance'])) {
        return false;
    }

    $id = (int) $data['id'];
    $add = $data["add_balance"] * 1024 * 1024;

    return $db->query("UPDATE users set `balance`=`balance`+'$add' WHERE id='$id'");
}

function modify_user($data, $db)
{
    // ini_set("display_errors",1);
    $username = trim($data["username"]);
    $email = trim($data['email']);
    if (!preg_match("/^\w+$/", $username) || strlen($username) > 30) return false;
    $id = (int) $data['id'];

    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) return false;

    $user_exists = $db->query("SELECT username from users WHERE `username`='$username' AND id!='$id'");
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

function add_new_plan($data, $db)
{
    $data = $db->escape_value($data);
    $name = htmlspecialchars($data['name']);
    $description = htmlspecialchars($data['description']);
    $color = $data['color'];
    $duration = $data['duration'];
    $cap = $data['cap'] * 1024 * 1024;
    $price = $data['price'];

    $query = "INSERT INTO plans (`name`, `description`, `color`, `duration`, `cap`, `price`) VALUES ('$name', '$description', '$color', '$duration', '$cap', '$price')";

    return $db->query($query);
}

function delete_plan($data, $db)
{
    $id = (int) $data['plan_id'];
    $date = date("Y-m-d");
    $query = "UPDATE plans SET `deactivated` = '$date' WHERE `id` = '$id'";

    return $db->query($query);
}

function plan_subscribe($logged_in, $data, $db)
{

    $user_id = $logged_in['id'];
    $user_email = $db->query("SELECT email from users WHERE `id` = '$user_id'");
    $user_email = $db->fetch_array($user_email);
    $user_email = $user_email['email'];

    $plan_id = $data['plan_id'];
    $date = time();

    $plan = $db->query("SELECT * from plans where `id` = '$plan_id'");
    $plan = $db->fetch_array($plan);

    $price = (float) $plan['price'];
    $transaction_ref = generateRandomString(8);



    $db->query("DELETE FROM transactions WHERE `user_id` = '$user_id'");

    if ($price > 0) {
        $db->query("INSERT INTO transactions (`user_id`, `plan_id`, `transaction_ref`, `price`, `date`, `confirmed`) VALUES ('$user_id', '$plan_id', '$transaction_ref', '$price', '$date', '0')");
        include "listener/form.php";
        send_email('pending_subscription', [
            'transaction_ref' => $transaction_ref,
            'user_email' => $user_email
        ], $db);
    } else {
        return successful_subscription([
            'user_id' => $user_id,
            'plan_id' => $plan_id
        ], $db);
    }
    return false;
}

function successful_subscription($data, $db)
{
    $user_id = $data['user_id'];
    $user_email = $db->query("SELECT email from users WHERE `id` = '$user_id'");
    $user_email = $db->fetch_array($user_email);
    $user_email = $user_email['email'];

    $plan_id = $data['plan_id'];

    $plan = $db->query("SELECT * from plans where `id` = '$plan_id'");
    $plan = $db->fetch_array($plan);

    $expiration = time() + $plan['duration'];
    $capacity = $plan['cap'];

    $query = "UPDATE users SET `balance` = '$capacity', `plan` = '$plan_id', `plan_expiration` = '$expiration' WHERE `id` = '$user_id'";
    if ($db->query($query)) {
        send_email('successful_subscription', [
            'user_email' => $user_email
        ], $db);
        return true;
    }
    return false;
}

function check_pending_subscription($logged_in, $db)
{
    $user_id = $logged_in['id'];
    $check = $db->query("SELECT * from transactions WHERE `user_id` = '$user_id' AND `confirmed` = 0 ORDER BY id DESC");
    $check = $db->fetch_array($check);
    if ($check) {
        $plan = $db->query("SELECT `name`,`color` from plans where `id` = '$check[plan_id]' ");
        $plan = $db->fetch_array($plan);
        $plan['ref'] = $check['transaction_ref'];
        return $plan;
    }
    return false;
}

function send_email($type, $data, $db)
{
    if (!isset($data['user_email'])) {
        return false;
    }
    $settings = $db->query("SELECT `site-name`, `email`,`url` from `site`");
    $settings = $db->fetch_array($settings);
    $to = $data['user_email'];
    $url = $settings['url'];
    $sitename = $settings['site-name'];
    $reply_to = $settings['email'];

    $subject = $settings['site-name'];



    // Always set content-type when sending HTML email
    $headers = "MIME-Version: 1.0" . "\r\n";
    $headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";
    $headers .= "From: admin@mohannad.website\r\n";
    $headers .= "Reply-To: $reply_to\r\n";
    
    $subject .= ' || ';

    switch ($type) {
        case 'pending_subscription':
            $subject .= 'تم انشاء طلب اشتراكك';
            $title = 'اشتراك في الباقة';
            $message = "تم انشاء طلب اشتراكك برقم ($data[transaction_ref]).";
            break;
        case 'successful_subscription':
            $subject .= 'تم تأكيد عملية الدفع';
            $title = 'اشتراك في الباقة';
            $message = "يمكنك الآن البدأ في التحميل! <a href='$url'>ابدا من هنا</a>";
            break;
        case 'successful_signup':
            $subject = "أهلا بك في $sitename";
            $title = "أهلا بك";
            $message = "أهلا يا $data[name]<br>بمكنك الان البدا في تصفح موقعنا و التحميل بحريه، اذا لديك اي استفسارات راسلنا على بريدما الإلكتروني!";
            break;
        default:
            return false;
            break;
    }

    $html = generate_email([
        'title' => $title,
        'subject' => $subject,
        'message' => $message
    ], $db);
    
    mail($to, $subject, $html, $headers);

    return $html;
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

function bytes_to_human($bytes)
{
    $mapping = ["بايت", "كيلوبايت", "ميجا", "جيجا", "تيرا"];
    $counter = 0;
    while ((+$bytes / 1024) >= 1) {
        $bytes = +$bytes / 1024;
        $counter++;
    }
    $bytes = round($bytes, 2);
    return "$bytes $mapping[$counter]";
}

function duration_to_human($time)
{
    $mapping = [
        "86400" => 'يوم',
        "604800" => 'اسبوع',
        "2592000" => 'شهر',
        "7776000" => '3 شهور',
        "15552000" => '6 شهور',
        "31104000" => 'سنه',
        "-1" => 'ﻻ محدود'
    ];

    return $mapping[$time];
}
