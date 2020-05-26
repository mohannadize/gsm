<?php

$site_settings = $db->query("SELECT * from `site`");
$site_settings = $db->fetch_array($site_settings);

?>

<form action="https://sandbox.paypal.com/cgi-bin/webscr" method="post" id="dataForm">
  <input type="hidden" name="cmd" value="_xclick">
  <input type="hidden" name="business" value="<?php echo $site_settings['paypal']; ?>">
  <input type="hidden" name="lc" value="US">
  <input type="hidden" name="item_name" value="<?php echo "Subscription for Mobile Roms Website"; ?>">
  <input type="hidden" name="amount" value="<?php echo $price; ?>">
  <input type="hidden" name="currency_code" value="USD">
  <input type="hidden" name="button_subtype" value="services">
  <input type="hidden" name="no_note" value="0">
  <input type="hidden" name="tax_rate" value="0.000">
  <input type="hidden" name="bn" value="PP-BuyNowBF:btn_buynowCC_LG.gif:NonHostedGuest">
  <input type="hidden" name="notify_url" value="https://mohannad.website/gsm/listener/index.php?transaction_ref=<?php echo $transaction_ref; ?>">
  <input type="submit" id='submit_button' style="display: none" name="submit" src="https://www.paypalobjects.com/en_US/i/btn/btn_buynow_LG.gif" alt="PayPal - The safer, easier way to pay online">
</form>

<script>
  window.onload = () => {
    document.getElementById('submit_button').click();
  }
</script>