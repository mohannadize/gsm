<nav class="navbar is-fixed-top is-dark flipx" role="navigation" aria-label="main navigation">
    <div class="navbar-brand flipx">
        <a class="navbar-item" href=".">
            <h1 class="title is-4 has-text-white">
                <span class="icon">
                    <i class="fa fa-mobile-alt"></i>
                </span>
                <span>
                    <?php echo $settings['site-name']; ?>
                </span>
            </h1>
        </a>

        <a role="button" class="navbar-burger burger" onclick="togglenav(this)" aria-label="menu" aria-expanded="false" data-target="navmenu">
            <span aria-hidden="true"></span>
            <span aria-hidden="true"></span>
            <span aria-hidden="true"></span>
        </a>
    </div>

    <div id="navmenu" class="navbar-menu">
        <div class="navbar-start flipx">

            <a class="navbar-item <?php echo $action == "roms" ? "is-active" : ""; ?>" href=".">
                الرومات
            </a>

            <!-- <a class="navbar-item <?php //echo $action == "combinations" ? "is-active" : ""; ?>" href="combinations">
                Combinations
            </a> -->
        </div>

        <div class="navbar-end flipx rtl">
            <?php

            if ($logged_in) {
                ?>

                <?php if ($logged_in['admin'] == '1') {

                        ?>

                    <a class="navbar-item <?php echo $action == "admin" ? "is-active" : ""; ?>" href="admin">
                        <span>
                            لوحة الادارة
                        </span>
                        <span class="icon" style="padding-right:5px;">
                            <i class="fa fa-cog"></i>
                        </span>
                    </a>

                <?php } else {
                        ?>

                    <a class="navbar-item <?php echo $action == "profile" ? "is-active" : ""; ?> ltr" href='profile'>
                        <span>
                            <?php echo $logged_in['username']; ?>
                        </span>
                        <span class="icon" style="padding-left:5px;">
                            <i class="fa fa-user"></i>
                        </span>
                    </a>

                    <a class="navbar-item <?php echo $action == "packages" ? "is-active" : ""; ?> ltr" href='packages'>
                        <!-- TODO: Points system  -->
                        <span>
                            <?php echo bytes_to_human($user_data['balance'] + $user_data['daily_balance']); ?> Left
                        </span>
                        <span class="icon" style="padding-left:5px;">
                            <i class="fa fa-tachometer-alt"></i>
                        </span>
                    </a>

                <?php
                    } ?>
                <a class="navbar-item" href="logout.php">
                    <span>
                        تسجيل خروج
                    </span>
                    <span class="icon flipx" style="padding-left:5px;">
                        <i class="fa fa-sign-out-alt"></i>
                    </span>
                </a>
            <?php
            } else {

                ?>

                <div class="navbar-item">
                    <div class="buttons">
                        <a href='signup' class="button is-danger is-light">
                            <strong>إنشاء حساب</strong>
                        </a>
                        <a href='login' class="button is-link is-light">
                            <strong>دخول</strong>
                        </a>
                    </div>
                </div>

            <?php } ?>
        </div>
    </div>
</nav>