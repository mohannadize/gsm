<section class="section">
    <div class="container">
        <div class="tabs is-boxed">
            <ul>
                <li class="is-active">
                    <a onclick='tabchange(this)' data-target="manage-roms">
                        <span class="icon is-small"><i class="fas fa-edit" aria-hidden="true"></i></span>
                        <span>Manage Roms</span>
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
        <div class="columns">
            <div class="column is-3-tablet is-4-desktop">
                <div class="field">
                    <button class="button is-danger" onclick="toggle_modal(this)" data-target="add_rom"><span class="icon">
                            <i class="fa fa-upload"></i>
                        </span><span>
                            Add a new rom
                        </span></button>
                </div>
            </div>
            <div class="column is-3-tablet is-9-mobile is-inline-block">
                <input type="text" placeholder="Search" class="input">
            </div>
            <div class="column is-2-mobile is-inline-block">
                <button class="button is-link is-light">
                    <span class="icon">
                        <i class="fa fa-search"></i>
                    </span>
                </button>
            </div>
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
                        <th>Price</th>
                        <th>Updated</th>
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
                        <td>$row[price]</td>
                        <td>$row[created]</td>
                        <td>$row[views]</td>
                        <td>$row[downloads]</td>
                        <td><a href=\"\" class=\"button is-warning\">
                                <span class=\"icon\">
                                    <i class=\"fa fa-edit\"></i>
                                </span>
                                <span>
                                <strong>
                                    Manage
                                </strong>
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
            <form action="action.php" method="post" enctype="multipart/form-data">
                <input type="hidden" name="action" value="add_rom">
                <div class="field">
                    <div class="file has-name">
                        <label class="file-label">
                            <input required class="file-input" onchange="handle_files(this,this.files)" data-target='rom-name' name="file" type="file" name="resume">
                            <span class="file-cta">
                                <span class="file-icon">
                                    <i class="fas fa-upload"></i>
                                </span>
                                <span class="file-label">
                                    Choose a file
                                </span>
                            </span>
                            <span class="file-name" id='rom-name'>
                                No file selected...
                            </span>
                        </label>
                    </div>
                </div>
                <div class="field">
                    <label class="label">Brand</label>
                    <div class="control">
                        <input class="input" name="brand" type="text" value="Samsung">
                    </div>
                </div>
                <div class="field">
                    <label class="label">Country</label>
                    <div class="control">
                        <input class="input" name="country" type="text" value="Egypt">
                    </div>
                </div>
                <div class="field">
                    <label class="label">Model</label>
                    <div class="control">
                        <input class="input" name="model" type="text" value="SM-3242">
                    </div>
                </div>
                <div class="field">
                    <label class="label">Build Version</label>
                    <div class="control">
                        <input class="input" name="build" type="text" value="7.22.18">
                    </div>
                </div>
                <div class="field">
                    <label class="label">Android Version</label>
                    <div class="control">
                        <input class="input" name="android" type="text" value="10">
                    </div>
                </div>
                <div class="field">
                    <label class="label">Price</label>
                    <div class="control">
                        <input class="input" name="price" type="number" value="100">
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