let toast = siiimpleToast;

toast = toast.setOptions({
    container: 'body',
    class: 'siiimpleToast',
    position: 'bottom|left',
    margin: 15,
    delay: 0,
    duration: 3000,
    style: {
        fontSize: "14px",
        fontWeight: "560",
        borderRadius: "8px"
    },
});


function togglenav(e) {
    let elem = document.getElementById(e.dataset.target);
    e.classList.toggle("is-active");
    elem.classList.toggle("is-active");
}

function tabchange(e) {
    let elem_target = document.getElementById(e.dataset.target);
    let elem_deactivate = document.querySelector(".tab.is-active");
    elem_deactivate.classList.toggle("is-active");
    e.parentElement.parentElement.querySelector(".is-active").classList.toggle("is-active");
    e.parentElement.classList.toggle("is-active");
    elem_target.classList.toggle("is-active");
}

function verifypass(elem) {
    let elem_target = document.getElementById("password");
    let help_text = document.getElementById("passhelper");

    if (elem.value != elem_target.value) {
        elem.classList.add("is-danger");
        elem.classList.remove("is-success");
        help_text.textContent = "Passwords do not match.";
    } else {
        elem.classList.remove("is-danger");
        elem.classList.add("is-success");
        help_text.textContent = "";
    }
}

function toggle_modal(elem, options = {}) {
    if (!elem) {
        let modal = document.querySelector(".modal.is-active");
        if (modal) {
            if (!modal.classList.toggle("is-active")) {
                if (window.history.state.modal_active) window.history.back();
            };
        };
    } else {
        let target;
        if (typeof elem == 'string') {
            target = elem;
        } else {
            target = elem.dataset.target;
        }
        let modal = document.getElementById(target);
        if (modal.classList.toggle("is-active")) {
            window.history.pushState({ modal_active: 1 }, "modal is active", "#modal_active");
        } else {
            if (window.history.state.modal_active) window.history.back();
        }
    }
    if (options.focus) {
        let focus = document.querySelector(options.focus);
        focus.focus();
    }
}

let modal_bg = document.querySelectorAll(".modal-background");
[].slice.apply(modal_bg).forEach(ele=>{
    ele.addEventListener("click",()=>{
        let modal = document.querySelector(".modal.is-active");
        modal.classList.toggle("is-active");
    })
})


function handle_files(elem, files) {
    let file_name = files[0].name;
    let label = document.getElementById(elem.dataset.target);
    label.textContent = file_name;
}

