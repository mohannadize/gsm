<div class="container section">
    <div class="content rtl">
        <div class="title">تواصل معنا</div>
        <div class="columns">
            <div class="column is-6">
                <form action="action.php" method="POST">
                    <input type="hidden" name="action" value="contact_form">
                    <div class="field">
                        <label for="name" class="label">الأسم<span class="has-text-danger">*</span></label>
                        <div class="control has-icons-left">
                            <input required name='name' type="text" class="input">
                            <span class="icon is-left">
                                <i class="fa fa-user"></i>
                            </span>
                        </div>
                    </div>
                    <div class="field">
                        <label for="email" class="label">البريد الإلكتروني'<span class="has-text-danger">*</span></label>
                        <div class="control has-icons-left">
                            <input required name='email' type="email" class="input">
                            <span class="icon is-left">
                                <i class="fa fa-envelope"></i>
                            </span>
                        </div>
                    </div>
                    <div class="field">
                        <label for="subject" class="label">موضوع الرسالة<span class="has-text-danger">*</span></label>
                        <div class="control has-icons-left">
                            <input required name='subject' type="text" class="input">
                            <span class="icon is-left">
                                <i class="fa fa-angle-double-right"></i>
                            </span>
                        </div>
                    </div>
                    <div class="field">
                        <label class="label">الرسالة<span class="has-text-danger">*</span></label>
                        <div class="control">
                            <textarea required name='message' class="textarea"></textarea>
                        </div>
                    </div>
                    <div class="field">
                        <div class="control">
                            <button type='submit' class="button ltr is-success is-light">
                                <span class="icon">
                                    <i class="fa fa-paper-plane"></i>
                                </span>
                                <span>ارسل</span>
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>