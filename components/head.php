<?php 

$settings = $db->query("SELECT * from site");
$settings = $db->fetch_array($settings);

if ($logged_in) {
    $user_data = $db->query("SELECT id,username,email,balance,daily_balance from users WHERE id='$_SESSION[id]'");
    $user_data = $db->fetch_array($user_data);
}

?>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title><?php echo $settings['site-name'] ?></title>
<link rel="stylesheet" href="./css/bulma.min.css">
<link rel="stylesheet" href="./css/bulma-switch.min.css">
<link rel="stylesheet" href="./css/main.css">