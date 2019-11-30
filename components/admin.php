<script>
    window.onload = () => {
        fetch_rows("roms-table-admin");
        fetch_users("users-table-admin");
    }

    function fetch_users(target, search = null, page = 1) {
        if (!target) return;


        let params = {
            page,
            search
        };
        params.action = "users";
        fetch("api.php", {
                method: "post",
                body: JSON.stringify(params)
            })
            .then(res => res.json())
            .then(res => {
                debugger;
                let table_container = document.getElementById(target);
                let table = document.createElement("table");
                table.className = "table is-fullwidth is-bordered is-striped is-hoverable";
                let thead = document.createElement("thead");
                thead.innerHTML = `
                    <tr>
                        <th>الاسم</th>
                        <th>اسم المستخدم</th>
                        <th>البريد الالكتورني</th>
                        <th>الرصيد</th>
                        <th>نوع الجساب</th>
                    </tr>
                `
                let tbody = document.createElement("tbody");
                let rows = res.rows;
                rows.forEach(row => {
                    let tr = document.createElement("tr");
                    let name = document.createElement("td");
                    name.textContent = row.name;
                    let username = document.createElement("td");
                    username.textContent = row.username;
                    let email = document.createElement("td");
                    email.textContent = row.email;
                    let balance = document.createElement("td");
                    balance.textContent = (+row.admin) ? "لا نهاية" : row.balance_string;
                    balance.classList.add("ltr")
                    let admin = document.createElement("td");
                    admin.textContent = (+row.admin) ? "ادمن" : "عادي";
                    tr.append(name, username, email, balance, admin);

                    let last = document.createElement("td");
                    last.innerHTML = `
                        <a onclick='toggle_add_balance(this)' data-id='${row.id}' class=\"button is-success is-light\">
                            <span class=\"icon\">
                                <i class=\"fa fa-plus\"></i>
                            </span>
                            <span>
                                اضافة رصيد
                            </span>
                        </a>
                        <a onclick='toggle_delete_user(this)' data-id='${row.id}' class=\"button is-danger\">
                            <span class=\"icon\">
                                <i class=\"fa fa-trash-alt\"></i>
                            </span>
                        </a>
                    `
                    tr.append(last);
                    tbody.append(tr);
                });
                table.append(thead, tbody);
                table_container.innerHTML = (table.outerHTML);

                return rows;
                if (Number(res.pages)) update_table_pagination(target, page, res.pages, search);
            })
            .catch(err => {
                console.error(err);
            });
    }

    function users_search(target, event) {
        event.preventDefault();
        let container = document.getElementById(target);
        container.innerHTML = `
            <div class="has-text-centered">
                <button class="button is-link is-loading is-large" style="width:100px;"></button>
            </div>
            `
        let search = event.currentTarget[0].value;
        fetch_users(target, search);
    }

    function toggle_delete_user(elem) {
        let target = 'delete_user';
        let body = {};
        body.id = elem.dataset.id;
        if (body.id === "1") {
            return alert("You cannot delete the admin account.");
        }
        body.action = "user";
        fetch("./api.php", {
                method: "POST",
                body: JSON.stringify(body)
            })
            .then(x => x.json())
            .then(x => {

                let modal = document.getElementById(target);
                let id;
                id = modal.querySelector("input[name=id]");
                id.value = x.id;
                modal.classList.toggle("is-active");
            }).catch(x => {
                console.log(x);
                alert("An error has occured, please contact webmaster");
            });
    }
    
    function toggle_add_balance(elem) {
        let target = 'admin_add_balance';
        let body = {};
        body.id = elem.dataset.id;
        if (body.id === "1") {
            return alert("You cannot add balance to an admin account.");
        }
        body.action = "user";
        fetch("./api.php", {
                method: "POST",
                body: JSON.stringify(body)
            })
            .then(x => x.json())
            .then(x => {

                let modal = document.getElementById(target);
                let id,balance;
                id = modal.querySelector("input[name=id]");
                id.value = x.id;
                balance = modal.querySelector("input[name=balance]");
                balance.value = x.balance;
                modal.classList.toggle("is-active");
            }).catch(x => {
                console.log(x);
                alert("An error has occured, please contact webmaster");
            });
    }
