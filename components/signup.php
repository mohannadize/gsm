<section class="section">
    <div class="container">
        <h2 class="title">Sign up</h2>
        <div class="columns">
            <div class="column is-4 is-offset-2">
                <div class="card">
                    <form action="signup" method="post">

                        <div class="card-content">
                            <div class="field">
                                <label class="label">Username</label>
                                <div class="control"><input name="username" type="text" class="input"></div>
                            </div>
                            <div class="field">
                                <label class="label">Email</label>
                                <div class="control"><input name="email" type="email" class="input"></div>
                            </div>
                            <div class="field">
                                <label class="label">Password</label>
                                <div class="control"><input name="password" type="password" class="input"></div>
                            </div>
                            <div class="field">
                                <label class="label">Confirm password</label>
                                <div class="control"><input name="cpassword" type="password" class="input"></div>
                            </div>
                            <div class="field">
                                <div class="control">
                                    <label required class="checkbox">
                                        <input name='terms' type="checkbox">
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