<section class="section">
    <div class="container">
        <h3 class="title">Rom Paradise</h3>
        <div class="columns">
            <div class="column is-5-tablet is-offset-3-tablet">
                <input type="text" placeholder="Search" class="input">
            </div>
            <div class="column"><button class="button is-link is-light">
                    <span>Search</span>
                    <span class="icon">
                        <i class="fa fa-search"></i>
                    </span>
                </button></div>
        </div>
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

                    $roms = $db->query("SELECT * FROM roms limit 20");
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