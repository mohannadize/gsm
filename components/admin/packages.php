<div class="container">
    <h3 class="title rtl">الباقات</h3>
    <div class="columns is-vcentered is-multiline">
        <?php

        $sql = $db->query("SELECT * FROM plans WHERE `deactivated` = '0'");
        while ($row = $db->fetch_array($sql)) {
        ?>
            <div class="column is-3-desktop is-4-tablet is-12-mobile">
                <form onsubmit='edit_plan(this,event)'>
                    <input class="input rtl" name='data' value='<?php echo json_encode($row, JSON_UNESCAPED_UNICODE); ?>' type="hidden">
                    <input class="input rtl" name='id' value="<?php echo $row['id']; ?>" type="hidden">

                    <div class="card">
                        <div class="card-image">
                            <div class="hero is-link" id='plan<?php echo $row['id']; ?>color' style="background-color: <?php echo $row['color']; ?>">
                                <div class="hero-body">
                                    <div class="media">
                                        <div class="media-content">
                                            <h1 id='plan<?php echo $row['id']; ?>title' class="title has-text-right rtl"><?php echo $row['name']; ?>
                                            </h1>
                                            <h2 id='plan<?php echo $row['id']; ?>desc' class="subtitle has-text-right rtl"><?php echo $row['description']; ?>
                                            </h2>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card-content">
                            <div class="field">
                                <p class="control has-icons-right">
                                    <input class="input rtl" required name='name' value="<?php echo $row['name']; ?>" onkeyup="document.getElementById('plan<?php echo $row['id']; ?>title').textContent = this.value;" type="text" placeholder="اسم الباقة">
                                    <span class="icon is-small is-right">
                                        <i class="fas fa-dice-d6"></i>
                                    </span>
                                </p>
                            </div>
                            <div class="field">
                                <p class="control has-icons-right">
                                    <input class="input rtl" name='description' value="<?php echo $row['description']; ?>" onkeyup="document.getElementById('plan<?php echo $row['id']; ?>desc').textContent = this.value;" type="text" placeholder="الوصف">
                                    <span class="icon is-small is-right">
                                        <i class="fas fa-info"></i>
                                    </span>
                                </p>
                            </div>
                            <div class="field">
                                <p class="control has-icons-right">
                                    <input class="input" required name='color' value="<?php echo $row['color']; ?>" onchange="document.getElementById('plan<?php echo $row['id']; ?>color').style.backgroundColor = this.value;" type="color">
                                    <span class="icon is-small is-right">
                                        <i class="fas fa-tint"></i>
                                    </span>
                                </p>
                            </div>
                            <div class="field">
                                <div class="control has-icons-right">
                                    <div class="select">
                                        <select class="rtl is-fullwidth" name='duration' required>
                                            <option required hidden <?php echo $row['duration'] == '' ? 'selected' : ''; ?> value=''>مدة الاشتراك</option>
                                            <option <?php echo $row['duration'] == '86400' ? 'selected' : '';
                                                    echo " value='86400'" ?>>يوم</option>
                                            <option <?php echo $row['duration'] == '604800' ? 'selected' : '';
                                                    echo " value='604800'" ?>>اسبوع</option>
                                            <option <?php echo $row['duration'] == '2592000' ? 'selected' : '';
                                                    echo " value='2592000'" ?>>شهر</option>
                                            <option <?php echo $row['duration'] == '7776000' ? 'selected' : '';
                                                    echo " value='7776000'" ?>>3 شهور</option>
                                            <option <?php echo $row['duration'] == '15552000' ? 'selected' : '';
                                                    echo " value='15552000'" ?>>6 شهور</option>
                                            <option <?php echo $row['duration'] == '31104000' ? 'selected' : '';
                                                    echo " value='31104000'" ?>>سنه</option>
                                            <option <?php echo $row['duration'] == '-1' ? 'selected' : '';
                                                    echo " value='-1'" ?>>ﻻ محدود</option>
                                        </select>
                                    </div>
                                    <div class="icon is-small is-right">
                                        <i class="fas fa-stopwatch"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="field">
                                <p class="control has-icons-right">
                                    <input class="input rtl" required name='cap' value="<?php echo $row['cap'] / 1024 / 1024; ?>" type="text" placeholder="سعة التحميل">
                                    <span class="icon is-small is-right">
                                        <i class="fas fa-tachometer-alt"></i>
                                    </span>
                                </p>
                                <small class="has-text-info">in MegaBytes</small>
                            </div>
                            <div class="field">
                                <p class="control has-icons-right">
                                    <input class="input rtl" required name='price' value="<?php echo $row['price']; ?>" type="text" placeholder="سعر الباقة">
                                    <span class="icon is-small is-right">
                                        <i class="fas fa-dollar-sign"></i>
                                    </span>
                                </p>
                                <small class="has-text-info">in USD</small>
                            </div>
                            <div class="buttons">
                                <button class="button is-primary" type="submit" style="margin-right: .5em">حفظ</button>
                                <a class="button" onclick="delete_plan('<?php echo $row['id']; ?>')">
                                    <span class="icon has-text-danger"><i class="fa fa-trash"></i></span>
                                </a>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        <?php
        };

        ?>
        <div class="column is-3-desktop is-4-tablet is-12-mobile" id='addplan'>
            <a class='card is-block' onclick="view.new_plan(this)">
                <div class="card-image has-text-centered" style="padding-top: 75px;">
                    <span class="icon has-text-primary" style="font-size:75px;"><i class="fa fa-plus"></i></span>
                </div>
                <div class="card-content has-text-centered">
                    <div class="content">إضافة باقة جديدة</div>
                </div>
            </a>
        </div>
    </div>

