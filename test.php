<?php
dl('hashtable_dump.so');

$cases = array(
    array(1),
    array(),
);

foreach ($cases as $case) {
    var_dump($case);
    echo PHP_EOL;

    hashtable_dump($case);
    echo "----------", PHP_EOL, PHP_EOL;
}
