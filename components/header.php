<nav class="navbar is-fixed-top is-dark" role="navigation" aria-label="main navigation">
    <div class="navbar-brand">
        <a class="navbar-item" href="#">
            <h1 class="title is-4 has-text-white">
                <span class="icon">
                    <i class="fa fa-mobile-alt"></i>
                </span>
                <span>
                    GSMGood
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
            <a class="navbar-item <?php echo $action == "index" ? "is-active":""; ?>" href=".">
                Home
            </a>

            <a class="navbar-item <?php echo $action == "roms" ? "is-active":""; ?>" href="roms">
                Roms
            </a>
            <a class="navbar-item <?php echo $action == "admin" ? "is-active":""; ?>" href="admin">
                Admin Panel
            </a>
            <a class="navbar-item <?php echo $action == "404" ? "is-active":""; ?>" href="404">
                404
            </a>
        </div>

        <div class="navbar-end">
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
        </div>
    </div>
</nav>