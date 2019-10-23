<!DOCTYPE html>
<html lang="en" class='has-navbar-fixed-top'>

<head>
    <?php include "components/head.php"; ?>
</head>

<body>
    <?php include "components/header.php"; ?>
    <section class="section">
        <div class="container">
            <h2 class="title">Sign up</h2>
            <div class="columns">
                <div class="column is-4 is-offset-2">
                    <div class="card">
                        <form action="#" method="post">

                            <div class="card-content">
                                <div class="field">
                                    <label class="label">Username</label>
                                    <div class="control"><input type="text" class="input"></div>
                                </div>
                                <div class="field">
                                    <label class="label">Email</label>
                                    <div class="control"><input type="email" class="input"></div>
                                </div>
                                <div class="field">
                                    <label class="label">Password</label>
                                    <div class="control"><input type="password" class="input"></div>
                                </div>
                                <div class="field">
                                    <label class="label">Confirm password</label>
                                    <div class="control"><input type="password" class="input"></div>
                                </div>
                                <button type="submit" class="button is-link">Sign up</button>
                            </div>
                        </form>
                        <div class="card-footer">
                            <div class="card-footer-item">
                                Already have an account? <a style='margin-left:.2em' href="login.php">Log in</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <?php

    include "components/footer.php";

    include "components/scripts.php";

    ?>
</body>

</html>