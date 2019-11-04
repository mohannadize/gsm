<section class="section">
    <div class="container">
        <div class="tabs is-boxed">
            <ul>
                <li class="is-active">
                    <a onclick='tabchange(this)' data-target="manage-roms">
                        <span class="icon is-small"><i class="fas fa-bars" aria-hidden="true"></i></span>
                        <span>Manage Roms</span>
                    </a>
                </li>
                <li>
                    <a onclick='tabchange(this)' data-target="manage-comb">
                        <span class="icon is-small"><i class="fas fa-bars" aria-hidden="true"></i></span>
                        <span>Manage Combinations</span>
                    </a>
                </li>
                <li>
                    <a onclick='tabchange(this)' data-target="website-settings">
                        <span class="icon is-small"><i class="fas fa-cog" aria-hidden="true"></i></span>
                        <span>Website Settings</span>
                    </a>
                </li>
                <li>
                    <a onclick='tabchange(this)' data-target="account-settings">
                        <span class="icon is-small"><i class="fas fa-user" aria-hidden="true"></i></span>
                        <span>Account settings</span>
                    </a>
                </li>
            </ul>
        </div>
    </div>
    <br>
    <div class="container tab is-active" id="manage-roms">
        <form class="columns" method="get" action="admin">
            <div class="column is-3-tablet is-9-mobile is-inline-block">
                <input required name="s" type="text" placeholder="Search" class="input" value="<?php echo isset($_GET['s']) ? $_GET["s"] : ''; ?>">
            </div>
            <div class="column is-2-mobile is-inline-block">
                <button type="submit" class="button is-link is-light">
                    <span class="icon">
                        <i class="fa fa-search"></i>
                    </span>
                </button>
            </div>
            <div class="column is-inline-block">
                <div class="field">
                    <a class="button is-danger is-light" onclick="toggle_modal(this)" data-target="add_rom"><span class="icon">
                            <i class="fa fa-plus"></i>
                        </span><span>
                            Add a new rom
                        </span>
                    </a>
                </div>
            </div>
        </form>
        <div class="scrollable-table">
            <table class="table is-fullwidth is-bordered is-striped is-rounded is-hoverable">
                <thead>
                    <tr>
                        <th>Model</th>
                        <th>Build Version</th>
                        <th>Android Version</th>
                        <th>Country</th>
                        <th>Size</th>
                        <th>Uploaded</th>
                        <th>Downloads</th>
                    </tr>
                </thead>
                <tbody>

                    <?php

                    if (isset($_GET['s'])) {
                        $files = $db->query("SELECT * FROM files where `type`='0' AND `search_text` like '%$_GET[s]%' limit 20");
                    } else {
                        $files = $db->query("SELECT * FROM files where `type`='0' limit 20");
                    }
                    while ($row = $db->fetch_array($files)) {
                        echo "
                        <tr>
                        <td>$row[model]</td>
                        <td>$row[build_v]</td>
                        <td>$row[android_v]</td>
                        <td>$row[country]</td>
                        <td>" . bytes_to_human($row["size"]) . "</td>
                        <td>$row[created]</td>
                        <td>$row[downloads]</td>
                        <td><a onclick='toggle_modify(\"rom\",this)' data-id='$row[id]' class=\"button is-warning\">
                                <span class=\"icon\">
                                    <i class=\"fa fa-edit\"></i>
                                </span>
                                <span>
                                    Modify
                                </span>
                            </a>
                            <a href=\"\" class=\"button is-rounded is-danger\">
                                <span class='icon'><i class='fa fa-trash-alt'></i></span>
                            </a>
                            </td>
                        </tr>
                        ";
                    }



                    ?>
                </tbody>
            </table>
        </div>
    </div>
    <div class="container tab" id="manage-comb">
        <form class="columns" method="get" action="admin">
            <div class="column is-3-tablet is-9-mobile is-inline-block">
                <input required name="s" type="text" placeholder="Search" class="input" value="<?php echo isset($_GET['s']) ? $_GET["s"] : ''; ?>">
            </div>
            <div class="column is-2-mobile is-inline-block">
                <button type="submit" class="button is-link is-light">
                    <span class="icon">
                        <i class="fa fa-search"></i>
                    </span>
                </button>
            </div>
            <div class="column is-inline-block">
                <div class="field">
                    <a class="button is-success is-light" onclick="toggle_modal(this)" data-target="add_comb"><span class="icon">
                            <i class="fa fa-plus"></i>
                        </span><span>
                            Add a new combination
                        </span>
                    </a>
                </div>
            </div>
        </form>
        <div class="scrollable-table">
            <table class="table is-fullwidth is-bordered is-striped is-rounded is-hoverable">
                <thead>
                    <tr>
                        <th>Model</th>
                        <th>Build Version</th>
                        <th>Android Version</th>
                        <th>Security Level</th>
                        <th>Country</th>
                        <th>Size</th>
                        <th>Uploaded</th>
                        <th>Downloads</th>
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
                        <td>$row[android_v]</td>
                        <td>$row[security_level]</td>
                        <td>$row[country]</td>
                        <td>" . bytes_to_human($row["size"]) . "</td>
                        <td>$row[created]</td>
                        <td>$row[downloads]</td>
                        <td>
                            <a onclick='toggle_modify(\"comb\",this)' data-id='$row[id]' class=\"button is-warning\">
                                <span class=\"icon\">
                                    <i class=\"fa fa-edit\"></i>
                                </span>
                                <span>
                                    Modify
                                </span>
                            </a>
                            <a href=\"\" class=\"button is-rounded is-danger\">
                                <span class='icon'><i class='fa fa-trash-alt'></i></span>
                            </a>
                        </td>
                        </tr>
                        ";
                    }



                    ?>
                </tbody>
            </table>
        </div>
    </div>
    <div class="container tab" id="website-settings">
        <h2 class="title">Website Settings</h2>

        <form action="action.php" method="post">
            <input type="hidden" name="action" value='update_site'>
            <div class="columns">
                <div class="column is-6-tablet">
                    <div class="field">
                        <label class="switch is-warning">
                            <input name="maintainance" type="checkbox" <?php echo $settings['maintainance'] ? "checked" : 0; ?>>
                            <div class="switch-body"></div>
                            <span>Development mode</span>
                        </label>
                    </div>

                    <div class="field">
                        <label class="label">Website Name</label>
                        <div class="control">
                            <input class="input" name='site-name' type="text" value="<?php echo $settings['site-name']; ?>">
                        </div>
                    </div>

                    <div class="field">
                        <label class="label">Site Description</label>
                        <div class="control">
                            <textarea name='description' class="textarea"><?php echo $settings['description']; ?></textarea>
                        </div>
                    </div>

                    <div class="field">
                        <label class="label">Email</label>
                        <div class="control has-icons-left has-icons-right">
                            <input name="email" class="input" type="email" value="<?php echo $settings['email']; ?>">
                            <span class="icon is-small is-left">
                                <i class="fas fa-envelope"></i>
                            </span>
                        </div>
                    </div>

                    <div class="field">
                        <label class="label">Paypal Email</label>
                        <div class="control has-icons-left has-icons-right">
                            <input class="input" name='paypal' type="email" value="<?php echo $settings['paypal']; ?>">
                            <span class="icon is-small is-left">
                                <i class="fab fa-paypal"></i>
                            </span>
                        </div>
                    </div>

                    <label class="label">Logo </label>
                    <div class="field">
                        <label class="switch is-info">
                            <input name='logo_as_text' type="checkbox" <?php echo $settings['logo_as_text'] ? "checked" : 0; ?>>
                            <div class="switch-body"></div>
                            <span>Logo as text</span>
                        </label>
                    </div>

                    <div class="field">
                        <a class="button is-warning" onclick="toggle_modal(this)" data-target="upload_logo">
                            <span class="icon"><i class="fa fa-upload"></i></span>
                            <span>
                                Logo upload
                            </span></a>
                    </div>

                    <div class="field">
                        <label class="label">Daily rewards amount</label>
                        <div class="control">
                            <input class="input" name="daily_free" type="number" value="<?php echo $settings['daily_free']; ?>">
                        </div>
                    </div>
                    <div class="field">
                        <label class="switch is-info">
                            <input name='increment_daily' type="checkbox" <?php echo $settings['increment_daily'] ? "checked" : 0; ?>>
                            <div class="switch-body"></div>
                            <span>Accumulate daily rewards</span>
                        </label>
                    </div>

                    <div class="field is-grouped">
                        <div class="control">
                            <button class="button is-link">Submit</button>
                        </div>
                        <div class="control">
                            <button class="button is-link is-light">Cancel</button>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
    <div class="container tab" id="account-settings">
        <?php include "account-settings.php"; ?>
    </div>
