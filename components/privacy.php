<?php

include "functions/Parsedown.php";

$Parsedown = new Parsedown();

$text = $db->query("SELECT text from privacy");
$text = $db->fetch_array($text)['text'];


?>

<div class="container section">
    <div class="content rtl">
        <h3 class="title is-3">سياسة الخصوصية</h3>
        <?php if ($logged_in && $logged_in['admin']) { ?>
            <form action="action.php" method="post">
                <input type="hidden" name="action" value="edit_privacy">
                <div class="columns">
                    <div class="column is-6">
                        <div class="title">تعديل</div>
                        <div class="field">

                            <textarea onkeyup="document.getElementById('privacy_perview').innerHTML = marked( this.value );" class='textarea' name="text" rows="30"><?php echo $text; ?></textarea>
                        </div>
                        <div class="field has-text-left">

                            <button class="button is-info ltr">
                                <span>حفظ</span>
                                <span class="icon"><i class="fa fa-save"></i></span>
                            </button>
                        </div>
                    </div>
                    <div class="column is-6">
                        <div class="title">معاينه</div>
                        <div class="card">
                            <div class="card-content">
                                <div class="content rtl" id="privacy_perview"><?php echo $Parsedown->text($text); ?></div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
            <script src="https://cdn.jsdelivr.net/npm/marked/marked.min.js"></script>
        <?php } else { ?>
            <?php echo $Parsedown->text($text); ?>
        <?php } ?>
    </div>
</div>