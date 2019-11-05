<script>
window.onload = () => {
    fetch_rows("combs-table")
}
</script>

<section class="section">
    <div class="container">
        <h3 class="title">Combinations</h3>
        <form class='columns' onsubmit="table_search('combs-table',event)">
            <div class="column is-5-tablet is-offset-3-tablet">
                <input type="text" placeholder="Search" class="input">
            </div>
            <div class="column">
                <button type='submit' class="button is-link is-light">
                    <span>Search</span>
                    <span class="icon">
                        <i class="fa fa-search"></i>
                    </span>
                </button>
            </div>
        </form>
        <div class="scrollable-table" id='combs-table'>
            <div class="has-text-centered">
                <button class="button is-link is-loading is-large" style="width:100px;"></button>
            </div>
        </div>
    </div>
</section>