<script>
    window.onload = () => {
        let params = new URLSearchParams(location.href.split("?")[1]);
        if (params.has("s")) {
            fetch_rows('roms-table', params.get("s"));
        } else {
            fetch_rows('roms-table');
        }
    }
</script>

<section class="section">
    <div class="container">
        <h3 class="title rtl">الرومات</h3>
        <form class='columns' onsubmit="table_search('roms-table',event)">
                <div class="column is-1 is-offset-3-tablet">
                    <button type='submit' class="button is-link is-light">
                        <span class="icon">
                            <i class="fa fa-search"></i>
                        </span>
                        <span>بحث</span>
                    </button>
                </div>
            <div class="column rtl is-5-tablet">
                <input name='s' onkeyup="document.forms[0][1].click()" type="text" placeholder="بحث" class="input" value="<?php echo isset($_GET['s']) ? $_GET["s"] : ''; ?>">
            </div>
        </form>
        <div class="box scrollable-table" id='roms-table'>
            <div class="has-text-centered">
                <button class="button is-link is-loading is-large" style="width:100px;"></button>
            </div>
        </div>
    </div>
</section>