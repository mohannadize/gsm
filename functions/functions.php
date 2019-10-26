<?php

function print_web_page($action, $section, $head_append="")
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
    var_dump($data);
    return true;
}