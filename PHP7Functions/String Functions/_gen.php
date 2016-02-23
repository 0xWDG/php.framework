<?php
/**
 * PHP.Framework
 * PHP In Swift
 *
 * This file is used to generate the initial test file in PHP.
*/

$s = "addcslashes;addslashes;bin2hex;chop;chr;chunk_split;convert_cyr_string;convert_uudecode;convert_uuencode;count_chars;crc32;crypt;echo;explode;fprintf;get_html_translation_table;hebrev;hebrevc;hex2bin;html_entity_decode;htmlentities;htmlspecialchars_decode;htmlspecialchars;implode;join;lcfirst;levenshtein;localeconv;ltrim;md5_file;md5;metaphone;money_format;nl_langinfo;nl2br;number_format;ord;parse_str;print;printf;quoted_printable_decode;quoted_printable_encode;quotemeta;rtrim;setlocale;sha1_file;sha1;similar_text;soundex;sprintf;sscanf;str_getcsv;str_ireplace;str_pad;str_repeat;str_replace;str_rot13;str_shuffle;str_split;str_word_count;strcasecmp;strchr;strcmp;strcoll;strcspn;strip_tags;stripcslashes;stripos;stripslashes;stristr;strlen;strnatcasecmp;strnatcmp;strncasecmp;strncmp;strpbrk;strpos;strrchr;strrev;strripos;strrpos;strspn;strstr;strtok;strtolower;strtoupper;strtr;substr_compare;substr_count;substr_replace;substr;trim;ucfirst;ucwords;vfprintf;vprintf;vsprintf;wordwrap";
$s = explode(";", $s);

for ($i = 0; $i < sizeof($s); $i++) {
	if (!file_exists($s[$i].".php"))
		createFunctionTest($s[$i]);
}

function createFunctionTest($functionName) {
	file_put_contents("{$functionName}.php", "<?php\r\n/**\r\n * PHP.Framework\r\n * PHP In Swift\r\n *\r\n * This file is used to test the function: {$functionName}.\r\n*/\r\n\r\n\r\n?>");
}
?>