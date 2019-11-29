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
                        <th>Name</th>
                        <th>Username</th>
                        <th>Email</th>
                        <th>Balance</th>
                        <th>Account type</th>
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
                    balance.textContent = (+row.admin) ? "Infinite" : row.balance_string;
                    let admin = document.createElement("td");
                    admin.textContent = (+row.admin) ? "Admin" : "User";
                    tr.append(name, username, email, balance, admin);

                    let last = document.createElement("td");
                    last.innerHTML = `
                        <a onclick='toggle_add_balance(this)' data-id='${row.id}' class=\"button is-success is-light\">
                            <span class=\"icon\">
                                <i class=\"fa fa-plus\"></i>
                            </span>
                            <span>
                                Add Balance
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
        <div class="tabs is-boxed">
            <ul>
                <li class="is-active">
                    <a onclick='tabchange(this)' data-target="manage-roms">
                        <span class="icon is-small"><i class="fas fa-bars" aria-hidden="true"></i></span>
                        <span>ادارة الرومات</span>
                    </a>
                </li>
                <li>
                    <a onclick='tabchange(this)' data-target="website-settings">
                        <span class="icon is-small"><i class="fas fa-cog" aria-hidden="true"></i></span>
                        <span>اعدادات الموقع</span>
                    </a>
                </li>
                <li>
                    <a onclick='tabchange(this)' data-target="account-settings">
                        <span class="icon is-small"><i class="fas fa-user" aria-hidden="true"></i></span>
                        <span>اعدادات الحساب</span>
                    </a>
                </li>
                <li>
                    <a onclick='tabchange(this)' data-target="manage-users">
                        <span class="icon is-small"><i class="fas fa-users" aria-hidden="true"></i></span>
                        <span>ادارة الحسابات</span>
                    </a>
                </li>
            </ul>
        </div>
    </div>
    <br>
    <div class="container tab is-active" id="manage-roms">
        <form class="columns" onsubmit="table_search('roms-table-admin',event)">
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
                    <a class="button is-danger is-light" onclick="toggle_modal(this)" data-target="add_rom"><span class="icon">
                            <i class="fa fa-plus"></i>
                        </span><span>
                            اضافة روم جديد
                        </span>
                    </a>
                </div>
            </div>
        </form>
        <div class="scrollable-table" id='roms-table-admin'>
            <div class="has-text-centered">
                <button class="button is-link is-loading is-large" style="width:100px;"></button>
            </div>
        </div>
    </div>
    <div class="container tab" id="manage-users">
        <form class="columns" onsubmit="users_search('users-table-admin',event)">
            <div class="column is-3-tablet is-9-mobile is-inline-block">
                <input type="text" onkeyup="document.forms[1][1].click();" placeholder="Search" class="input">
            </div>
            <div class="column is-2-mobile is-inline-block">
                <button type="submit" class="button is-link is-light">
                    <span class="icon">
                        <i class="fa fa-search"></i>
                    </span>
                </button>
            </div>
        </form>
        <div class="scrollable-table" id='users-table-admin'>
            <div class="has-text-centered">
                <button class="button is-link is-loading is-large" style="width:100px;"></button>
            </div>
        </div>
    </div>
    <div class="container tab" id="website-settings">
        <h2 class="title">لوحة اعدادات الموقع</h2>

        <form action="action.php" method="post">
            <input type="hidden" name="action" value='update_site'>
            <div class="columns">
                <div class="column is-6-tablet">
                    <div class="field">
                        <label class="switch is-warning">
                            <input name="maintainance" type="checkbox" <?php echo $settings['maintainance'] ? "checked" : 0; ?>>
                            <div class="switch-body"></div>
                            <span>طور التطوير</span>
                        </label>
                    </div>

                    <div class="field">
                        <label class="label">عنوان الموقع</label>
                        <div class="control">
                            <input required class="input" name='site-name' type="text" value="<?php echo $settings['site-name']; ?>">
                        </div>
                    </div>

                    <div class="field">
                        <label class="label">نبذه عن الموقع</label>
                        <div class="control">
                            <textarea name='description' class="textarea"><?php echo $settings['description']; ?></textarea>
                        </div>
                    </div>

                    <div class="field">
                        <label class="label">البريد الالكتروني</label>
                        <div class="control has-icons-left">
                            <input required name="email" class="input" type="email" value="<?php echo $settings['email']; ?>">
                            <span class="icon is-small is-left">
                                <i class="fas fa-envelope"></i>
                            </span>
                        </div>
                    </div>

                    <div class="field">
                        <label class="label">Paypal بريد</label>
                        <div class="control has-icons-left">
                            <input required class="input" name='paypal' type="email" value="<?php echo $settings['paypal']; ?>">
                            <span class="icon is-small is-left">
                                <i class="fab fa-paypal"></i>
                            </span>
                        </div>
                    </div>

                    <div class="field">
                        <label class="label">السعر</label>
                        <div class="control has-icons-left">
                            <input required class="input" name='price' step="0.01" type="number" value="<?php echo $settings['price']; ?>">
                            <span class="icon is-small is-left">
                                <i class="fa fa-dollar-sign"></i>
                            </span>
                        </div>
                        <div style="text-align:left" class="help is-primary rtl">لكل 1GB بالدولار</div>
                    </div>

                    <label class="label">لوجو الموقع </label>
                    <div class="field">
                        <label class="switch is-info">
                            <input name='logo_as_text' type="checkbox" <?php echo $settings['logo_as_text'] ? "checked" : 0; ?>>
                            <div class="switch-body"></div>
                            <span>استخدام عنوان الموقع كلوجو</span>
                        </label>
                    </div>

                    <div class="field">
                        <a class="button is-warning" onclick="toggle_modal(this)" data-target="upload_logo">
                            <span class="icon"><i class="fa fa-upload"></i></span>
                            <span>
                                ارفع
                            </span></a>
                    </div>

                    <div class="field">
                        <label class="label">الحد المجاني اليومي</label>
                        <div class="control">
                            <input required class="input" name="daily_free" step='0.01' type="number" value="<?php echo $settings['daily_free'] / 1024 / 1024; ?>">
                        </div>
                        <div class="help is-link">in MegaBytes</div>
                    </div>

                    <div class="field is-grouped">
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


<div class="modal" id='upload_logo'>
    <div class="modal-background"></div>
    <div class="modal-card">
        <header class="modal-card-head">
            <p class="modal-card-title">Upload Site Logo</p>
            <button class="delete" aria-label="close" onclick="toggle_modal(this)" data-target="upload_logo"></button>
        </header>
        <section class="modal-card-body">
            <form action="action.php" method="post" enctype="multipart/form-data">
                <input type="hidden" name="action" value="update_logo">
                <div class="field">
                    <div class="file has-name">
                        <label class="file-label">
                            <input required class="file-input" data-target="logo-name" onchange="handle_files(this,this.files)" name="file" type="file">
                            <span class="file-cta">
                                <span class="file-icon">
                                    <i class="fas fa-upload"></i>
                                </span>
                                <span class="file-label">
                                    Choose a file…
                                </span>
                            </span>
                            <span class="file-name" id='logo-name'>
                                No file selected...
                            </span>
                        </label>
                    </div>
                </div>
        </section>
        <footer class="modal-card-foot">
            <button class="button is-info" type="submit">Upload</button>
            </form>
            <button class="button" onclick="toggle_modal(this)" data-target="upload_logo">Cancel</button>
        </footer>
    </div>
</div>

<div class="modal" id="add_rom">
    <div class="modal-background"></div>
    <div class="modal-card">
        <header class="modal-card-head">
            <p class="modal-card-title">Add a new rom</p>
            <button class="delete" aria-label="close" onclick="toggle_modal(this)" data-target="add_rom"></button>
        </header>
        <section class="modal-card-body">
            <form action="action.php" method="post">
                <input type="hidden" required name="action" value="add_rom">
                <div class="field">
                    <label class="label">Model</label>
                    <div class="control">
                        <input required class="input" name="model" type="text" placeholder="SM-3242">
                    </div>
                </div>
                <div class="field">
                    <label class="label">Build Version</label>
                    <div class="control">
                        <input required class="input" name="build" type="text" placeholder="7.22.18">
                    </div>
                </div>
                <div class="field">
                    <label class="label">Android Version</label>
                    <div class="control">
                        <input required class="input" name="android" type="text" placeholder="8.1">
                    </div>
                </div>
                <div class="field">
                    <label class="label">Country</label>
                    <div class="control">
                        <input required class="input" name="country" type="text" placeholder="Egypt">
                    </div>
                </div>
                <div class="field">
                    <label class="label">Size</label>
                    <div class="control">
                        <input required class="input" name="size" step="0.0001" type="number" placeholder="0">
                    </div>
                    <p class="help is-link">in MegaBytes</p>
                </div>
                <div class="field">
                    <label class="label">Download URL</label>
                    <div class="control">
                        <input required class="input" name="url" type="text" placeholder="https://">
                    </div>
                </div>
        </section>
        <footer class="modal-card-foot">
            <button class="button is-info" type="submit">
                <span class="icon"><i class="fa fa-plus"></i></span><span>Add</span>
            </button>
            </form>
            <button class="button" onclick="toggle_modal(this)" data-target="add_rom">Cancel</button>
        </footer>
    </div>
</div>

<div class="modal" id="add_comb">
    <div class="modal-background"></div>
    <div class="modal-card">
        <header class="modal-card-head">
            <p class="modal-card-title">Add a new combination</p>
            <button class="delete" aria-label="close" onclick="toggle_modal(this)" data-target="add_comb"></button>
        </header>
        <section class="modal-card-body">
            <form action="action.php" method="post">
                <input required type="hidden" name="action" value="add_comb">
                <div class="field">
                    <label class="label">Model</label>
                    <div class="control">
                        <input required class="input" name="model" type="text" placeholder="SM-3242">
                    </div>
                </div>
                <div class="field">
                    <label class="label">Combination Version</label>
                    <div class="control">
                        <input required class="input" name="build" type="text" placeholder="7.22.18">
                    </div>
                </div>
                <div class="field">
                    <label class="label">Android Version</label>
                    <div class="control">
                        <input required class="input" name="android" type="text" placeholder="8.1">
                    </div>
                </div>
                <div class="field">
                    <label class="label">Security Level</label>
                    <div class="control">
                        <input required class="input" name="security" type="text" placeholder="0">
                    </div>
                </div>
                <div class="field">
                    <label class="label">Country</label>
                    <div class="control">
                        <input required class="input" name="country" type="text" placeholder="Egypt">
                    </div>
                </div>
                <div class="field">
                    <label class="label">Size</label>
                    <div class="control">
                        <input required class="input" name="size" step="0.0001" type="number" placeholder="0">
                    </div>
                    <p class="help is-link">in MegaBytes</p>
                </div>
                <div class="field">
                    <label class="label">Download URL</label>
                    <div class="control">
                        <input required class="input" name="url" type="text" placeholder="https://">
                    </div>
                </div>
        </section>
        <footer class="modal-card-foot">
            <button class="button is-info" type="submit">
                <span class="icon"><i class="fa fa-plus"></i></span><span>Add</span>
            </button>
            </form>
            <button class="button" onclick="toggle_modal(this)" data-target="add_comb">Cancel</button>
        </footer>
    </div>
</div>

<div class="modal" id="modify_rom">
    <div class="modal-background"></div>
    <div class="modal-card">
        <header class="modal-card-head">
            <p class="modal-card-title">Modify rom</p>
            <button class="delete" aria-label="close" onclick="toggle_modal(this)" data-target="modify_rom"></button>
        </header>
        <section class="modal-card-body">
            <form action="action.php" method="post">
                <input type="hidden" name="action" value="modify_file">
                <input type="hidden" name="id">
                <div class="field">
                    <label class="label">Model</label>
                    <div class="control">
                        <input required class="input" name="model" type="text" placeholder="SM-3242">
                    </div>
                </div>
                <div class="field">
                    <label class="label">Build Version</label>
                    <div class="control">
                        <input required class="input" name="build" type="text" placeholder="7.22.18">
                    </div>
                </div>
                <div class="field">
                    <label class="label">Android Version</label>
                    <div class="control">
                        <input required class="input" name="android" type="text" placeholder="8.1">
                    </div>
                </div>
                <div class="field">
                    <label class="label">Country</label>
                    <div class="control">
                        <input required class="input" name="country" type="text" placeholder="Egypt">
                    </div>
                </div>
                <div class="field">
                    <label class="label">Size</label>
                    <div class="control">
                        <input required class="input" name="size" step="0.0001" type="number" placeholder="0">
                    </div>
                    <p class="help is-link">in MegaBytes</p>
                </div>
                <div class="field">
                    <label class="label">Download URL</label>
                    <div class="control">
                        <input required class="input" name="url" type="text" placeholder="https://">
                    </div>
                </div>
        </section>
        <footer class="modal-card-foot">
            <button class="button is-warning" type="submit">
                <span class="icon"><i class="fa fa-edit"></i></span><span>Submit</span>
            </button>
            </form>
            <button class="button" onclick="toggle_modal(this)" data-target="modify_rom">Cancel</button>
        </footer>
    </div>
</div>

<div class="modal" id="modify_comb">
    <div class="modal-background"></div>
    <div class="modal-card">
        <header class="modal-card-head">
            <p class="modal-card-title">Modify combination</p>
            <button class="delete" aria-label="close" onclick="toggle_modal(this)" data-target="modify_comb"></button>
        </header>
        <section class="modal-card-body">
            <form action="action.php" method="post">
                <input type="hidden" name="action" value="modify_file">
                <input type="hidden" name="id">
                <div class="field">
                    <label class="label">Model</label>
                    <div class="control">
                        <input required class="input" name="model" type="text" placeholder="SM-3242">
                    </div>
                </div>
                <div class="field">
                    <label class="label">Combination Version</label>
                    <div class="control">
                        <input required class="input" name="build" type="text" placeholder="7.22.18">
                    </div>
                </div>
                <div class="field">
                    <label class="label">Android Version</label>
                    <div class="control">
                        <input required class="input" name="android" type="text" placeholder="8.1">
                    </div>
                </div>
                <div class="field">
                    <label class="label">Security Level</label>
                    <div class="control">
                        <input required class="input" name="security" type="text" placeholder="0">
                    </div>
                </div>
                <div class="field">
                    <label class="label">Country</label>
                    <div class="control">
                        <input required class="input" name="country" type="text" placeholder="Egypt">
                    </div>
                </div>
                <div class="field">
                    <label class="label">Size</label>
                    <div class="control">
                        <input required class="input" name="size" step="0.0001" type="number" placeholder="0">
                    </div>
                    <p class="help is-link">in MegaBytes</p>
                </div>
                <div class="field">
                    <label class="label">Download URL</label>
                    <div class="control">
                        <input required class="input" name="url" type="text" placeholder="https://">
                    </div>
                </div>
        </section>
        <footer class="modal-card-foot">
            <button class="button is-warning" type="submit">
                <span class="icon"><i class="fa fa-edit"></i></span><span>Submit</span>
            </button>
            </form>
            <button class="button" onclick="toggle_modal(this)" data-target="modify_comb">Cancel</button>
        </footer>
    </div>
</div>

<div class="modal" id='delete_file'>
    <div class="modal-background"></div>
    <div class="modal-card">
        <header class="modal-card-head">
            <p class="modal-card-title">
                Caution
            </p>
            <button class="delete" aria-label="close" onclick="toggle_modal(this)" data-target="delete_file"></button>
        </header>
        <section class="modal-card-body">
            <form action="action.php" method="post">
                <input type="hidden" name="action" value="delete_file">
                <input type="hidden" name="id">
                <div class="title is-5">
                    Are you sure you want to delete this file?
                </div>
        </section>
        <footer class="modal-card-foot">
            <button class="button" type="submit">Delete</button>
            </form>
            <button class="button is-danger" onclick="toggle_modal(this)" data-target="delete_file">Cancel</button>
        </footer>
    </div>
</div>

<div class="modal" id='delete_user'>
    <div class="modal-background"></div>
    <div class="modal-card">
        <header class="modal-card-head">
            <p class="modal-card-title">
                Caution
            </p>
            <button class="delete" aria-label="close" onclick="toggle_modal(this)" data-target="delete_user"></button>
        </header>
        <section class="modal-card-body">
            <form action="action.php" method="post">
                <input type="hidden" name="action" value="delete_user">
                <input type="hidden" name="id">
                <div class="title is-5">
                    Are you sure you want to delete this account?
                </div>
        </section>
        <footer class="modal-card-foot">
            <button class="button" type="submit">Delete</button>
            </form>
            <button class="button is-danger" onclick="toggle_modal(this)" data-target="delete_user">Cancel</button>
        </footer>
    </div>
</div>

<div class="modal" id='admin_add_balance'>
    <div class="modal-background"></div>
    <div class="modal-card">
        <header class="modal-card-head">
            <p class="modal-card-title">
                Caution
            </p>
            <button class="delete" aria-label="close" onclick="toggle_modal(this)" data-target="admin_add_balance"></button>
        </header>
        <section class="modal-card-body">
            <form action="action.php" method="post">
                <input type="hidden" name="action" value="admin_add_balance">
                <input type="hidden" name="id">
                <div class="field">
                    <label class="label">Current Balance</label>
                    <div class="control">
                        <input readonly class="input is-static" name="balance" type="text">
                    </div>
                </div>
                <div class="field">
                    <label class="label">Add balance</label>
                    <div class="control">
                        <input required class="input" name="add_balance" type="number" step="0.001" placeholder="">
                        <p class="help is-link">in MegaBytes</p>
                    </div>
                </div>
        </section>
        <footer class="modal-card-foot">
            <button class="button is-success" type="submit">
                <span class="icon">
                    <i class="fa fa-plus"></i>
                </span>
                <span>
                    Add
                </span>
            </button>
            </form>
            <button class="button" onclick="toggle_modal(this)" data-target="admin_add_balance">Cancel</button>
        </footer>
    </div>
</div>