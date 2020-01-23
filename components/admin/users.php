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