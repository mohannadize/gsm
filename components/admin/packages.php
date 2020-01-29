<h3 class="title">Subscription packages</h3>

<div class="columns is-vcentered is-multiline">
    <?php

    $sql = $db->query("SELECT * FROM plans");
    while ($row = $db->fetch_array($sql)) {
    ?>
        <div class="column is-3-desktop is-4-tablet is-12-mobile">
            <form onsubmit='edit_plan(this,event)'>
            <input class="input" name='data' value='<?php echo json_encode($row,JSON_UNESCAPED_UNICODE); ?>' type="hidden">
            <input class="input" name='id' value="<?php echo $row['id']; ?>" type="hidden">

                <div class="card">
                    <div class="card-image">
                        <div class="hero is-link" id='plan<?php echo $row['id']; ?>color' style="background-color: <?php echo $row['color']; ?>">
                            <div class="hero-body">
                                <div class="container">
                                    <h1 id='plan<?php echo $row['id']; ?>title' class="title"><?php echo $row['name']; ?>
                                    </h1>
                                    <h2 id='plan<?php echo $row['id']; ?>desc' class="subtitle"><?php echo $row['description']; ?>
                                    </h2>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card-content">
                        <div class="field">
                            <p class="control has-icons-left">
                                <input class="input" name='name' value="<?php echo $row['name']; ?>" onkeyup="document.getElementById('plan<?php echo $row['id']; ?>title').textContent = this.value;" type="text" placeholder="Name">
                                <span class="icon is-small is-left">
                                    <i class="fas fa-dice-d6"></i>
                                </span>
                            </p>
                        </div>
                        <div class="field">
                            <p class="control has-icons-left">
                                <input class="input" name='description' value="<?php echo $row['description']; ?>" onkeyup="document.getElementById('plan<?php echo $row['id']; ?>desc').textContent = this.value;" type="text" placeholder="Description">
                                <span class="icon is-small is-left">
                                    <i class="fas fa-angle-double-right"></i>
                                </span>
                            </p>
                        </div>
                        <div class="field">
                            <p class="control has-icons-left">
                                <input class="input" name='color' value="<?php echo $row['color']; ?>" onkeyup="document.getElementById('plan<?php echo $row['id']; ?>color').style.backgroundColor = this.value;" type="text" placeholder="Color (name or hex)">
                                <span class="icon is-small is-left">
                                    <i class="fas fa-tint"></i>
                                </span>
                            </p>
                        </div>
                        <div class="field">
                            <div class="control has-icons-left">
                                <div class="select">
                                    <select name='duration'>
                                        <option <?php echo $row['duration'] == '' ? 'selected' : ''; ?>>Duration</option>
                                        <option <?php echo $row['duration'] == '86400' ? 'selected' : '';
                                                echo " value='86400'" ?>>1 Day</option>
                                        <option <?php echo $row['duration'] == '604800' ? 'selected' : '';
                                                echo " value='604800'" ?>>1 Week</option>
                                        <option <?php echo $row['duration'] == '2592000' ? 'selected' : '';
                                                echo " value='2592000'" ?>>1 Month</option>
                                        <option <?php echo $row['duration'] == '7776000' ? 'selected' : '';
                                                echo " value='7776000'" ?>>3 Month</option>
                                        <option <?php echo $row['duration'] == '15552000' ? 'selected' : '';
                                                echo " value='15552000'" ?>>6 Month</option>
                                        <option <?php echo $row['duration'] == '31104000' ? 'selected' : '';
                                                echo " value='31104000'" ?>>1 Year</option>
                                        <option <?php echo $row['duration'] == '-1' ? 'selected' : '';
                                                echo " value='-1'" ?>>Unlimited</option>
                                    </select>
                                </div>
                                <div class="icon is-small is-left">
                                    <i class="fas fa-stopwatch"></i>
                                </div>
                            </div>
                        </div>
                        <div class="field">
                            <p class="control has-icons-left">
                                <input class="input" name='cap' value="<?php echo $row['cap']; ?>" type="text" placeholder="Download capacity">
                                <span class="icon is-small is-left">
                                    <i class="fas fa-tachometer-alt"></i>
                                </span>
                            </p>
                        </div>
                        <div class="field">
                            <p class="control has-icons-left">
                                <input class="input" name='price' value="<?php echo $row['price']; ?>" type="text" placeholder="Price">
                                <span class="icon is-small is-left">
                                    <i class="fas fa-money-bill-wave"></i>
                                </span>
                            </p>
                        </div>
                        <div class="field"><button class="button is-success" type="submit" style="margin-right: .5em">Save</button><button name='cancel' class="button">Cancel</button></div>
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