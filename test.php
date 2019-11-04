<?php

$res = $db->query("SELECT * from files where `id`='2'");
$res = $db->fetch_array($res);

// date_create()
var_dump(gmdate("Y-m-d",date_timestamp_get(date_create($res['created']))));


exit;