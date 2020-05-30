<h2 class="title flipx rtl">لوحة اعدادات الموقع</h2>

<form action="action.php" method="post">
    <input type="hidden" name="action" value='update_site'>
    <div class="columns">
        <div class="column is-6-tablet">
            <div class="field rtl flipx">
                <input id="maintainance" type="checkbox" name="maintainance" class="switch is-rtl is-rounded is-danger" <?php echo $settings['maintainance'] ? "checked" : ''; ?>>
                <label for="maintainance">طور التطوير</label>
            </div>

            <div class="field flipx rtl">
                <label class="label">عنوان الموقع</label>
                <div class="control has-icons-right">
                    <input required class="input" name='site-name' type="text" value="<?php echo $settings['site-name']; ?>">
                    <span class="icon is-right"><i class="fa fa-globe"></i></span>
                </div>
            </div>

            <label class="label flipx rtl">لوجو الموقع </label>
            <div class="field">
                <a class="button flipx is-warning" onclick="toggle_modal(this)" data-target="upload_logo">
                    <span class="icon"><i class="fa fa-upload"></i></span>
                    <span>
                        ارفع
                    </span></a>
            </div>
            <br>
            <div class="field rtl flipx">
                <input id="logo_as_text" type="checkbox" name="logo_as_text" class="switch is-rtl is-rounded" <?php echo $settings['logo_as_text'] ? "checked" : ''; ?>>
                <label for="logo_as_text">استخدام عنوان الموقع كلوجو</label>
            </div>

            <div class="field flipx rtl">
                <label class="label">نبذه عن الموقع</label>
                <div class="control">
                    <textarea name='description' class="textarea"><?php echo $settings['description']; ?></textarea>
                </div>
            </div>

            <div class="field flipx rtl">
                <label class="label">البريد الالكتروني</label>
                <div class="control has-icons-right">
                    <input required name="email" class="input ltr" type="email" value="<?php echo $settings['email']; ?>">
                    <span class="icon is-small is-right">
                        <i class="fas fa-envelope"></i>
                    </span>
                </div>
            </div>
            <div class="field flipx rtl">
                <label class="label">البريد الالكتروني للتواصل</label>
                <div class="control has-icons-right">
                    <input required name="contact_email" class="input ltr" type="email" value="<?php echo $settings['contact_email']; ?>">
                    <span class="icon is-small is-right">
                        <i class="fas fa-envelope"></i>
                    </span>
                </div>
                <small>هذا البريد سوف ترسل عليه الرسائل من صفحة اتصل بنا او اي رد على الرسائل المرسله اوتوماتيكيا</small>
            </div>

            <div class="field flipx rtl">
                <label class="label ltr has-text-right">PayPal بريد</label>
                <div class="control has-icons-right">
                    <input required class="input ltr" name='paypal' type="email" value="<?php echo $settings['paypal']; ?>">
                    <span class="icon is-small is-right">
                        <i class="fab fa-paypal"></i>
                    </span>
                </div>
            </div>
            <div class="field flipx rtl">
                <label class="label ltr has-text-right">رابط الموقع</label>
                <div class="control has-icons-right has-text-right">
                    <input required class="input ltr" name='url' type="text" value="<?php echo $settings['url']; ?>">
                    <span class="icon is-small is-right">
                        <i class="fa fa-link"></i>
                    </span>
                    <small class="has-text-info">ضروري من اجل ان يعمل Paypal بطريقة صحيحة</small><br>
                    <small class="has-text-danger">ضع "/" في اخر الرابط</small>
                </div>
            </div>

            <div class="field is-grouped flipx">
                <div class="control">
                    <button class="button is-link" type="submit">حفظ</button>
                </div>
                <div class="control">
                    <a href="#" class="button is-link is-light">الغاء</a>
                </div>
            </div>
        </div>
    </div>
</form>