</script>

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
                    <a onclick='tabchange(this)' data-target="account-settings">
                        <span class="icon is-small"><i class="fas fa-user" aria-hidden="true"></i></span>
                        <span>اعدادات الحساب</span>
                    </a>
                </li>
                <li class="flipx">
                    <a onclick='tabchange(this)' data-target="manage-users">
                        <span class="icon is-small"><i class="fas fa-users" aria-hidden="true"></i></span>
                        <span>ادارة الحسابات</span>
                    </a>
                </li>
            </ul>
        </div>
    </div>
    <br>
    <div class="container flipx tab is-active" id="manage-roms">
        <form class="columns flipx rtl" onsubmit="table_search('roms-table-admin',event)">
            <div class="column is-3-tablet is-9-mobile is-inline-block">
                <input type="text" onkeyup='document.forms[0][1].click()' placeholder="بحث" class="input">
            </div>
            <div class="column is-2-mobile is-inline-block">
                <button type="submit" class="button is-link is-light">
                    <span class="icon">
                        <i class="fa fa-search"></i>
                    </span>
                </button>
            </div>
            <div class="column is-inline-block">
                <div class="field">
                <a class="button ltr is-danger is-light" onclick="toggle_modal(this)" data-target="add_rom"><span class="icon">
                            <i class="fa fa-plus"></i>
                        </span><span>
                            اضافة روم جديد
                        </span>
                    </a>
                </div>
            </div>
        </form>
        <div class="scrollable-table flipx" id='roms-table-admin'>
            <div class="has-text-centered">
                <button class="button is-link is-loading is-large" style="width:100px;"></button>
            </div>
        </div>
    </div>
    <div class="container flipx tab" id="manage-users">
        <form class="columns" onsubmit="users_search('users-table-admin',event)">
            <div class="column flipx is-3-tablet is-9-mobile is-inline-block">
                <input type="text" onkeyup="document.forms[1][1].click();" placeholder="بحث" class="input rtl">
            </div>
            <div class="column is-2-mobile is-inline-block">
                <button type="submit" class="button is-link is-light">
                    <span class="icon">
                        <i class="fa fa-search"></i>
                    </span>
                </button>
            </div>
        </form>
        <div class="scrollable-table flipx" id='users-table-admin'>
            <div class="has-text-centered">
                <button class="button is-link is-loading is-large" style="width:100px;"></button>
            </div>
        </div>
    </div>
    <div class="container flipx tab" id="website-settings">
        <h2 class="title flipx rtl">لوحة اعدادات الموقع</h2>

        <form action="action.php" method="post">
            <input type="hidden" name="action" value='update_site'>
            <div class="columns">
                <div class="column is-6-tablet">
                    <div class="field flipx rtl">
                        <label class="switch is-warning">
                            <input name="maintainance" type="checkbox" <?php echo $settings['maintainance'] ? "checked" : 0; ?>>
                            <div class="switch-body ltr"></div>
                            <span>طور التطوير</span>
                        </label>
                    </div>

                    <div class="field flipx rtl">
                        <label class="label">عنوان الموقع</label>
                        <div class="control">
                            <input required class="input" name='site-name' type="text" value="<?php echo $settings['site-name']; ?>">
                        </div>
                    </div>

                    <div class="field flipx rtl">
                        <label class="label">نبذه عن الموقع</label>
                        <div class="control">
                            <textarea name='description' class="textarea"><?php echo $settings['description']; ?></textarea>
                        </div>
                    </div>

                    <div class="field flipx rtl">
                        <label class="label">البريد الالكتروني</label>
                        <div class="control has-icons-right">
                            <input required name="email" class="input" type="email" value="<?php echo $settings['email']; ?>">
                            <span class="icon is-small is-right">
                                <i class="fas fa-envelope"></i>
                            </span>
                        </div>
                    </div>

                    <div class="field flipx rtl">
                        <label class="label">Paypal بريد</label>
                        <div class="control has-icons-right">
                            <input required class="input" name='paypal' type="email" value="<?php echo $settings['paypal']; ?>">
                            <span class="icon is-small is-right">
                                <i class="fab fa-paypal"></i>
                            </span>
                        </div>
                    </div>

                    <div class="field flipx rtl">
                        <label class="label">السعر</label>
                        <div class="control has-icons-right">
                            <input required class="input" name='price' step="0.01" type="number" value="<?php echo $settings['price']; ?>">
                            <span class="icon is-small is-right">
                                <i class="fa fa-dollar-sign"></i>
                            </span>
                        </div>
                        <div class="help is-primary rtl">لكل 1GB بالدولار</div>
                    </div>

                    <label class="label flipx rtl">لوجو الموقع </label>
                    <div class="field flipx rtl">
                        <label class="switch is-info">
                            <input name='logo_as_text' type="checkbox" <?php echo $settings['logo_as_text'] ? "checked" : 0; ?>>
                            <div class="switch-body ltr"></div>
                            <span>استخدام عنوان الموقع كلوجو</span>
                        </label>
                    </div>

                    <div class="field">
                        <a class="button flipx is-warning" onclick="toggle_modal(this)" data-target="upload_logo">
                            <span class="icon"><i class="fa fa-upload"></i></span>
                            <span>
                                ارفع
                            </span></a>
                    </div>

                    <div class="field flipx rtl">
                        <label class="label">الحد المجاني اليومي</label>
                        <div class="control">
                            <input required class="input" name="daily_free" step='0.01' type="number" value="<?php echo $settings['daily_free'] / 1024 / 1024; ?>">
                        </div>
                        <div class="help is-link">in MegaBytes</div>
                    </div>

                    <div class="field is-grouped flipx">
                        <div class="control">
                            <button class="button is-link" type="submit">حفظ</button>
                        </div>
                        <div class="control">
                            <a href="#" class="button is-link is-light">الغاء</a>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
    <div class="container tab" id="account-settings">
        <?php include "account-settings.php"; ?>
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
        <section class="modal-card-body">
            <form action="action.php" method="post">
                <input type="hidden" required name="action" value="add_rom">
                <div class="field flipx rtl">
                    <label class="label">موديل الجهاز</label>
                    <div class="control">
                        <input required class="input" name="model" type="text" placeholder="SM-3242">
                    </div>
                </div>
                <div class="field flipx rtl">
                    <label class="label">رقم الاصدار</label>
                    <div class="control">
                        <input required class="input" name="build" type="text" placeholder="7.22.18">
                    </div>
                </div>
                <div class="field flipx rtl">
                    <label class="label">اصدار اندرويد</label>
                    <div class="control">
                        <input required class="input" name="android" type="text" placeholder="8.1">
                    </div>
                </div>
                <div class="field flipx rtl">
                    <label class="label">البلد</label>
                    <div class="control">
                        <input required class="input" name="country" type="text" placeholder="Egypt">
                    </div>
                </div>
                <div class="field flipx rtl">
                    <label class="label">الحجم</label>
                    <div class="control">
                        <input required class="input" name="size" step="0.0001" type="number" placeholder="0">
                    </div>
                    <p class="help is-link">in MegaBytes</p>
                </div>
                <div class="field flipx rtl">
                    <label class="label">رابط التنزيل</label>
                    <div class="control">
                        <input required class="input" name="url" type="text" placeholder="https://">
                    </div>
                </div>
        </section>
        <footer class="modal-card-foot flipx">
            <button class="button is-info" type="submit">
                <span class="icon"><i class="fa fa-plus"></i></span><span>اضافة</span>
            </button>
            </form>
            <button class="button" onclick="toggle_modal(this)" data-target="add_rom">إلغاء</button>
        </footer>
    </div>
