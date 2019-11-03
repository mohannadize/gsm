<nav class="navbar is-fixed-top is-dark" role="navigation" aria-label="main navigation">
    <div class="navbar-brand">
        <a class="navbar-item" href="#">
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
        <div class="navbar-start">
            <a class="navbar-item <?php echo $action == "index" ? "is-active" : ""; ?>" href=".">
                Home
            </a>

            <a class="navbar-item <?php echo $action == "roms" ? "is-active" : ""; ?>" href="roms">
                Roms
            </a>
            <a class="navbar-item <?php echo $action == "combinations" ? "is-active" : ""; ?>" href="combinations">
                Combinations
            </a>
        </div>

        <div class="navbar-end">
            <?php

            if ($logged_in) {
                ?>

                <?php if (isset($_SESSION['admin']) && $_SESSION['admin'] == true) {

                        ?>

                    <a class="navbar-item <?php echo $action == "admin" ? "is-active" : ""; ?>" href="admin">
                        <span class="icon" style="padding-right:5px;">
                            <i class="fa fa-cog"></i>
                        </span>
                        <span>
                            Admin Panel
                        </span>
                    </a>

                <?php } else {
                        ?>

                    <a class="navbar-item <?php echo $action == "profile" ? "is-active" : ""; ?>" href='profile'>
                        <span class="icon" style="padding-right:5px;">
                            <i class="fa fa-user"></i>
                        </span>
                        <span>
                            <?php echo $_SESSION['username']; ?>
                        </span>
                    </a>

                    <a class="navbar-item <?php echo $action == "balance" ? "is-active" : ""; ?>" href='balance'>
                        <!-- TODO: Points system  -->
                        <span class="icon" style="padding-right:5px;">
                            <i class="fa fa-wallet"></i>
                        </span>
                        <span>
                            <?php echo $user_data['balance'] + $user_data['daily_balance']; ?> Pts
                        </span>
                    </a>

                <?php
                    } ?>
                <a class="navbar-item" href="logout.php">
                    <span>
                        Logout
                    </span>
                    <span class="icon" style="padding-left:5px;">
                        <i class="fa fa-sign-out-alt"></i>
                    </span>
                </a>
            <?php
            } else {

                ?>

                <div class="navbar-item">
                    <div class="buttons">
                        <a href='signup' class="button is-danger">
                            <strong>Sign up</strong>
                        </a>
                        <a href='login' class="button is-light">
                            Log in
                        </a>
                    </div>
                </div>

            <?php } ?>
        </div>
    </div>
</nav>