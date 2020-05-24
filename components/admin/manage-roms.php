<form class="columns flipx rtl is-mobile is-multiline" onsubmit="table_search('roms-table-admin',event)">
    <div class="column is-narrow is-10-mobile">
        <input type="text" onkeyup='document.forms[0][1].click()' placeholder="بحث" class="input">
    </div>
    <div class="column is-narrow is-2-mobile">
        <button type="submit" class="button is-link is-light">
            <span class="icon">
                <i class="fa fa-search"></i>
            </span>
        </button>
    </div>
    <div class="column is-narrow">
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