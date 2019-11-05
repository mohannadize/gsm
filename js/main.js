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

function toggle_modal(elem) {
    let target = document.getElementById(elem.dataset.target);
    target.classList.toggle("is-active");
}

function handle_files(elem, files) {
    let file_name = files[0].name;
    let label = document.getElementById(elem.dataset.target);
    label.textContent = file_name;
}

function toggle_modify(type, elem) {
    let target = (type == 'rom') ? "modify_rom" : "modify_comb";
    let modal = document.getElementById(target);

    let body = {};
    body.id = elem.dataset.id;
    body.action = "details";
    fetch("./api.php", {
        method: "POST",
        body: JSON.stringify(body)
    })
        .then(x => x.json())
        .then(x => {
            let id, model, build, security, android, country, size, url;
            id = modal.querySelector("input[name=id]");
            model = modal.querySelector("input[name=model]");
            build = modal.querySelector("input[name=build]");
            security = (type == 'comb') ? modal.querySelector('input[name=security]') : null;
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
function fetch_rows(type = 0, search = null, page = 1) {
    let params = { type, page, search };
    params.action = "get";
    fetch("api.php", {
        method: "post",
        body: JSON.stringify(params)
    })
        .then(res => res.json())
        .then(rows => {
            populate_table("table-container", rows);
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
        security_level = '<th>Security Level</th>';
    }
    if (expanded) {
        extra_thead = `
            <th>Size</th>
            <th>Downloads</th>
        `;
    }
    let thead = document.createElement("thead");
    thead.innerHTML = `
        <tr>
            <th>Model</th>x
            <th>Build Version</th>
            <th>Android Version</th>
            ${security_level}
            <th>Country</th>
            <th>Uploaded</th>
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
            <a target='_blank' href="download?id=${row.id}" class="button is-warning">
                <span class="icon">
                    <i class="fa fa-edit"></i>
                </span>
                <span>
                    Modify
                </span>
            </a>
            `
        } else {
            last.innerHTML = `
            <a target='_blank' href="download?id=${row.id}" class="button is-link">
                <span class="icon">
                    <i class="fa fa-download"></i>
                </span>
                <span>
                    Download
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
    target = document.getElementById(target);
    target.innerHTML = `
            <div class="has-text-centered">
                <button class="button is-link is-loading is-large" style="width:100px;"></button>
            </div>
            `
    let search = event.currentTarget[0].value;
    fetch_rows(type, search);
    event.preventDefault();
}

window.onload = () => {
    fetch_rows(type);
}