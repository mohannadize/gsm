<?php

include "functions/database.php";
include "functions/functions.php";

echo send_email('successful_subscription', [], $db);