<?php include "admin/scripts.php"; ?>

<section class="section">
    <div class="container">
        <div class="tabs is-boxed flipx">
            <ul>
                <li class="is-active flipx">
                    <a onclick='tabchange(this)' data-target="manage-roms">
                        <span class="icon is-small"><i class="fas fa-bars" aria-hidden="true"></i></span>
                        <span>ادارة الرومات</span>
                    </a>
                </li>
                <li class='flipx'>
                    <a onclick='tabchange(this)' data-target="website-settings">
                        <span class="icon is-small"><i class="fas fa-cog" aria-hidden="true"></i></span>
                        <span>اعدادات الموقع</span>
                    </a>
                </li>
                <li class="flipx">
                    <a onclick='tabchange(this)' data-target="manage-users">
                        <span class="icon is-small"><i class="fas fa-users" aria-hidden="true"></i></span>
                        <span>ادارة الحسابات</span>
                    </a>
                </li>
                <li class='flipx'>
                    <a onclick='tabchange(this)' data-target="packs">
                        <span class="icon is-small"><i class="fas fa-cubes" aria-hidden="true"></i></span>
                        <span>الباقات</span>
                    </a>
                </li>
                <li class="flipx">
                    <a onclick='tabchange(this)' data-target="rom-requests">
                        <span class="icon is-small"><i class="fas fa-comment-alt" aria-hidden="true"></i></span>
                        <span>الطلبات</span>
                    </a>
                </li>
                <li class="flipx">
                    <a onclick='tabchange(this)' data-target="account-settings">
                        <span class="icon is-small"><i class="fas fa-user" aria-hidden="true"></i></span>
                        <span>اعدادات الحساب</span>
                    </a>
                </li>
            </ul>
        </div>
    </div>
    <br>
    <div class="container flipx tab is-active" id="manage-roms">
        <?php include "admin/manage-roms.php"; ?>
    </div>
    <div class="container flipx tab" id="manage-users">
        <?php include "admin/users.php"; ?>
    </div>
    <div class="container flipx tab" id="website-settings">
        <?php include "admin/website-settings.php"; ?>
    </div>
    <div class="container tab" id="account-settings">
        <?php include "admin/account-settings.php"; ?>
    </div>
    <div class="container tab" id="rom-requests">
        <?php include "admin/requests.php"; ?>
    </div>
    <div class="container tab" id="packs">
        <?php include "admin/packages.php"; ?>
    </div>
</section>


<div class="modal flipx" id='upload_logo'>
    <div class="modal-background"></div>
    <div class="modal-card">
        <header class="modal-card-head">
            <p class="modal-card-title flipx rtl">رفع لوجو جديد</p>
            <button class="delete" aria-label="close" onclick="toggle_modal(this)" data-target="upload_logo"></button>
        </header>
        <section class="modal-card-body">
            <form action="action.php" method="post" enctype="multipart/form-data">
                <input type="hidden" name="action" value="update_logo">
                <div class="field flipx">
                    <div class="file has-name">
                        <label class="file-label">
                            <input required class="file-input" data-target="logo-name" onchange="handle_files(this,this.files)" name="file" type="file">
                            <span class="file-cta">
                                <span class="file-icon">
                                    <i class="fas fa-upload"></i>
                                </span>
                                <span class="file-label">
                                    اختيار ملف…
                                </span>
                            </span>
                            <span class="file-name" id='logo-name'>
                                غير محدد...
                            </span>
                        </label>
                    </div>
                </div>
        </section>
        <footer class="modal-card-foot flipx">
            <button class="button is-info" type="submit">رفع</button>
            </form>
            <button class="button" onclick="toggle_modal(this)" data-target="upload_logo">إلغاء</button>
        </footer>
    </div>
</div>

