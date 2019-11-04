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
    
    fetch("./api.php?id="+elem.dataset.id)
        .then(x=>x.json())
        .then(x=>{
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
        }).catch(x=>{
            console.log(x);
            alert("An error has occured, please contact webmaster");
        });
}