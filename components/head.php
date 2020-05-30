<?php 

$settings = $db->query("SELECT * from site");
$settings = $db->fetch_array($settings);

if ($logged_in) {
    $user_data = $db->query("SELECT id,username,email,balance,daily_balance,plan,plan_expiration from users WHERE id='$logged_in[id]'");
    $user_data = $db->fetch_array($user_data);
}

?>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title><?php echo $settings['site-name'] ?></title>
<link rel="stylesheet" href="./css/bulmaswatch.min.css">
<link rel="stylesheet" href="./css/bulma-switch.min.css">
<link href="https://fonts.googleapis.com/css?family=Inter:300,400,600,700|Tajawal&display=swap" rel="stylesheet">
<meta name="description" content="<?php echo htmlspecialchars($settings['description']); ?>">

<link href="https://cdn.jsdelivr.net/npm/siiimple-toast/dist/style.css" rel="stylesheet">
<!-- import js -->
<script src="https://cdn.jsdelivr.net/npm/siiimple-toast/dist/siiimple-toast.min.js"></script>
<link rel="stylesheet" href="./css/main.css?v=1.0.0">