<div class="container section" style="min-height: 70vh;">
    <h2 class="title rtl">طلب اضافة روم</h2>
    <div class="columns">
        <div class="column is-4 is-offset-8  has-text-right">
            <form action='action.php' method="POST">
                <input type="hidden" name="action" value='request_rom'>
                <div class="field">
                    <label class="label rtl">موديل الجهاز<span class="has-text-danger">*</span></label>
                    <div class="control has-icons-right">
                        <input required name='model' type="text" class="input">
                        <span class="icon is-right"><i class="fa fa-mobile"></i></span>
                    </div>
                </div>
                <div class="field">
                    <label class="label">البلد</label>
                    <div class="control has-icons-right">
                        <input name='country' type="text" class="input">
                        <span class="icon is-right"><i class="fa fa-flag"></i></span>
                    </div>
                </div>
                <div class="field">
                    <label class="label">رقم الاصدار</label>
                    <div class="control has-icons-right">
                        <input name="build_v" type="text" class="input">
                        <span class="icon is-right"><i class="fa fa-hashtag"></i></span>
                    </div>
                </div>
                <div class="field">
                    <label class="label">اصدار اندرويد</label>
                    <div class="control has-icons-right">
                        <input name='android_v' type="text" class="input">
                        <span class="icon is-right"><i class="fab fa-android"></i></span>
                    </div>
                </div>
                <div class="field">
                    <label class="label rtl">بريدك الالكتروني<span class="has-text-danger">*</span></label>
                    <div class="control has-icons-right">
                        <input required name='email' type="email" <?php if($logged_in) echo "value='$logged_in[email]' disabled" ?> class="input">
                        <span class="icon is-right"><i class="fa fa-at"></i></span>
                    </div>
                </div>
                <div class="field">
                    <label class="label">رسالة</label>
                    <div class="control">
                        <textarea name="message" type="text" class="textarea"></textarea>
                    </div>
                </div>
                <div class="field">
                    <button class="button is-info">
                        <span class="icon"><i class="fa fa-paper-plane"></i></span>
                        <span>ارسال</span>
                    </button>
                </div>
            </form>
        </div>
    </div>
</div>