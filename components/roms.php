<script>
let type = 0;
</script>

<section class="section">
    <div class="container">
        <h3 class="title">Roms</h3>
        <form class='columns' onsubmit="table_search('table-container',event)">
            <div class="column is-5-tablet is-offset-3-tablet">
                <input name='s' type="text" placeholder="Search" class="input" value="<?php echo isset($_GET['s']) ? $_GET["s"] : ''; ?>">
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
        <div class="scrollable-table" id='table-container'>
            <div class="has-text-centered">
                <button class="button is-link is-loading is-large" style="width:100px;"></button>
            </div>
        </div>
        <!-- <nav class="pagination" style="padding:40px" role="navigation" aria-label="pagination">
            <a class="pagination-previous" title="This is the first page" disabled>Previous</a>
            <a class="pagination-next">Next page</a>
            <ul class="pagination-list">
                <?php
                // $pages = $db->query("SELECT COUNT(id) from files where `type`='1'");
                // $pages = $db->fetch_array($pages);
                // $pages = ceil($pages['COUNT(id)'] / 15);
                // for ($i = 1; $i <= $pages; $i++) {
                //     $current = '';
                //     $href = 'javascript:void(0)';
                //     if (1 == $i) $current = "is-current";
                //     else $href = "?pr=$i";
                //     echo "
                //     <li>
                //         <a href='$href' class='pagination-link $current' aria-label='Page $i'>$i</a>
                //     </li>
                //     ";
                // }

                ?>
                <li>
                    <a class="pagination-link is-current" aria-label="Page 1" aria-current="page">1</a>
                </li>
                <li>
                    <a class="pagination-link" aria-label="Goto page 2">2</a>
                </li>
                <li>
                    <a class="pagination-link" aria-label="Goto page 3">3</a>
                </li>
            </ul>
        </nav> -->
    </div>
</section>