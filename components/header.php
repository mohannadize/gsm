<nav class="navbar is-fixed-top is-dark flipx" role="navigation" aria-label="main navigation">
    <div class="navbar-brand flipx">
        <a class="navbar-item" href=".">
            <?php if ($settings['logo_as_text']) { ?>
            <h1 class="title is-4 has-text-white">
                <span>
                    <?php echo $settings['site-name']; ?>
                </span>
            </h1>
            <?php } else { ?>
                <img src="<?php echo $settings['logo_file']; ?>" alt="<?php echo $settings['site-name']; ?>">
            <?php } ?>
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

            <!-- <a class="navbar-item <?php //echo $action == "combinations" ? "is-active" : ""; 
                                        ?>" href="combinations">
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
                        <?php if ($user_data['plan'] == 0) { ?>
                            <div class="control">
                                <button class="button is-primary"">
                                    <span>عرض الباقات</span>
                                    <span class="icon"><i class="fa fa-boxes"></i></span>
                                </button>
                            </div>
                        <?php } else {
                            $plan = $db->query("SELECT `name`,`color` from plans where `id` = '$user_data[plan]' ");
                            $plan = $db->fetch_array($plan);
                        ?>
                            <div class="columns is-vcentered rtl">
                                <div class="column is-narrow">
                                    <div class="control">
                                        <button class="button is-primary" style="background-color: <?php echo $plan['color']; ?>"><?php echo $plan['name']; ?></button>
                                    </div>
                                </div>
                                <div class="column is-narrow ltr">
                                    <div class="field has-addons">
                                        <div class="control">
                                            <button class="button">
                                                <? echo bytes_to_human($user_data['balance']); ?>
                                            </button>
                                        </div>
                                        <div class="control">
                                            <button class="button is-primary">رصيدك</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <?php } ?>
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