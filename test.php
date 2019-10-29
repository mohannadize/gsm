<?php

$search = "sau";
$res = $db->query("SELECT * from roms where `search_text` LIKE '%$search%'");

// $res = $db->fetch_array($res);
while ($row = $db->fetch_array($res)){
    var_dump($row);
}


exit;