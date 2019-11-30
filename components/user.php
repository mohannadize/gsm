<section class="section">
    <div class="container">
        <div class="tabs flipx is-boxed">
            <ul>
                <li class="is-active flipx">
                    <a onclick='tabchange(this)' data-target="account-settings">
                        <span class="icon is-small"><i class="fas fa-user" aria-hidden="true"></i></span>
                        <span>اعدادات الحساب</span>
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