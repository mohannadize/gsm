<?php 

$user_data = $db->query("SELECT username,email from users WHERE id='$_SESSION[id]'");
$user_data = $db->fetch_array($user_data);

?>

<section class="section">
    <div class="container">
        <div class="tabs is-boxed">
            <ul>
                <li class="is-active">
                    <a onclick='tabchange(this)' data-target="account-settings">
                        <span class="icon is-small"><i class="fas fa-user" aria-hidden="true"></i></span>
                        <span>Account settings</span>
                    </a>
                </li>
            </ul>
        </div>
    </div>
    <br>
    <div class="container tab is-active" id="account-settings">
        <?php include "account-settings.php"; ?>
    </div>
</section>