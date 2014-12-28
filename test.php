<?php
dl('hashtable_dump.so');

$cases = array(
    array(),
    array(1),
    hashdos(8),
);

foreach ($cases as $case) {
    var_dump($case);
    echo PHP_EOL;

    hashtable_dump($case);
    echo "----------", PHP_EOL, PHP_EOL;
}

function hashdos($n) {
    $tableSize = 8;
    while ($tableSize < $n) {
        $tableSize *= 2;
    }
    $arr = array();
    for ($i = 0; $i < $n; $i++) {
        $arr[$tableSize * $i] = NULL;
    }
    return $arr;
}