</section>


<!-- TODO: Modals -->
<div class="modal" id='upload_logo'>
    <div class="modal-background"></div>
    <div class="modal-card">
        <header class="modal-card-head">
            <p class="modal-card-title">Upload Site Logo</p>
            <button class="delete" aria-label="close" onclick="toggle_modal(this)" data-target="upload_logo"></button>
        </header>
        <section class="modal-card-body">
            <form action="action.php" method="post" enctype="multipart/form-data">
                <input type="hidden" name="action" value="update_logo">
                <div class="field">
                    <div class="file has-name">
                        <label class="file-label">
                            <input required class="file-input" data-target="logo-name" onchange="handle_files(this,this.files)" name="file" type="file">
                            <span class="file-cta">
                                <span class="file-icon">
                                    <i class="fas fa-upload"></i>
                                </span>
                                <span class="file-label">
                                    Choose a file…
                                </span>
                            </span>
                            <span class="file-name" id='logo-name'>
                                No file selected...
                            </span>
                        </label>
                    </div>
                </div>
        </section>
        <footer class="modal-card-foot">
            <button class="button is-info" type="submit">Upload</button>
            </form>
            <button class="button" onclick="toggle_modal(this)" data-target="upload_logo">Cancel</button>
        </footer>
    </div>
</div>