<div class="modal flipx" id="add_rom">
    <div class="modal-background"></div>
    <div class="modal-card">
        <header class="modal-card-head">
            <p class="modal-card-title flipx rtl">اضافة روم جديد</p>
            <button class="delete" aria-label="close" onclick="toggle_modal(this)" data-target="add_rom"></button>
        </header>
        <form action="action.php" method="post">
            <div class="modal-card-body">
                <input type="hidden" required name="action" value="add_rom">
                <div class="field flipx rtl">
                    <label class="label">موديل الجهاز</label>
                    <div class="control has-icons-right">
                        <input required class="input" name="model" type="text" placeholder="SM-3242">
                        <span class="icon is-right"><i class="fa fa-mobile"></i></span>
                    </div>
                </div>
                <div class="field flipx rtl">
                    <label class="label">رقم الاصدار</label>
                    <div class="control has-icons-right">
                        <input required class="input" name="build" type="text" placeholder="7.22.18">
                        <span class="icon is-right"><i class="fa fa-hashtag"></i></span>
                    </div>
                </div>
                <div class="field flipx rtl">
                    <label class="label">اصدار اندرويد</label>
                    <div class="control has-icons-right">
                        <input required class="input" name="android" type="text" placeholder="8.1">
                        <span class="icon is-right"><i class="fab fa-android"></i></span>
                    </div>
                </div>
                <div class="field flipx rtl">
                    <label class="label">البلد</label>
                    <div class="control has-icons-right">
                        <input required class="input" name="country" type="text" placeholder="Egypt">
                        <span class="icon is-right"><i class="fa fa-globe-africa"></i></span>
                    </div>
                </div>
                <div class="field flipx rtl">
                    <label class="label">الحجم</label>
                    <div class="control has-icons-right">
                        <input required class="input" name="size" step="0.0001" type="number" placeholder="0">
                        <span class="icon is-right"><i class="far fa-save"></i></span>
                    </div>
                    <p class="help is-link">in MegaBytes</p>
                </div>
                <div class="field flipx rtl">
                    <label class="label">رابط التنزيل</label>
                    <div class="control has-icons-right">
                        <input required class="input ltr" name="url" type="text" placeholder="https://">
                        <span class="icon is-right"><i class="fa fa-link"></i></span>
                    </div>
                </div>
            </div>
            <div class="modal-card-foot flipx">
                <button class="button is-info" type="submit">
                    <span class="icon"><i class="fa fa-plus"></i></span><span>اضافة</span>
                </button>
                <button class="button" onclick="toggle_modal(this)" data-target="add_rom">إلغاء</button>
            </div>
        </form>
    </div>
</div>

<div class="modal flipx" id="modify_rom">
    <div class="modal-background"></div>
    <div class="modal-card">
        <header class="modal-card-head">
            <p class="modal-card-title flipx rtl">تعديل روم</p>
            <button class="delete" aria-label="close" onclick="toggle_modal(this)" data-target="modify_rom"></button>
        </header>
        <form action="action.php" method="post">
            <div class="modal-card-body">
                <input type="hidden" name="action" value="modify_file">
                <input type="hidden" name="id">
                <div class="field flipx rtl">
                    <label class="label">موديل الجهاز</label>
                    <div class="control has-icons-right">
                        <input required class="input" name="model" type="text" placeholder="SM-3242">
                        <span class="icon is-right"><i class="fa fa-mobile"></i></span>
                    </div>
                </div>
                <div class="field flipx rtl">
                    <label class="label">رقم الاصدار</label>
                    <div class="control has-icons-right">
                        <input required class="input" name="build" type="text" placeholder="7.22.18">
                        <span class="icon is-right"><i class="fa fa-hashtag"></i></span>
                    </div>
                </div>
                <div class="field flipx rtl">
                    <label class="label">اصدار اندرويد</label>
                    <div class="control has-icons-right">
                        <input required class="input" name="android" type="text" placeholder="8.1">
                        <span class="icon is-right"><i class="fab fa-android"></i></span>
                    </div>
                </div>
                <div class="field flipx rtl">
                    <label class="label">البلد</label>
                    <div class="control has-icons-right">
                        <input required class="input" name="country" type="text" placeholder="Egypt">
                        <span class="icon is-right"><i class="fa fa-globe-africa"></i></span>
                    </div>
                </div>
                <div class="field flipx rtl">
                    <label class="label">الحجم</label>
                    <div class="control has-icons-right">
                        <input required class="input" name="size" step="0.0001" type="number" placeholder="0">
                        <span class="icon is-right"><i class="far fa-save"></i></span>
                    </div>
                    <p class="help is-link">in MegaBytes</p>
                </div>
                <div class="field flipx rtl">
                    <label class="label">رابط التنزيل</label>
                    <div class="control has-icons-right">
                        <input required class="input ltr" name="url" type="text" placeholder="https://">
                        <span class="icon is-right"><i class="fa fa-link"></i></span>
                    </div>
                </div>
            </div>
            <div class="modal-card-foot flipx">
                <button class="button is-warning" type="submit">
                    <span class="icon"><i class="fa fa-save"></i></span><span>حفظ</span>
                </button>
                <button class="button" onclick="toggle_modal(this)" data-target="modify_rom">إلغاء</button>
            </div>
        </form>
    </div>
