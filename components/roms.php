<script>
    window.onload = () => {
        let params = new URLSearchParams(location.href.split("?")[1]);
        if (params.has("s")) {
            fetch_rows('roms-table', params.get("s"));
            let search = params.get('s').split("|");
            document.forms.search_form.model.value = search[0]
            document.forms.search_form.country.value = search[1]
            document.forms.search_form.android.value = search[2]
        } else {
            fetch_rows('roms-table');
        }
    }
</script>

<section class="section">
    <div class="container">
        <form class='columns' style="width:700px; max-width:100%;margin:auto" id="search_form" onsubmit="table_search('roms-table',event)">
            <div class="is-hidden">
                <input name='s' onchange="document.forms.search_form.submit.click()" type="hidden">
                <button type='submit' name='submit' class="button is-link is-light">
                </button>
            </div>
            <div class="column is-4">
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
            <div class="column is-4">
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
            <div class="column is-4">
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
        </form>
        <div class="scrollable-table" style="transform:scale(0.95)" id='roms-table'>
            <div class="has-text-centered">
                <button class="button is-link is-loading is-large" style="width:100px;"></button>
            </div>
        </div>
    </div>
</section>

<script>

function search() {
    let form = document.forms.search_form;
    let search = `${form.model.value}|${form.country.value}|${form.android.value}`;
    fetch_rows('roms-table',search);
}

</script>