<div class="modal" id="add_rom">
    <div class="modal-background"></div>
    <div class="modal-card">
        <header class="modal-card-head">
            <p class="modal-card-title">Add a new rom</p>
            <button class="delete" aria-label="close" onclick="toggle_modal(this)" data-target="add_rom"></button>
        </header>
        <section class="modal-card-body">
            <form action="action.php" method="post">
                <input type="hidden" name="action" value="add_rom">
                <div class="field">
                    <label class="label">Model</label>
                    <div class="control">
                        <input class="input" name="model" type="text" placeholder="SM-3242">
                    </div>
                </div>
                <div class="field">
                    <label class="label">Build Version</label>
                    <div class="control">
                        <input class="input" name="build" type="text" placeholder="7.22.18">
                    </div>
                </div>
                <div class="field">
                    <label class="label">Android Version</label>
                    <div class="control">
                        <input class="input" name="android" type="text" placeholder="8.1">
                    </div>
                </div>
                <div class="field">
                    <label class="label">Country</label>
                    <div class="control">
                        <input class="input" name="country" type="text" placeholder="Egypt">
                    </div>
                </div>
                <div class="field">
                    <label class="label">Size</label>
                    <div class="control">
                        <input class="input" name="size" type="number" placeholder="0">
                    </div>
                </div>
                <div class="field">
                    <label class="label">Download URL</label>
                    <div class="control">
                        <input class="input" name="url" type="text" placeholder="https://">
                    </div>
                </div>
        </section>
        <footer class="modal-card-foot">
            <button class="button is-info" type="submit">
                <span class="icon"><i class="fa fa-plus"></i></span><span>Add</span>
            </button>
            </form>
            <button class="button" onclick="toggle_modal(this)" data-target="add_rom">Cancel</button>
        </footer>
    </div>
</div>

<div class="modal" id="add_comb">
    <div class="modal-background"></div>
    <div class="modal-card">
        <header class="modal-card-head">
            <p class="modal-card-title">Add a new combination</p>
            <button class="delete" aria-label="close" onclick="toggle_modal(this)" data-target="add_comb"></button>
        </header>
        <section class="modal-card-body">
            <form action="action.php" method="post">
                <input type="hidden" name="action" value="add_comb">
                <div class="field">
                    <label class="label">Model</label>
                    <div class="control">
                        <input class="input" name="model" type="text" placeholder="SM-3242">
                    </div>
                </div>
                <div class="field">
                    <label class="label">Combination Version</label>
                    <div class="control">
                        <input class="input" name="build" type="text" placeholder="7.22.18">
                    </div>
                </div>
                <div class="field">
                    <label class="label">Android Version</label>
                    <div class="control">
                        <input class="input" name="android" type="text" placeholder="8.1">
                    </div>
                </div>
                <div class="field">
                    <label class="label">Security Level</label>
                    <div class="control">
                        <input class="input" name="security" type="text" placeholder="0">
                    </div>
                </div>
                <div class="field">
                    <label class="label">Country</label>
                    <div class="control">
                        <input class="input" name="country" type="text" placeholder="Egypt">
                    </div>
                </div>
                <div class="field">
                    <label class="label">Size</label>
                    <div class="control">
                        <input class="input" name="size" type="number" placeholder="0">
                    </div>
                </div>
                <div class="field">
                    <label class="label">Download URL</label>
                    <div class="control">
                        <input class="input" name="url" type="text" placeholder="https://">
                    </div>
                </div>
        </section>
        <footer class="modal-card-foot">
            <button class="button is-info" type="submit">
                <span class="icon"><i class="fa fa-plus"></i></span><span>Add</span>
            </button>
            </form>
            <button class="button" onclick="toggle_modal(this)" data-target="add_comb">Cancel</button>
        </footer>
    </div>
