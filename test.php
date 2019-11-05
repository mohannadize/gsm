<?php

$res = $db->query("SELECT model,build_v,android_v,security_level,size,country,created,downloads from files");

$array = [];

while ($row = $db->fetch_array($res)) {
    array_push($array,$row);
}

echo json_encode($array);
exit;