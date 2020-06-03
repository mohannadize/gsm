<?php

include "./functions/database.php";
include "./functions/functions.php";

$logged_in = check_login($db);


if ($_SERVER["REQUEST_METHOD"] == 'POST') {

    switch ($_POST['action']) {
        case 'signup':
            $user_data = verify_signup($_POST, $db);
            if (!$user_data) {
                $message = "حدث خطأ، الرجاء اعادة المحاولة لاحقاََ";
                $page = "./components/error.php";
                print_notice_page('signup', $page, $message, "./components/signup.php", $db);
                die();
            } else {
                $user_exists = $db->query("SELECT id from users WHERE `username`='$user_data[username]'");
                if ($db->num_rows($user_exists)) {
                    $message = "اسم المستخدم مسنخدم من قبل.";
                    $page = "./components/error.php";
                    print_notice_page('signup', $page, $message, "./components/signup.php", $db);
                    exit;
                }
                $user_exists = $db->query("SELECT id from users WHERE `email`='$user_data[email]'");
                if ($db->num_rows($user_exists)) {
                    $message = "البريد الإلكتروني مستخدم من قبل";
                    $page = "./components/error.php";
                    print_notice_page('signup', $page, $message, "./components/signup.php", $db);
                    exit;
                }
                if ($db->add_user($user_data['name'], $user_data['username'], $user_data['password'], $user_data['email'])) {
                    send_email('successful_signup', [
                        'name' => explode(' ', $user_data['name'])[0],
                        'user_email' => $user_data['email']
                    ], $db);
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
            if (!$logged_in || !$logged_in['admin']) {
                header("Location: .");
                exit();
            }
            if (update_site_settings($_POST, $db)) {
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
            if (!$logged_in || !$logged_in['admin']) {
                header("Location: .");
                exit();
            }
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
            if (!$logged_in || !$logged_in['admin']) {
                header("Location: .");
                exit();
            }
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
        case "update_logo":
            if (!$logged_in || !$logged_in['admin']) {
                header("Location: .");
                exit();
            }
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
            if (!$logged_in || !$logged_in['admin']) {
                header("Location: .");
                exit();
            }
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
            if (!$logged_in) header("Location: login");
            if (modify_user($logged_in, $_POST, $db)) {
                $message = "تم تجديد بيانات الحساب!<br>الرجاء تسجيل الدخول من جديد";
                $page = "./components/success.php";
                session_destroy();
                $logged_in = false;
                print_notice_page("login", $page, $message, './components/login.php', $db, $logged_in);
            } else {
                $message = "حدث خطأ ما";
                $page = "./components/error.php";
                print_notice_page("profile", $page, $message, './components/user.php', $db, $logged_in);
            }
            break;
        case "delete_user":
            if (!$logged_in || !$logged_in['admin']) {
                header("Location: .");
                exit();
            }
            if (delete_user($_POST, $db)) {
                $message = "تم مسح الحساب!";
                $page = "./components/success.php";
                print_notice_page("admin", $page, $message, './components/admin.php', $db, $logged_in);
            } else {
                $message = "حدث خطأ ما";
                $page = "./components/error.php";
                print_notice_page("admin", $page, $message, './components/admin.php', $db, $logged_in);
            }
            break;
        case "admin_add_balance":
            if (!$logged_in && !$logged_in['admin']) header("Location: .");
            if (admin_add_balance($_POST, $db)) {
                $message = "تمت اضافة الرصيد بنجاح!";
                $page = "./components/success.php";
                print_notice_page("admin", $page, $message, './components/admin.php', $db, $logged_in);
            } else {
                $message = "حدث خطأ ما";
                $page = "./components/error.php";
                print_notice_page("admin", $page, $message, './components/admin.php', $db, $logged_in);
            }
            break;
        case "add_new_plan":
            if (!$logged_in || !$logged_in['admin']) {
                header("Location: .");
                exit();
            }
            if (add_new_plan($_POST, $db)) {
                $message = "تمت اضافة البافة بنجاح!";
                $page = "./components/success.php";
                print_notice_page("admin", $page, $message, './components/admin.php', $db, $logged_in);
            } else {
                $message = "حدث خطأ ما";
                $page = "./components/error.php";
                print_notice_page("admin", $page, $message, './components/admin.php', $db, $logged_in);
            }
            break;
        case "delete_plan":
            if (!$logged_in || !$logged_in['admin']) {
                header("Location: .");
                exit();
            }
            if (delete_plan($_POST, $db)) {
                $message = "تم مسح البافة بنجاح!";
                $page = "./components/success.php";
                print_notice_page("admin", $page, $message, './components/admin.php', $db, $logged_in);
            } else {
                $message = "حدث خطأ ما";
                $page = "./components/error.php";
                print_notice_page("admin", $page, $message, './components/admin.php', $db, $logged_in);
            }
            break;
        case "plan_subscribe":
            if (!$logged_in) header("Location: login");
            if (plan_subscribe($logged_in, $_POST, $db)) {
                $page = "./components/success.php";
                $message = '';
            } else {
                $page = "./components/error.php";
                $message = "حدث خطأ اثناء عملية الاشتراك، الرجاء التواصل مع صاحب الموقع";
            };
            print_notice_page("packages", $page, $message, './components/packages.php', $db, $logged_in);
            break;
        case "request_rom":
            if (request_rom($logged_in, $_POST, $db)) {
                $page = "./components/success.php";
                $message = "تم ارسال طلبك بنجاح!";
            } else {
                $page = "./components/error.php";
                $message = "حدث خطأ ما، الرجاء المحاولة مجددا ﻻحقا";
            };
            print_notice_page("request", $page, $message, './components/request.php', $db, $logged_in);
            break;
        case "delete_request":
            if (!$logged_in || !$logged_in['admin']) {
                header("Location: .");
                exit();
            }
            if (delete_request($_POST, $db)) {
                $page = "./components/success.php";
                $message = "تم مسح الطلب!";
            } else {
                $page = "./components/error.php";
                $message = "حدث خطأ ما";
            };
            print_notice_page("admin", $page, $message, './components/admin.php', $db, $logged_in);
            break;
        case "edit_privacy":
            if (!$logged_in || !$logged_in['admin']) {
                header("Location: .");
                exit();
            }
            if (edit_privacy($_POST, $db)) {
                $page = "./components/success.php";
                $message = "";
            } else {
                $page = "./components/error.php";
                $message = "حدث خطأ ما";
            };
            print_notice_page("privacy", $page, $message, './components/privacy.php', $db, $logged_in);
            break;
        case "contact_form":
            if (contact_form($_POST, $db)) {
                $page = "./components/success.php";
                $message = "تم ارسال رسالتك بنجاح";
            } else {
                $page = "./components/error.php";
                $message = "حدث خطأ ما";
            };
            print_notice_page("contact_us", $page, $message, './components/contact_us.php', $db, $logged_in);
            break;
        case "upload_rom":
            if (!$logged_in || !$logged_in['admin']) {
                header("Location: .");
                exit();
            }
            echo json_encode(upload_rom($_FILES['file'], $db));
            break;
        default:
            echo 'undefined action';
            var_dump($_POST, $_FILES);
            break;
    }
} else {
    header('Location: .');
}
