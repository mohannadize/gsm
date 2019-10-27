<section class="section">
    <div class="container">
        <h2 class="title">Log in</h2>
        <div class="columns">
            <div class="column is-4 is-offset-2">
                <div class="card">
                    <form action="action.php" method="post">
                        <input type="hidden" name="action" value="login">
                        <div class="card-content">
                            <div class="field">
                                <label class="label">Username</label>
                                <div class="control"><input name='username' required type="text" class="input"></div>
                            </div>
                            <div class="field">
                                <label class="label">Password</label>
                                <div class="control"><input name="password" required type="password" class="input"></div>
                                <p class="help"><a href="#">Forget your password?</a></p>
                            </div>
                            <button type="submit" class="button is-link">Log in</button>
                        </div>
                    </form>
                    <div class="card-footer">
                        <div class="card-footer-item">
                            Don't have an account? <a style='margin-left:.2em' href="signup">Sign up</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>