function toggle_modify(elem) {

    let body = {};
    body.id = elem.dataset.id;
    body.action = "details";
    fetch("./api.php", {
        method: "POST",
        body: JSON.stringify(body)
    })
        .then(x => x.json())
        .then(x => {
            let target = (Number(x.type)) ? "modify_comb" : "modify_rom";
            let modal = document.getElementById(target);
            let id, model, build, security, android, country, size, url;
            id = modal.querySelector("input[name=id]");
            model = modal.querySelector("input[name=model]");
            build = modal.querySelector("input[name=build]");
            security = (Number(x.type)) ? modal.querySelector('input[name=security]') : null;
            android = modal.querySelector("input[name=android]");
            country = modal.querySelector("input[name=country]");
            size = modal.querySelector("input[name=size]");
            url = modal.querySelector("input[name=url]");

            id.value = x.id;
            model.value = x.model;
            build.value = x.build_v;
            if (security) {
                security.value = x.security_level;
            }
            android.value = x.android_v;
            country.value = x.country;
            let size_mb = x.size / 1048576;
            size.value = size_mb;
            url.value = x.url;

            modal.classList.toggle("is-active");
        }).catch(x => {
            console.log(x);
            alert("An error has occured, please contact webmaster");
        });
}
function toggle_delete(elem) {
    let target = 'delete_file';
    let body = {};
    body.id = elem.dataset.id;
    body.action = "details";
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
function fetch_rows(target, search = null, page = 1) {
    if (!target) return;

    let type, expanded;
    type = (target.startsWith("roms")) ? 0 : 1;
    expanded = target.endsWith("admin");
    let params = { type, page, search };
    params.action = "get";
    fetch("api.php", {
        method: "post",
        body: JSON.stringify(params)
    })
        .then(res => res.json())
        .then(res => {

            populate_table(target, res.rows, expanded);
            if (Number(res.pages)) update_table_pagination(target, page, res.pages, search);
        })
        .catch(err => {
            console.error(err);
        });
}

function populate_table(target, rows, expanded = 0, err = 0) {
    let table_container = document.getElementById(target);
    let table = document.createElement("table");
    table.className = "table is-fullwidth is-bordered is-striped is-hoverable";
    let extra_thead = '';
    let security_level = '';
    if (rows[0] && Number(rows[0].type)) {
        security_level = '<th>مستوى الحماية</th>';
    }
    if (expanded) {
        extra_thead = `
            <th>الحجم</th>
            <th>عدد التنزيلات</th>
            <th>ادارة</th>
        `;
    } else {
        extra_thead = `
            <th>رابط التحميل</th>
        `
    }
    let thead = document.createElement("thead");
    thead.innerHTML = `
        <tr>
            <th style="background-color:#363636;color:white">الرومات</th>
        </tr>
        <tr style="background-color:#dbdbdb">
            <th>موديل الجهاز</th>
            <th>رقم الاصدار</th>
            <th>اندرويد</th>
            ${security_level}
            <th>البلد</th>
            <th>تم الرفع</th>
            ${extra_thead}
        </tr>
    `
    let tbody = document.createElement("tbody");
    rows.forEach(row => {

        let tr = document.createElement("tr");
        let model = document.createElement("td");
        model.textContent = row.model;
        let build_v = document.createElement("td");
        build_v.textContent = row.build_v;
        let android_v = document.createElement("td");
        android_v.textContent = row.android_v;
        tr.append(model, build_v, android_v);

        if (Number(row.type)) {
            let security_level = document.createElement("td");
            security_level.textContent = row.security_level;
            tr.append(security_level);
        }

        let country = document.createElement("td");
        country.textContent = row.country;
        let created = document.createElement("td");
        created.textContent = new Date(Date.parse(row.created)).toLocaleDateString();
        tr.append(country, created);

        let last = document.createElement("td");
        if (expanded) {
            let size = document.createElement("td");
            size.textContent = row.size;
            let downloads = document.createElement("td");
            downloads.textContent = row.downloads;
            tr.append(size, downloads);
            last.innerHTML = `
            <a onclick='toggle_modify(this)' data-id='${row.id}' class=\"button is-warning\">
                <span>
                    تعديل
                </span>
                <span class=\"icon\">
                    <i class=\"fa fa-edit\"></i>
                </span>
            </a>
            <a onclick='toggle_delete(this)' data-id='${row.id}' class=\"button is-danger\">
                <span class='icon'><i class='fa fa-trash-alt'></i></span>
            </a>
            `
        } else {
            last.innerHTML = `
            <a href="get?id=${row.id}" class="button is-primary">
                <span class="icon">
                    <i class="fa fa-download"></i>
                </span>
                <span>
                    تحميل
                </span>
            </a>
            `
        }
        tr.append(last);
        tbody.append(tr);
    });
    table.append(thead, tbody);
    table_container.innerHTML = (table.outerHTML);

    return rows;
}

function table_search(target, event) {
    event.preventDefault();
    let container = document.getElementById(target);
    container.innerHTML = `
            <div class="has-text-centered">
                <button class="button is-link is-loading is-large" style="width:100px;"></button>
            </div>
            `
    let search = event.currentTarget.s.value;
    fetch_rows(target, search);
}

function update_table_pagination(target, page, pages, search) {
    let table_container = document.getElementById(target);

    let pagination = document.createElement('nav');
    pagination.style.margin = "10px";
    pagination.classList.add("pagination");
    pagination.classList.add("rtl");
    let prev = document.createElement("a");
    prev.className = "pagination-previous";
    prev.textContent = "السابقة";
    if (page == 1) prev.setAttribute("disabled", true); else {
        prev.onclick = () => {
            fetch_rows(target, search, page - 1)
        }
    }
    let next = document.createElement('a');
    next.className = "pagination-next";
    next.textContent = "الصفحة التالية";
    if (page == pages) next.setAttribute("disabled", true); else {
        next.onclick = () => {
            fetch_rows(target, search, page + 1)
        }
    }
    pagination.append(prev, next);
    let pagination_list = document.createElement("ul");
    pagination_list.className = "pagination-list";

    for (let i = 1; i <= pages; i++) {
        let li = document.createElement("li");
        let a = document.createElement('a');
        a.textContent = i;
        a.className = "pagination-link";
        if (page == i) a.classList.add("is-current");
        a.onclick = () => {
            fetch_rows(target, search, i)
        };
        li.append(a);
        pagination_list.append(li);

    }

    pagination.append(pagination_list);
    table_container.append(pagination);


    return true;
}

function calculate_paypal(elem) {
    let amount = document.getElementById(elem.dataset.target);
    let item_name = document.getElementById(elem.dataset.itemName);
    let rate = elem.dataset.rate;

    amount.value = Math.round((elem.value * rate) * 100) / 100;
    item_name.value = `${elem.value} Gigabytes at ${document.location.hostname}`;

}

async function make_action(params, options = {}) {
    let form = options.form ? options.form : 0;
    let reload = options.hasOwnProperty('reload') ? options.reload : 1;
    let callback = options.callback ? options.callback : 0;
    fetch("action.php", {
        method: "post",
        body: params
    }).then(x => x.text())
        .then(res => {
            if (res.status) {
                if (res.message) toast.success(res.message)
                toggle_modal();
                if (reload) {
                    toast.message("Page will refresh in 2 seconds", {
                        delay: 500
                    });
                    setTimeout(() => {
                        window.location.reload();
                    }, 2000);
                }
                if (callback) callback(res);
            } else {
                if (res.message) toast.alert(res.message);
                if (res.focus && form) form[res.focus].focus();
            }
        })
}

async function make_request(params, options = {}) {
    let callback = options.callback ? options.callback : 0;
    fetch("api.php", {
        method: "POST",
        body: params
    }).then(x => x.json())
        .then(res => {
            if (res.status) {
                if (res.message) {
                    toast.success(res.message)
                }
                if (callback) {
                    callback(res);
                }
            } else {
                toast.alert(res.message);
            }
        })
}

function copyText(str) {
    let input = document.getElementById("copyText");
    input.value = str;
    input.select();
    input.setSelectionRange(0, 99999);
    document.execCommand("copy");
    toast.success("Copied");
}