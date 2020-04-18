<div class="container">
    <h3 class="title">Subscription packages</h3>

    <div class="columns is-vcentered is-multiline">
        <?php

        $sql = $db->query("SELECT * FROM plans");
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
                                    <div class="container">
                                        <h1 id='plan<?php echo $row['id']; ?>title' class="title rtl"><?php echo $row['name']; ?>
                                        </h1>
                                        <h2 id='plan<?php echo $row['id']; ?>desc' class="subtitle rtl"><?php echo $row['description']; ?>
                                        </h2>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card-content">
                            <div class="field">
                                <p class="control has-icons-right">
                                    <input class="input rtl" name='name' value="<?php echo $row['name']; ?>" onkeyup="document.getElementById('plan<?php echo $row['id']; ?>title').textContent = this.value;" type="text" placeholder="Name">
                                    <span class="icon is-small is-right">
                                        <i class="fas fa-dice-d6"></i>
                                    </span>
                                </p>
                            </div>
                            <div class="field">
                                <p class="control has-icons-right">
                                    <input class="input rtl" name='description' value="<?php echo $row['description']; ?>" onkeyup="document.getElementById('plan<?php echo $row['id']; ?>desc').textContent = this.value;" type="text" placeholder="Description">
                                    <span class="icon is-small is-right">
                                        <i class="fas fa-angle-double-left"></i>
                                    </span>
                                </p>
                            </div>
                            <div class="field">
                                <p class="control has-icons-right">
                                    <input class="input" name='color' value="<?php echo $row['color']; ?>" onkeyup="document.getElementById('plan<?php echo $row['id']; ?>color').style.backgroundColor = this.value;" type="text" placeholder="Color (name or hex)">
                                    <span class="icon is-small is-right">
                                        <i class="fas fa-tint"></i>
                                    </span>
                                </p>
                            </div>
                            <div class="field">
                                <div class="control has-icons-right">
                                    <div class="select">
                                        <select required class="rtl" name='duration'>
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
                                    <input class="input rtl" name='cap' value="<?php echo $row['cap']; ?>" type="text" placeholder="Download capacity">
                                    <span class="icon is-small is-right">
                                        <i class="fas fa-tachometer-alt"></i>
                                    </span>
                                </p>
                                <small class="has-text-info">حجم الباقة بالميجابايت</small>
                            </div>
                            <div class="field">
                                <p class="control has-icons-right">
                                    <input class="input rtl" name='price' value="<?php echo $row['price']; ?>" type="text" placeholder="Price">
                                    <span class="icon is-small is-right">
                                        <i class="fas fa-money-bill-wave"></i>
                                    </span>
                                </p>
                            </div>
                            <div class="field"><button class="button is-primary" type="submit" style="margin-right: .5em">حفظ</button></div>
                        </div>
                    </div>
                </form>
            </div>
        <?php
        };

        ?>
        <div class="column is-3-desktop is-4-tablet is-12-mobile" id='addplan'>
            <a href="#">
                <div class="card">
                    <div class="card-image has-text-centered" style="padding-top: 75px;">
                        <span class="icon has-text-primary" style="font-size:75px;"><i class="fa fa-plus"></i></span>
                    </div>
                    <div class="card-content has-text-centered">
                        <div class="content">Add new plan</div>
                    </div>
                </div>
            </a>
        </div>
    </div>

</div>


<script>

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

</script>