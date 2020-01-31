<?php
session_start();

include "./functions/database.php";
include "./functions/functions.php";

$logged_in = isset($_SESSION['loggedin']) && $_SESSION['loggedin'] == true;


if ($_SERVER["REQUEST_METHOD"] == 'POST') {

    switch ($_POST['action']) {
        case 'signup':
            $user_data = verify_signup($_POST);
            if (!$user_data) {
                $message = "حدث خطأ، الرجاء اعادة المحاولة لاحقاََ";
                $page = "./components/error.php";
                print_notice_page('signup', $page, $message, null, $db);
                die();
            } else {
                $user_exists = $db->query("SELECT username from users WHERE `username`='$_POST[username]'");
                if ($db->num_rows($user_exists)) {
                    $message = "اسم المستخدم مسنخدم من قبل.";
                    $page = "./components/error.php";
                    print_notice_page('signup', $page, $message, null, $db);
                    exit;
                }
                if ($db->add_user($user_data['name'], $user_data['username'], $user_data['password'], $user_data['email'])) {
                    $message = "تم تسجيل الحساب بنجاح!";
                    $page = './components/success.php';
                    print_notice_page('signup', $page, $message, "./components/login.php", $db);
                } else {
                    $message = "نعتذر، الموقع لا يستقبل حسابات جديدة حالياََ.";
                    $page = "./components/error.php";
                    print_notice_page('signup', $page, $message, null, $db);
                };
                die();
            };
            break;

        case "login":
            if (login_user($_POST, $db)) {
                header("location: index.php");
            } else {
                $message = "اسم المستخدم او كلمة المرور غير صحيحة";
                $page = "./components/error.php";
                print_notice_page('login', $page, $message, "./components/login.php", $db);
            }
            break;

        case "update_site":
            if (update_site_settings($_POST, $db, $logged_in)) {
                $message = "تم حفظ الاعدادات الجديدة بنجاح!";
                $page = "./components/success.php";
                print_notice_page('admin', $page, $message, "./components/admin.php", $db, $logged_in);
            } else {
                $message = "الرجاء تسجيل الدخول";
                $page = "./components/error.php";
                print_notice_page("login", $page, $message, "./components/login.php", $db);
            };
            break;
        case "add_rom":
            if (add_rom($_POST, $db)) {
                $message = "تم اضافة الروم بنجاح";
                $page = "./components/success.php";
                print_notice_page("admin", $page, $message, './components/admin.php', $db, $logged_in);
            } else {
                $message = "حدث خطأ ما";
                $page = "./components/error.php";
                print_notice_page("admin", $page, $message, './components/admin.php', $db, $logged_in);
            }
            break;
        case "modify_file":
            if (modify_file($_POST, $db)) {
                $message = "تم تعديل الملف بنجاح";
                $page = "./components/success.php";
                print_notice_page("admin", $page, $message, './components/admin.php', $db, $logged_in);
            } else {
                $message = "حدث خطأ ما";
                $page = "./components/error.php";
                print_notice_page("admin", $page, $message, './components/admin.php', $db, $logged_in);
            }
            break;
        case "update_logo";
            if (change_logo_image($_FILES['file'], $db)) {
                $message = "تم تجديد اللوجو بنجاح";
                $page = "./components/success.php";
                print_notice_page("admin", $page, $message, './components/admin.php', $db, $logged_in);
            } else {
                $message = "حدث خطأ ما";
                $page = "./components/error.php";
                print_notice_page("admin", $page, $message, './components/admin.php', $db, $logged_in);
            }
            break;
        case "delete_file":
            if (delete_file($_POST, $db)) {
                $message = "تم مسح الملف بنجاح!";
                $page = "./components/success.php";
                print_notice_page("admin", $page, $message, './components/admin.php', $db, $logged_in);
            } else {
                $message = "حدث خطأ ما";
                $page = "./components/error.php";
                print_notice_page("admin", $page, $message, './components/admin.php', $db, $logged_in);
            }
            break;
        case "modify_user":
            if (modify_user($_POST, $db)) {
                $message = "تم تجديد بيانات الحساب!";
                $page = "./components/success.php";
                print_notice_page("profile", $page, $message, './components/admin.php', $db, $logged_in);
            } else {
                $message = "حدث خطأ ما";
                $page = "./components/error.php";
                print_notice_page("profile", $page, $message, './components/admin.php', $db, $logged_in);
            }
            break;
        case "delete_user":
            if (delete_user($_POST, $db)) {
                $message = "تم مسح الحساب!";
                $page = "./components/success.php";
                print_notice_page("profile", $page, $message, './components/admin.php', $db, $logged_in);
            } else {
                $message = "حدث خطأ ما";
                $page = "./components/error.php";
                print_notice_page("profile", $page, $message, './components/admin.php', $db, $logged_in);
            }
	    break;
        case "admin_add_balance":
            if (admin_add_balance($_POST, $db)) {
                $message = "تمت اضافة الرصيد بنجاح!";
                $page = "./components/success.php";
                print_notice_page("profile", $page, $message, './components/admin.php', $db, $logged_in);
            } else {
                $message = "حدث خطأ ما";
                $page = "./components/error.php";
                print_notice_page("profile", $page, $message, './components/admin.php', $db, $logged_in);
            }
	    break;
        default:
            break;
    }
}
