<?php
/**
 * PHP.Framework
 * PHP In Swift
 *
 * This file is used to test the function: str_getcsv.
*/

$filename = '_parse/my.csv';

print_r(str_getcsv(file_get_contents($filename), ";", "\"", "\\"));