</div>

<script>
    let view = {
        new_plan: function(elem) {
            elem.outerHTML = `
            <form action='action.php' method="post">
                <input type="hidden" name="action" value='add_new_plan'>
                    <div class="card">
                        <div class="card-image">
                            <div class="hero is-link" id='plan-new-color'>
                                <div class="hero-body">
                                    <div class="container">
                                        <h1 id='plan-new-title' class="title rtl">
                                        </h1>
                                        <h2 id='plan-new-desc' class="subtitle rtl">
                                        </h2>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card-content">
                            <div class="field">
                                <p class="control has-icons-right">
                                    <input required class="input rtl" name='name' onkeyup="document.getElementById('plan-new-title').textContent = this.value;" type="text" placeholder="اسم الباقة">
                                    <span class="icon is-small is-right">
                                        <i class="fas fa-dice-d6"></i>
                                    </span>
                                </p>
                            </div>
                            <div class="field">
                                <p class="control has-icons-right">
                                    <input class="input rtl" name='description' onkeyup="document.getElementById('plan-new-desc').textContent = this.value;" type="text" placeholder="Description">
                                    <span class="icon is-small is-right">
                                        <i class="fas fa-info"></i>
                                    </span>
                                </p>
                            </div>
                            <div class="field">
                                <p class="control has-icons-right">
                                    <input class="input" name='color' onchange="document.getElementById('plan-new-color').style.backgroundColor = this.value;" value='#22aaaa' type="color">
                                    <span class="icon is-small is-right">
                                        <i class="fas fa-tint"></i>
                                    </span>
                                </p>
                            </div>
                            <div class="field">
                                <div class="control has-icons-right">
                                    <div class="select">
                                        <select required class="rtl is-fullwidth" name='duration'>
                                            <option selected hidden value=''>مدة الاشتراك</option>
                                            <option value='86400'>يوم</option>
                                            <option value='604800'>اسبوع</option>
                                            <option value='2592000'>شهر</option>
                                            <option value='7776000'>3 شهور</option>
                                            <option value='15552000'>6 شهور</option>
                                            <option value='31104000'>سنه</option>
                                            <option value='-1'>ﻻ محدود</option>
                                        </select>
                                    </div>
                                    <div class="icon is-small is-right">
                                        <i class="fas fa-stopwatch"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="field">
                                <p class="control has-icons-right">
                                    <input required class="input rtl" name='cap' type="text" placeholder="سعة التحميل">
                                    <span class="icon is-small is-right">
                                        <i class="fas fa-tachometer-alt"></i>
                                    </span>
                                </p>
                                <small class="has-text-info">in MegaBytes</small>
                            </div>
                            <div class="field">
                                <p class="control has-icons-right">
                                    <input required class="input rtl" name='price' type="text" placeholder="سعر الباقة">
                                    <span class="icon is-small is-right">
                                        <i class="fas fa-dollar-sign"></i>
                                    </span>
                                </p>
                                <small class="has-text-info">in USD</small>
                            </div>
                            <div class="field"><button class="button is-primary" type="submit" style="margin-right: .5em">أضافة</button></div>
                        </div>
                    </div>
                </form>
            `
        }
    };

    function edit_plan(form, e) {
        e.preventDefault();
        data = {};
        data.action = 'edit_plan';
        [].slice.apply(form).filter(row => row.tagName != 'BUTTON').forEach(row => {
            data[row.name] = row.value
        })
        fetch("api.php", {
            method: "post",
            body: JSON.stringify(data)
        }).then(x => x.json()).then(x => {
            if (x[0]) {
                toast.success('Saved');
            }
        }).catch(err => {
            toast.alert('An Error has occured');
        });
    }

    function delete_plan(id) {
        let form = document.forms.delete_plan_form;
        form.plan_id.value = id;

        toggle_modal('delete_plan_modal');
    }
</script>

<div class="modal" id="delete_plan_modal">
    <div class="modal-background"></div>
    <div class="modal-card flipx">
        <div class="modal-card-head">
            <div class="modal-card-title flipx rtl">تنبيه</div>
            <a onclick='toggle_modal()' class="delete"></a>
        </div>
        <form action="action.php" method="post" id='delete_plan_form'>
            <div class="modal-card-body">
                <input type="hidden" name="action" value="delete_plan">
                <input type="hidden" name="plan_id">
                <div class="title is-5 flipx rtl">
                    هل انت متأكد انك تريد مسح هذه الباقة؟
                </div>
            </div>
            <div class="modal-card-foot flipx">
                <button class="button" type="submit">مسح</button>
                <a class="button is-danger" onclick="toggle_modal()">إلغاء</a>
            </div>
        </form>
    </div>
</div>