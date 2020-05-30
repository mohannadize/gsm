<form class="columns flipx rtl is-mobile is-multiline"  id='search_form' onsubmit="event.preventDefault()">
    <div class="column is-3">
        <div class="control has-icons-right">
            <input type="text" list="country" class="input rtl" name="country" onkeyup="search()" placeholder="البلد">
            <span class="icon is-right"><i class="fa fa-flag"></i></span>
            <datalist id='country'>
                <?php

                $query = $db->query("SELECT DISTINCT country as 'option' from files");
                while ($row = $db->fetch_array($query)) {
                    echo "<option value='$row[option]'>";
                }

                ?>
            </datalist>
        </div>
    </div>
    <div class="column is-3">
        <div class="control has-icons-right">
            <input type="text" name="android" onkeyup="search()" list="android" class="input rtl" placeholder="اصدار اندرويد">
            <span class="icon is-right"><i class="fab fa-android"></i></span>
            <datalist id='android'>
                <?php

                $query = $db->query("SELECT DISTINCT android_v as 'option' from files");
                while ($row = $db->fetch_array($query)) {
                    echo "<option value='$row[option]'>";
                }

                ?>
            </datalist>
        </div>
    </div>
    <div class="column is-3">
        <div class="control has-icons-right">
            <input type="text" list="model" class="input rtl" name="model" onkeyup="search()" placeholder="الموديل">
            <span class="icon is-right"><i class="fa fa-mobile"></i></span>
            <datalist id='model'>
                <?php

                $query = $db->query("SELECT DISTINCT model as 'option' from files");
                while ($row = $db->fetch_array($query)) {
                    echo "<option value='$row[option]'>";
                }

                ?>
            </datalist>
        </div>
    </div>
    <div class="column is-narrow">
        <div class="field">
            <a class="button ltr is-danger is-light" onclick="toggle_modal(this)" data-target="add_rom"><span class="icon">
                    <i class="fa fa-plus"></i>
                </span><span>
                    اضافة روم جديد
                </span>
            </a>
        </div>
    </div>
</form>
<div class="scrollable-table flipx" id='roms-table-admin'>
    <div class="has-text-centered">
        <button class="button is-link is-loading is-large" style="width:100px;"></button>
    </div>
</div>

<script>
    function search() {
        let form = document.forms.search_form;
        let search = `${form.model.value}|${form.country.value}|${form.android.value}`;
        fetch_rows('roms-table-admin', search);
    }
</script>