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
                    <a onclick='tabchange(this)' data-target="users">
                        <span class="icon is-small"><i class="fas fa-users" aria-hidden="true"></i></span>
                        <span>Users</span>
                    </a>
                </li>
            </ul>
        </div>
    </div>
    <br>
    <div class="container tab" id="manage-roms">
        <div class="columns">
            <div class="column is-3-tablet is-4-desktop">
                <div class="field">
                    <div class="file is-danger">
                        <label for="file" class="file-label">
                            <input type="file" name="file" class="file-input">
                            <span class="file-cta">
                                <span class="file-icon">
                                    <i class="fas fa-upload"></i>
                                </span>
                                <span class="file-label">
                                    Add a new rom
                                </span>
                            </span>
                        </label>
                    </div>
                </div>
            </div>
            <div class="column is-3-tablet is-9-mobile is-inline-block">
                <input type="text" placeholder="Search" class="input">
            </div>
            <div class="column is-2-mobile is-inline-block">
                <button class="button is-link">
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
                        <th>Pirce</th>
                        <th>Updated</th>
                        <th>Views</th>
                        <th>Downloads</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th>Sasmsung</th>
                        <td>Egypt</td>
                        <td>SM-8123</td>
                        <td>8.02.213</td>
                        <td>10</td>
                        <td>100 Pts</td>
                        <td>21-2-2022</td>
                        <td>15</td>
                        <td>40</td>
                        <td><a href="" class="button is-warning"><strong>Manage</strong></a></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
    <div class="container tab is-active" id="website-settings">
        <h2 class="title">Website Settings</h2>

        <form action="#" method="post">
            <div class="columns">
                <div class="column is-6-tablet">
                    <div class="field">
                        <label class="switch is-warning">
                            <input type="checkbox">
                            <div class="switch-body"></div>
                            <span>Development mode</span>
                        </label>
                    </div>

                    <div class="field">
                        <label class="label">Website Name</label>
                        <div class="control">
                            <input class="input" type="text" value="GSMGood">
                        </div>
                    </div>

                    <div class="field">
                        <label class="label">Site URL</label>
                        <div class="control has-icons-left has-icons-right">
                            <input class="input" type="text">
                            <span class="icon is-small is-left">
                                <i class="fas fa-link"></i>
                            </span>
                        </div>
                    </div>

                    <div class="field">
                        <label class="label">Site Description</label>
                        <div class="control">
                            <textarea class="textarea" placeholder="..."></textarea>
                        </div>
                    </div>

                    <div class="field">
                        <label class="label">Email</label>
                        <div class="control has-icons-left has-icons-right">
                            <input class="input" type="email" value="example@email.com">
                            <span class="icon is-small is-left">
                                <i class="fas fa-envelope"></i>
                            </span>
                        </div>
                    </div>

                    <label class="label">Logo </label>
                    <div class="field">
                        <label class="switch is-info">
                            <input type="checkbox" checked="checked">
                            <div class="switch-body"></div>
                            <span>Logo as text</span>
                        </label>
                    </div>

                    <div class="field">
                        <div class="file is-danger">
                            <label for="file" class="file-label">
                                <input type="file" name="file" class="file-input">
                                <span class="file-cta">
                                    <span class="file-icon">
                                        <i class="fas fa-image"></i>
                                    </span>
                                    <span class="file-label">
                                        Logo upload
                                    </span>
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="field">
                        <label class="label">Daily rewards amount</label>
                        <div class="control">
                            <input class="input" type="number" value="GSMGood">
                        </div>
                    </div>
                    <div class="field">
                        <label class="switch is-info">
                            <input type="checkbox">
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
    <div class="container tab" id="users">
        <div class="title">All users</div>
    </div>
</section>