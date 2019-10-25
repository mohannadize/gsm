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