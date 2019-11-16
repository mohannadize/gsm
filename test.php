<?php
$models = [
    "SM-T810",
    "SM-T560",
    "SM-W720",
    "SM-N800",
    'SM-P900',
    "SM-T670"
];
$countries = [
    "KSA",
    "Egypt",
    "USA",
    "Hong Kong",
    "Qatar",
    "Turkey",
    "Australia",
    "Canada"
];
$builds = [
    'G532FXWU1ASB1',
    'KHJU234SdE211',
    'PSUEW12L90UY1',
    'PPW899UYTQSAW',
    'V23SQPMXJAWQK',
    'O98UQWKSAQATA',
    'OPU2357765CAT',
    'KITTY8642069P'
];
$androids = [
    '9.0',
    '10',
    '7.1',
    '8.1',
    '8',
    '6'
];
$securities = [
    'U2',
    "A2",
    'B2',
    'P3',
    'K7',
    "Y9",
    "OO"
];

for ($i=0; $i < 244; $i++) { 
    $model = array_rand($models);
    $build = array_rand($builds);
    $android = array_rand($androids);
    $country = array_rand($countries);
    $security = array_rand($securities);
    $size = rand(10000000,1000000000);
    $type = rand(0,1);
    $url = "https://google.com";
    $search = "$models[$model] $countries[$country] $builds[$build]";

    $query = "INSERT INTO files (model, build_v, android_v, country, size, `url`, security_level, `type`, search_text) 
    VALUES ('$models[$model]', '$builds[$build]', '$androids[$android]', '$countries[$country]', '$size', '$url', '$securities[$security]', '$type', '$search')";

    $db->query($query);
    // echo "kaaaak!";
    
}
// $res = $db->query("SELECT model,build_v,android_v,security_level,size,country,created,downloads from files");

// $array = [];

// while ($row = $db->fetch_array($res)) {
//     array_push($array,$row);
// }

// echo json_encode($array);
exit;