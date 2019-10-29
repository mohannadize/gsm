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
    console.log(elem_target);
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
    debugger;
    let file_name = files[0].name;
    let label = document.getElementById(elem.dataset.target);
    label.textContent = file_name;

    
}