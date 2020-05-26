<section class="section">
    <div class="container">

        <div>
            <?php if ($user_data['plan'] == 0) {

                $pending_subscription = check_pending_subscription($logged_in, $db);
                if ($pending_subscription) { ?>
                    <div class="columns is-vcentered rtl">
                        <div class="column is-narrow">
                            <div class="title is-5">حالة اشتراكك في باقة</div>
                        </div>
                        <div class="column is-narrow">
                            <div class="control">
                                <button class="button is-medium is-primary" style="background-color: <?php echo $pending_subscription['color']; ?>"><?php echo $pending_subscription['name']; ?></button>
                            </div>
                        </div>
                        <div class="column is-narrow ltr">
                            <div class="field has-addons">
                                <div class="control">
                                    <button class="button is-medium">
                                        بإنتظار تأكيد اشتراكك
                                    </button>
                                </div>
                                <div class="control">
                                    <button class="button is-medium is-primary is-loading"></button>
                                </div>
                            </div>
                        </div>
                        <div class="column is-narrow ltr">
                            <div class="field has-addons">
                                <div class="control">
                                    <button onclick='copyText("<?php echo $pending_subscription['ref']; ?>")' class="button is-medium">
                                        <?php echo $pending_subscription['ref']; ?>
                                    </button>
                                </div>
                                <div class="control">
                                    <button class="button is-medium is-warning">رقم المراجعة</button>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php } else { ?>
                    <div class="title is-5 rtl">
                        لا توجد باقة مفعله على حسابك
                    </div>
                <?php }
            } else {
                $plan = $db->query("SELECT `name`,`color` from plans where `id` = '$user_data[plan]' ");
                $plan = $db->fetch_array($plan);
                ?>
                <div class="columns is-vcentered rtl">
                    <div class="column is-narrow">
                        <div class="title is-5">انت حاليا على باقة</div>
                    </div>
                    <div class="column is-narrow">
                        <div class="control">
                            <button class="button is-medium is-primary" style="background-color: <?php echo $plan['color']; ?>"><?php echo $plan['name']; ?></button>
                        </div>
                    </div>
                    <div class="column is-narrow ltr">
                        <div class="field has-addons">
                            <div class="control">
                                <button class="button is-medium">
                                    <? echo bytes_to_human($user_data['balance']); ?>
                                </button>
                            </div>
                            <div class="control">
                                <button class="button is-medium is-primary">رصيدك</button>
                            </div>
                        </div>
                    </div>
                </div>
            <?php } ?>
        </div>

        <hr>
        <h3 class="title rtl is-2">الباقات</h3>

        <div class="columns is-vcentered is-multiline">
            <?php

            $sql = $db->query("SELECT * FROM plans WHERE `deactivated`='0'");
            while ($row = $db->fetch_array($sql)) {
            ?>
                <div class="column is-3-desktop is-4-tablet is-12-mobile">
                    <form action="action.php" method="post">
                        <input class="input" name='data' value='<?php echo json_encode($row, JSON_UNESCAPED_UNICODE); ?>' type="hidden">
                        <input class="input" name='plan_id' value="<?php echo $row['id']; ?>" type="hidden">
                        <input class="input" name='action' value="plan_subscribe" type="hidden">

                        <div class="card">
                            <div class="card-image">
                                <div class="hero is-link" id='plan<?php echo $row['id']; ?>color' style="background-color: <?php echo $row['color']; ?>">
                                    <div class="hero-body">
                                        <div class="media">
                                            <div class="media-content">
                                                <h1 id='plan<?php echo $row['id']; ?>title' class="title rtl"><?php echo $row['name']; ?>
                                                </h1>
                                                <h2 id='plan<?php echo $row['id']; ?>desc' class="subtitle rtl"><?php echo $row['description']; ?>
                                                </h2>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card-content">
                                <div class="media flipx">
                                    <div class="media-left">
                                        <i class="has-text-info fas fa-stopwatch"></i>
                                    </div>
                                    <div class="media-content flipx rtl">
                                        <?php echo duration_to_human($row['duration']); ?>
                                    </div>
                                </div>
                                <div class="media flipx">
                                    <div class="media-left">
                                        <i class="has-text-info fas fa-tachometer-alt"></i>
                                    </div>
                                    <div class="media-content flipx rtl">
                                        <?php echo ((float) $row['cap']) == -1 ? "ﻻ محدود" : bytes_to_human($row['cap']); ?>
                                    </div>
                                </div>
                                <div class="media flipx">
                                    <div class="media-left">
                                        <i class="has-text-info fas fa-money-bill-wave"></i>
                                    </div>
                                    <div class="media-content flipx rtl">
                                        <?php echo (float) $row['price'] ? "USD " . $row['price'] : "مجانا!"; ?>
                                    </div>
                                </div>
                                <div class="field">
                                    <?php if ($pending_subscription) { ?>
                                        <button class="button is-info is-light" type="button" onclick="if (confirm('هل ترغب في إلغاء اشتراكك السابق و الاشتراك في هذه الباقه؟')) document.getElementById('plan<?php echo $row['id']; ?>submit').click()" style="margin-right: .5em">اشتراك</button>
                                        <button name="submit" type="submit" id='plan<?php echo $row['id']; ?>submit' style="position: absolute; pointer-events:none; opacity:0">اشتراك</button>
                                    <?php } else { ?>
                                        <button class="button is-info is-light" type="submit" style="margin-right: .5em">اشتراك</button>
                                    <?php } ?>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            <?php
            };

            ?>
        </div>









        <form action="https://sandbox.paypal.com/cgi-bin/webscr" style='display:none' method="post" method="post">
            <input type="hidden">
            <input type="hidden" name="cmd" value="_xclick">
            <input type="hidden" name="business" value="<?php echo $settings['paypal']; ?>">
            <input type="hidden" name="lc" value="EG">
            <input type="hidden" id='item_name' name="item_name">
            <input type="hidden" id='amount' name="amount">
            <input type="hidden" name="currency_code" value="USD">
            <input type="hidden" name="notify_url" value="">
            <input type="hidden" name="button_subtype" value="services">
            <input type="hidden" name="no_note" value="0">
            <input type="hidden" name="tax_rate" value="0.000">
            <input type="hidden" name="shipping" value="0.00">
            <div class="columns">
                <div class="column is-5-tablet">

                    <div class="field">
                        <label class="label">
                            <div class="control has-icons-left">
                                <input type="number" required onkeyup='calculate_paypal(this)' class="input" data-rate='<?php echo $settings['price']; ?>' data-item-name='item_name' data-target='amount' placeholder='Gigabytes'>
                                <span class="icon is-left">
                                    <i class="fas fa-tachometer-alt"></i>
                                </span>
                            </div>
                            <span class="help"><?php echo number_format($settings['price'], 2); ?>$ per 1GB</span>
                        </label>
                    </div>
                    <div class="field">
                        <button type="submit" class="button is-warning">
                            <span class="icon"><i class="fab fa-paypal"></i></span>
                            <span>Checkout</span>
                        </button>
                    </div>
                </div>
            </div>
        </form>

    </div>
</section>