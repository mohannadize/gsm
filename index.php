<!DOCTYPE html>
<html lang="en" class="has-navbar-fixed-top">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title></title>
    <link rel="stylesheet" href="css/bulma.min.css">
    <link rel="stylesheet" href="css/main.css">
</head>

<body>
    <nav class="navbar is-fixed-top is-dark" role="navigation" aria-label="main navigation">
        <div class="navbar-brand">
            <a class="navbar-item" href="#">
                <h1 class="title is-4 has-text-white">
                    <span class="icon">
                        <i class="fa fa-mobile-alt"></i>
                    </span>
                    <span>
                        GSMGood
                    </span>
                </h1>
            </a>

            <a role="button" class="navbar-burger burger" onclick="togglenav(this)" aria-label="menu" aria-expanded="false" data-target="navmenu">
                <span aria-hidden="true"></span>
                <span aria-hidden="true"></span>
                <span aria-hidden="true"></span>
            </a>
        </div>

        <div id="navmenu" class="navbar-menu">
            <div class="navbar-start">
                <a class="navbar-item">
                    Home
                </a>

                <a class="navbar-item">
                    Roms
                </a>
            </div>

            <div class="navbar-end">
                <div class="navbar-item">
                    <div class="buttons">
                        <a class="button is-primary">
                            <strong>Sign up</strong>
                        </a>
                        <a class="button is-light">
                            Log in
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </nav>

    <section class="section">
        <div class="container">
            <h3 class="title">Rom Paradise</h3>

            <div class="columns">
                <div class="column is-5-tablet is-offset-3-tablet">
                    <input type="text" placeholder="Search" class="input">
                </div>
                <div class="column"><button class="button is-link">
                        <span>Search</span>
                        <span class="icon">
                            <i class="fa fa-search"></i>
                        </span>
                    </button></div>
            </div>
        </div>
    </section>
    <section class="section">
        <div class="container">
            <div class="scrollable-table">
                <table class="table is-fullwidth is-bordered is-striped is-rounded is-hoverable">
                    <thead>
                        <tr>
                            <th>Device</th>
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
                            <td><a href="" class="button is-primary">Download</a></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td><a href="" class="button is-primary">Download</a></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td><a href="" class="button is-primary">Download</a></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td><a href="" class="button is-primary">Download</a></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td><a href="" class="button is-primary">Download</a></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td><a href="" class="button is-primary">Download</a></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td><a href="" class="button is-primary">Download</a></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td><a href="" class="button is-primary">Download</a></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td><a href="" class="button is-primary">Download</a></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td><a href="" class="button is-primary">Download</a></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </section>


    <footer class="footer">
        <div class="content has-text-centered">
            <strong>Bulma</strong> by <a href="https://jgthms.com">Jeremy Thomas</a>. The source code is licensed
            <a href="http://opensource.org/licenses/mit-license.php">MIT</a>. The website content
            is licensed <a href="http://creativecommons.org/licenses/by-nc-sa/4.0/">CC BY NC SA 4.0</a>.
        </div>
    </footer>

    <script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
    <script src="js/main.js"></script>
</body>

</html>