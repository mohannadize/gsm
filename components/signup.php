<section class="section">
    <div class="container flipx">
        <h2 class="title flipx rtl">تسجيل حساب جديد</h2>
        <div class="columns">
            <div class="column is-4 is-offset-2">
                <div class="card">
                    <form action="action.php" method="post">
                        <input type="hidden" name="action" value="signup">
                        <div class="card-content">
                            <div class="field flipx rtl">
                                <label class="label">الاسم الكامل</label>
                                <div class="control"><input required name="name" type="text" class="input"></div>
                            </div>
                            <div class="field flipx rtl">
                                <label class="label">اسم المستخدم</label>
                                <div class="control"><input required name="username" type="text" class="input"></div>
                            </div>
                            <div class="field flipx rtl">
                                <label class="label">البريد الالكتروني</label>
                                <div class="control"><input required name="email" type="email" class="input"></div>
                            </div>
                            <div class="field flipx rtl">
                                <label class="label">كلمة السر</label>
                                <div class="control"><input required name="password" id='password' type="password" class="input"></div>
                            </div>
                            <div class="field flipx rtl">
                                <label class="label">تأكيد كلمة السر</label>
                                <div class="control"><input required onkeyup="verifypass(this)" name="cpassword" type="password" class="input"></div>
                                <p class="help is-danger" id='passhelper'></p>
                            </div>
                            <div class="field flipx rtl">
                                <div class="control">
                                    <label class="checkbox">
                                        <input required name='terms' type="checkbox">
                                        انا اوافق على  <a href="#">الشروط و الاحكام</a>
                                    </label>
                                </div>
                            </div>
                            <button type="submit" class="button is-success flipx">إنشاء حساب</button>
                        </div>
                    </form>
                    <div class="card-footer">
                        <div class="card-footer-item flipx rtl">
                            لديك حساب بالفعل؟ <a style='margin-right:.2em' href="login">تسجيل الدخول</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>