<section class="section">
    <div class="container">
        <h2 class="title">Sign up</h2>
        <div class="columns">
            <div class="column is-4 is-offset-2">
                <div class="card">
                    <form action="action.php" method="post">
                        <input type="hidden" name="action" value="signup">
                        <div class="card-content">
                            <div class="field">
                                <label class="label">Full name</label>
                                <div class="control"><input required name="name" type="text" class="input"></div>
                            </div>
                            <div class="field">
                                <label class="label">Username</label>
                                <div class="control"><input required name="username" type="text" class="input"></div>
                            </div>
                            <div class="field">
                                <label class="label">Email</label>
                                <div class="control"><input required name="email" type="email" class="input"></div>
                            </div>
                            <div class="field">
                                <label class="label">Password</label>
                                <div class="control"><input required name="password" id='password' type="password" class="input"></div>
                            </div>
                            <div class="field">
                                <label class="label">Confirm password</label>
                                <div class="control"><input required onkeyup="verifypass(this)" name="cpassword" type="password" class="input"></div>
                                <p class="help is-danger" id='passhelper'></p>
                            </div>
                            <div class="field">
                                <div class="control">
                                    <label class="checkbox">
                                        <input required name='terms' type="checkbox">
                                        I agree to the <a href="#">terms and conditions</a>
                                    </label>
                                </div>
                            </div>
                            <button type="submit" class="button is-link">Sign up</button>
                        </div>
                    </form>
                    <div class="card-footer">
                        <div class="card-footer-item">
                            Already have an account? <a style='margin-left:.2em' href="login">Log in</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>