<h2 class="title flipx rtl">لوحة اعدادات الموقع</h2>

<form action="action.php" method="post">
    <input type="hidden" name="action" value='update_site'>
    <div class="columns">
        <div class="column is-6-tablet">
            <div class="field rtl flipx">
                <input id="maintainance" type="checkbox" name="maintainance" class="switch is-rounded is-danger" <?php echo $settings['maintainance'] ? "checked" : ''; ?>>
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
            <div class="field rtl flipx">
                <input id="logo_as_text" type="checkbox" name="logo_as_text" class="switch is-rounded" <?php echo $settings['logo_as_text'] ? "checked" : ''; ?>>
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
                    <input required name="email" class="input" type="email" value="<?php echo $settings['email']; ?>">
                    <span class="icon is-small is-right">
                        <i class="fas fa-envelope"></i>
                    </span>
                </div>
            </div>

            <div class="field flipx rtl">
                <label class="label ltr has-text-right">Paypal بريد</label>
                <div class="control has-icons-right">
                    <input required class="input" name='paypal' type="email" value="<?php echo $settings['paypal']; ?>">
                    <span class="icon is-small is-right">
                        <i class="fab fa-paypal"></i>
                    </span>
                </div>
            </div>

            <div class="field flipx rtl is-hidden">
                <label class="label">السعر</label>
                <div class="control has-icons-right">
                    <input required class="input" name='price' step="0.01" type="number" value="<?php echo $settings['price']; ?>">
                    <span class="icon is-small is-right">
                        <i class="fa fa-dollar-sign"></i>
                    </span>
                </div>
                <div class="help is-primary rtl">لكل 1GB بالدولار</div>
            </div>

            <div class="field flipx rtl is-hidden">
                <label class="label">الحد المجاني اليومي</label>
                <div class="control">
                    <input required class="input" name="daily_free" step='0.01' type="number" value="<?php echo $settings['daily_free'] / 1024 / 1024; ?>">
                </div>
                <div class="help is-link">in MegaBytes</div>
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