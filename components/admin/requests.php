<div class="scrollable-table">
    <table class="table rtl is-fullwidth is-bordered is-hoverable">
        <thead>
            <tr>
                <th>الموديل</th>
                <th>البلد</th>
                <th>رقم الاصدار</th>
                <th>اصدار اندرونيد</th>
                <th>البريد الالكتروني</th>
                <th>الرساله</th>
                <th>التاريخ</th>
                <th>مسح</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <?php

                $query = $db->query("SELECT * from requests order by id desc");
                if (!$db->num_rows($query)) {
                    echo "<td colspan='1000'>ﻻ يوجد طلبات</td>";
                }

                while ($row = $db->fetch_array($query)) {
                    $date = substr($row['date'],0,10);
                    echo "
                    <td>$row[model]</td>
                    <td>$row[country]</td>
                    <td>$row[build_v]</td>
                    <td>$row[android_v]</td>
                    <td>$row[email]</td>
                    <td>$row[message]</td>
                    <td>$date</td>
                    <td><a onclick='document.getElementById(\"request_id_delete\").value = \"$row[id]\";toggle_modal(\"delete_request\")' class='button has-text-danger'><i class='fa fa-trash'></i></a></td>
                    ";
                }
                ?>
            </tr>
        </tbody>
    </table>
</div>

<div class="modal flipx" id='delete_request'>
    <div class="modal-background"></div>
    <div class="modal-card">
        <header class="modal-card-head">
            <p class="modal-card-title flipx rtl">
                تنبيه
            </p>
            <button class="delete" aria-label="close" onclick="toggle_modal(this)" data-target="delete_file"></button>
        </header>
        <section class="modal-card-body">
            <form action="action.php" method="post">
                <input type="hidden" name="action" value="delete_request">
                <input type="hidden" name="id" id='request_id_delete'>
                <div class="title is-5 flipx rtl">
                    هل انت متأكد انك تريد مسح هذا الطلب؟
                </div>
        </section>
        <footer class="modal-card-foot flipx">
            <button class="button" type="submit">مسح</button>
            </form>
            <button class="button is-danger" onclick="toggle_modal(this)" data-target="delete_file">إلغاء</button>
        </footer>
    </div>
</div>