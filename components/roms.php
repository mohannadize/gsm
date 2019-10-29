<section class="section">
    <div class="container">
        <h3 class="title">Rom Paradise</h3>
        <form class='columns' action="roms" method="get">
            <div class="column is-5-tablet is-offset-3-tablet">
                <input required name='s' type="text" placeholder="Search" class="input" value="<?php echo isset($_GET['s']) ? $_GET["s"]:''; ?>">
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
        <div class="scrollable-table">
            <table class="table is-fullwidth is-bordered is-striped is-rounded is-hoverable">
                <thead>
                    <tr>
                        <th>Brand</th>
                        <th>Country</th>
                        <th>Model</th>
                        <th>Version</th>
                        <th>Android</th>
                        <th>Uploaded</th>
                        <th>Views</th>
                        <th>Downloads</th>
                    </tr>
                </thead>
                <tbody>

                    <?php

                    if (isset($_GET['s'])) {
                        $roms = $db->query("SELECT * FROM roms where `search_text` like '%$_GET[s]%' limit 20");
                    } else {
                        $roms = $db->query("SELECT * FROM roms limit 20");
                    }
                    while ($row = $db->fetch_array($roms)) {
                        echo "
                        <tr>
                        <th>$row[brand]</th>
                        <td>$row[country]</td>
                        <td>$row[model]</td>
                        <td>$row[build_v]</td>
                        <td>$row[android_v]</td>
                        <td>$row[created]</td>
                        <td>$row[views]</td>
                        <td>$row[downloads]</td>
                        <td><a href=\"\" class=\"button is-info\">
                                <span class=\"icon\">
                                    <i class=\"fa fa-download\"></i>
                                </span>
                                <span>
                                    $row[price] Pts
                                </span>
                            </a></td>
                        </tr>
                        ";
                    }



                    ?>
                </tbody>
            </table>
        </div>
    </div>
</section>