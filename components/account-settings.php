<form action="action.php" method="post">
    <input type="hidden" name="action" value='modify_user'>
    <input type="hidden" name="id" value='<?php echo $user_data['id']; ?>'>
    <div class="columns flipx">
        <div class="column is-6-tablet">

            <div class="field flipx rtl">
                <label class="label">اسم المستخدم</label>
                <div class="control">
                    <input required class="input" name='username' type="text" value="<?php echo $user_data['username']; ?>">
                </div>
            </div>

            <div class="field flipx rtl">
                <label class="label">البريد الالكتروني</label>
                <div class="control has-icons-right">
                    <input required name="email" class="input" type="email" value="<?php echo $user_data['email']; ?>">
                    <span class="icon is-small is-right">
                        <i class="fas fa-envelope"></i>
                    </span>
                </div>
            </div>
            <div class="field flipx rtl">
                <label class="label">كلمة سر جديدة</label>
                <div class="control">
                    <input class="input" id='password' name='password' type="password">
                </div>
            </div>
            <div class="field flipx rtl">
                <label class="label">تأكيد كلمة السر الجديدة</label>
                <div class="control">
                    <input class="input" onkeyup="verifypass(this)" name='cpassword' type="password">
                </div>
                <p class="help is-danger" id='passhelper'></p>

            </div>

            <div class="field flipx is-grouped">
                <div class="control">
                    <button type='submit' class="button is-danger">حفظ</button>
                </div>
            </div>
        </div>
</form>