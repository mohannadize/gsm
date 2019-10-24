<?php

function print_web_page($section, $head_append="")
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