</div>

<div class="modal flipx" id="modify_rom">
    <div class="modal-background"></div>
    <div class="modal-card">
        <header class="modal-card-head">
            <p class="modal-card-title flipx rtl">تعديل روم</p>
            <button class="delete" aria-label="close" onclick="toggle_modal(this)" data-target="modify_rom"></button>
        </header>
        <section class="modal-card-body">
            <form action="action.php" method="post">
                <input type="hidden" name="action" value="modify_file">
                <input type="hidden" name="id">
                <div class="field flipx rtl">
                    <label class="label">موديل الجهاز</label>
                    <div class="control">
                        <input required class="input" name="model" type="text" placeholder="SM-3242">
                    </div>
                </div>
                <div class="field flipx rtl">
                    <label class="label">رقم الاصدار</label>
                    <div class="control">
                        <input required class="input" name="build" type="text" placeholder="7.22.18">
                    </div>
                </div>
                <div class="field flipx rtl">
                    <label class="label">اصدار اندرويد</label>
                    <div class="control">
                        <input required class="input" name="android" type="text" placeholder="8.1">
                    </div>
                </div>
                <div class="field flipx rtl">
                    <label class="label">البلد</label>
                    <div class="control">
                        <input required class="input" name="country" type="text" placeholder="Egypt">
                    </div>
                </div>
                <div class="field flipx rtl">
                    <label class="label">الحجم</label>
                    <div class="control">
                        <input required class="input" name="size" step="0.0001" type="number" placeholder="0">
                    </div>
                    <p class="help is-link">in MegaBytes</p>
                </div>
                <div class="field flipx rtl">
                    <label class="label">رابط التنزيل</label>
                    <div class="control">
                        <input required class="input" name="url" type="text" placeholder="https://">
                    </div>
                </div>
        </section>
        <footer class="modal-card-foot flipx">
            <button class="button is-warning" type="submit">
                <span class="icon"><i class="fa fa-save"></i></span><span>حفظ</span>
            </button>
            </form>
            <button class="button" onclick="toggle_modal(this)" data-target="modify_rom">إلغاء</button>
        </footer>
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