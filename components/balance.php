<section class="section">
    <?php

    // var_dump($user_data);
    ?>
    <div class="container">
        <div class="columns">
            <div class="column is-4-tablet card">
                <div class="card-content">
                    <div class="title is-4">
                        Your balance
                    </div>
                    <div class="subtitle">
                        <?php echo bytes_to_human($user_data['balance']) ?>
                    </div>
                </div>
            </div>
            <div class="column is-4-tablet card">
                <div class="card-content">

                    <div class="title is-4">
                        Your daily free balance
                    </div>
                    <div class="subtitle">
                        <?php echo bytes_to_human($user_data['daily_balance']) ?>
                    </div>
                </div>
            </div>
        </div>
        <br>
        <div class="title">
            Add more
        </div>
        <form action="https://sandbox.paypal.com/cgi-bin/webscr" method="post" method="post">
            <input type="hidden">
            <input type="hidden" name="cmd" value="_xclick">
            <input type="hidden" name="business" value="<?php $settings['paypal']; ?>">
            <input type="hidden" name="lc" value="US">
            <input type="hidden" id='item_name' name="item_name">
            <input type="hidden" id='amount' name="amount">
            <input type="hidden" name="currency_code" value="USD">
            <input type="hidden" name="notify_url" value="">
            <div class="columns">
                <div class="column is-5-tablet">

                    <div class="field">
                        <label class="label">
                            <div class="control has-icons-left">
                                <input type="number" required onkeyup='calculate_paypal(this)' class="input" data-rate='<?php echo $settings['price']; ?>' data-item-name='item_name' data-target='amount' placeholder='Megabytes'>
                                <span class="icon is-left">
                                    <i class="fas fa-tachometer-alt"></i>
                                </span>
                            </div>
                            <span class="help"><?php echo number_format($settings['price'],2); ?>$ per 1GB</span>
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