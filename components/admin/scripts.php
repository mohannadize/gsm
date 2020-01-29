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
                        <th>ادارة</th>
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
            return alert("You cannot add balance to the admin account.");
        }
        body.action = "user";
        fetch("./api.php", {
                method: "POST",
                body: JSON.stringify(body)
            })
            .then(x => x.json())
            .then(x => {

                let modal = document.getElementById(target);
                let id, balance;
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

    function edit_plan(form, e) {
        e.preventDefault();
        data = {};
        if (document.activeElement.name == 'cancel') {
            data = JSON.parse(form.data.value);
        } else {
            data.action = 'edit_plan';
            [].slice.apply(form).filter(row => row.tagName != 'BUTTON').forEach(row => {
                data[row.name] = row.value
            })
            fetch("api.php", {
                method: "post",
                body: JSON.stringify(data)
            }).then(x=>x.json()).then(x=>{
                if (x[0]) {
                    toast.success('Saved');
                }
            }).catch(err=>{
                toast.alert('An Error has occured');
            });
        }
    }
</script>