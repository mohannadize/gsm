<section class="section">
    <div class="container">
        <h2 class="title rtl">تسجيل الدخول</h2>
        <div class="columns flipx">
            <div class="column flipx is-4 is-offset-2">
                <div class="card rtl">
                    <form action="action.php" method="post">
                        <input type="hidden" name="action" value="login">
                        <div class="card-content">
                            <div class="field">
                                <label class="label">اسم المستخدم او البريد الالكتروني</label>
                                <div class="control"><input name='username' required type="text" class="input"></div>
                            </div>
                            <div class="field">
                                <label class="label">كلمة المرور</label>
                                <div class="control"><input name="password" required type="password" class="input"></div>
                                <p class="help"><a href="#">نسيت كلمة السر؟</a></p>
                            </div>
                            <button type="submit" class="button is-dark">تسجيل الدخول</button>
                        </div>
                    </form>
                    <div class="card-footer">
                        <div class="card-footer-item">
                            ليس لديك حساب؟ <a style='margin-right:.2em' href="signup">انشئ حساب جديد</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>