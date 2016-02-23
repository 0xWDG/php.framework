<?php
/**
 * PHP.Framework
 * PHP In Swift
 *
 * This file is used to test the function: substr_compare.
*/
echo 'substr_compare("abcde", "bc", 1, 2):       ';
echo substr_compare("abcde", "bc", 1, 2); // 0
echo PHP_EOL;

echo 'substr_compare("abcde", "de", -2, 2):      ';
echo substr_compare("abcde", "de", -2, 2); // 0
echo PHP_EOL;

echo 'substr_compare("abcde", "bcg", 1, 2):      ';
echo substr_compare("abcde", "bcg", 1, 2); // 0
echo PHP_EOL;

echo 'substr_compare("abcde", "BC", 1, 2, true): ';
echo substr_compare("abcde", "BC", 1, 2, true); // 0
echo PHP_EOL;

echo 'substr_compare("abcde", "bc", 1, 3):       ';
echo substr_compare("abcde", "bc", 1, 3); // 1
echo PHP_EOL;

echo 'substr_compare("abcde", "cd", 1, 2):       ';
echo substr_compare("abcde", "cd", 1, 2); // -1
echo PHP_EOL;

?>