</div>

<div class="modal" id="modify_rom">
    <div class="modal-background"></div>
    <div class="modal-card">
        <header class="modal-card-head">
            <p class="modal-card-title">Modify rom</p>
            <button class="delete" aria-label="close" onclick="toggle_modal(this)" data-target="modify_rom"></button>
        </header>
        <section class="modal-card-body">
            <form action="action.php" method="post">
                <input type="hidden" name="action" value="modify_file">
                <input type="hidden" name="id">
                <div class="field">
                    <label class="label">Model</label>
                    <div class="control">
                        <input class="input" name="model" type="text" placeholder="SM-3242">
                    </div>
                </div>
                <div class="field">
                    <label class="label">Build Version</label>
                    <div class="control">
                        <input class="input" name="build" type="text" placeholder="7.22.18">
                    </div>
                </div>
                <div class="field">
                    <label class="label">Android Version</label>
                    <div class="control">
                        <input class="input" name="android" type="text" placeholder="8.1">
                    </div>
                </div>
                <div class="field">
                    <label class="label">Country</label>
                    <div class="control">
                        <input class="input" name="country" type="text" placeholder="Egypt">
                    </div>
                </div>
                <div class="field">
                    <label class="label">Size</label>
                    <div class="control">
                        <input class="input" name="size" type="number" placeholder="0">
                    </div>
                </div>
                <div class="field">
                    <label class="label">Download URL</label>
                    <div class="control">
                        <input class="input" name="url" type="text" placeholder="https://">
                    </div>
                </div>
        </section>
        <footer class="modal-card-foot">
            <button class="button is-warning" type="submit">
                <span class="icon"><i class="fa fa-edit"></i></span><span>Submit</span>
            </button>
            </form>
            <button class="button" onclick="toggle_modal(this)" data-target="modify_rom">Cancel</button>
        </footer>
    </div>
</div>

<div class="modal" id="modify_comb">
    <div class="modal-background"></div>
    <div class="modal-card">
        <header class="modal-card-head">
            <p class="modal-card-title">Modify combination</p>
            <button class="delete" aria-label="close" onclick="toggle_modal(this)" data-target="modify_comb"></button>
        </header>
        <section class="modal-card-body">
            <form action="action.php" method="post">
                <input type="hidden" name="action" value="modify_file">
                <input type="hidden" name="id">
                <div class="field">
                    <label class="label">Model</label>
                    <div class="control">
                        <input class="input" name="model" type="text" placeholder="SM-3242">
                    </div>
                </div>
                <div class="field">
                    <label class="label">Combination Version</label>
                    <div class="control">
                        <input class="input" name="build" type="text" placeholder="7.22.18">
                    </div>
                </div>
                <div class="field">
                    <label class="label">Android Version</label>
                    <div class="control">
                        <input class="input" name="android" type="text" placeholder="8.1">
                    </div>
                </div>
                <div class="field">
                    <label class="label">Security Level</label>
                    <div class="control">
                        <input class="input" name="security" type="text" placeholder="0">
                    </div>
                </div>
                <div class="field">
                    <label class="label">Country</label>
                    <div class="control">
                        <input class="input" name="country" type="text" placeholder="Egypt">
                    </div>
                </div>
                <div class="field">
                    <label class="label">Size</label>
                    <div class="control">
                        <input class="input" name="size" type="number" placeholder="0">
                    </div>
                </div>
                <div class="field">
                    <label class="label">Download URL</label>
                    <div class="control">
                        <input class="input" name="url" type="text" placeholder="https://">
                    </div>
                </div>
        </section>
        <footer class="modal-card-foot">
            <button class="button is-warning" type="submit">
                <span class="icon"><i class="fa fa-edit"></i></span><span>Submit</span>
            </button>
            </form>
            <button class="button" onclick="toggle_modal(this)" data-target="modify_comb">Cancel</button>
        </footer>
    </div>
</div>