</div>

<div class="modal flipx" id='delete_file'>
    <div class="modal-background"></div>
    <div class="modal-card">
        <header class="modal-card-head">
            <p class="modal-card-title flipx rtl">
                تنبيه
            </p>
            <button class="delete" aria-label="close" onclick="toggle_modal(this)" data-target="delete_file"></button>
        </header>
        <section class="modal-card-body">
            <form action="action.php" method="post">
                <input type="hidden" name="action" value="delete_file">
                <input type="hidden" name="id">
                <div class="title is-5 flipx rtl">
                    هل انت متأكد انك تريد مسح هذا الملف؟
                </div>
        </section>
        <footer class="modal-card-foot flipx">
            <button class="button" type="submit">مسح</button>
            </form>
            <button class="button is-danger" onclick="toggle_modal(this)" data-target="delete_file">إلغاء</button>
        </footer>
    </div>
</div>

<div class="modal flipx" id='delete_user'>
    <div class="modal-background"></div>
    <div class="modal-card">
        <header class="modal-card-head">
            <p class="modal-card-title flipx rtl">
                تنبيه
            </p>
            <button class="delete" aria-label="close" onclick="toggle_modal(this)" data-target="delete_user"></button>
        </header>
        <section class="modal-card-body">
            <form action="action.php" method="post">
                <input type="hidden" name="action" value="delete_user">
                <input type="hidden" name="id">
                <div class="title is-5 flipx rtl">
                    هل انت متأكد انك تريد مسح هذا الحساب؟
                </div>
        </section>
        <footer class="modal-card-foot flipx">
            <button class="button" type="submit">مسح</button>
            </form>
            <button class="button is-danger" onclick="toggle_modal(this)" data-target="delete_user">إلغاء</button>
        </footer>
    </div>
</div>

<div class="modal flipx" id='admin_add_balance'>
    <div class="modal-background"></div>
    <div class="modal-card">
        <header class="modal-card-head">
            <p class="modal-card-title flipx rtl">
                اضافة رصيد
            </p>
            <button class="delete" aria-label="close" onclick="toggle_modal(this)" data-target="admin_add_balance"></button>
        </header>
        <section class="modal-card-body">
            <form action="action.php" method="post">
                <input type="hidden" name="action" value="admin_add_balance">
                <input type="hidden" name="id">
                <div class="field flipx rtl">
                    <label class="label">الرصيد الحالي</label>
                    <div class="control">
                        <input readonly class="input is-static ltr" style="text-align:right;" name="balance" type="text">
                    </div>
                </div>
                <div class="field flipx rtl">
                    <label class="label">اضافة رصيد</label>
                    <div class="control">
                        <input required class="input" name="add_balance" type="number" step="0.001" placeholder="">
                        <p class="help is-link">in MegaBytes</p>
                    </div>
                </div>
        </section>
        <footer class="modal-card-foot flipx">
            <button class="button is-success" type="submit">
                <span class="icon">
                    <i class="fa fa-plus"></i>
                </span>
                <span>
                    اضافة
                </span>
            </button>
            </form>
            <button class="button" onclick="toggle_modal(this)" data-target="admin_add_balance">إلغاء</button>
        </footer>
    </div>
</div>