<section class="section">
    <div class="container">
        <h3 class="title">Combinations</h3>
        <form class='columns' action="combinations" method="get">
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
                        <th>Model</th>
                        <th>Combination Version</th>
                        <th>Security Level</th>
                        <th>Android Version</th>
                        <th>Country</th>
                        <th>Uploaded</th>
                    </tr>
                </thead>
                <tbody>

                    <?php

                    if (isset($_GET['s'])) {
                        $files = $db->query("SELECT * FROM files where `type`='1' AND `search_text` like '%$_GET[s]%' limit 20");
                    } else {
                        $files = $db->query("SELECT * FROM files where `type`='1' limit 20");
                    }
                    while ($row = $db->fetch_array($files)) {
                        echo "
                        <tr>
                        <td>$row[model]</td>
                        <td>$row[build_v]</td>
                        <td>$row[security_level]</td>
                        <td>$row[android_v]</td>
                        <td>$row[country]</td>
                        <td>$row[created]</td>
                        <td><a target='_blank' href=\"$row[url]\" class=\"button is-link\">
                                <span class=\"icon\">
                                    <i class=\"fa fa-download\"></i>
                                </span>
                                <span>
                                    Download
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