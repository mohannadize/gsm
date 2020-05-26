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
        <!-- <h3 class="title rtl">الرومات</h3> -->
        <form class='columns is-mobile' id="search_form" onsubmit="table_search('roms-table',event)">
            <div class="column is-offset-3-tablet is-narrow ltr">
                <button type='submit' name='submit' class="button is-link is-light">
                    <span class="icon">
                        <i class="fa fa-search"></i>
                    </span>
                    <span class="is-hidden-mobile">بحث</span>
                </button>
            </div>
            <div class="column rtl is-9-mobile is-5-tablet">
                <input name='s' onkeyup="document.forms.search_form.submit.click()" type="text" placeholder="بحث" class="input" value="<?php echo isset($_GET['s']) ? $_GET["s"] : ''; ?>">
            </div>
        </form>
        <div class="scrollable-table" style="transform:scale(0.95)" id='roms-table'>
            <div class="has-text-centered">
                <button class="button is-link is-loading is-large" style="width:100px;"></button>
            </div>
        </div>
    </div>
</section>