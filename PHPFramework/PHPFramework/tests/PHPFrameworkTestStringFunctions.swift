//
//  PHPFrameworkTestStringFunctions.swift
//  PHPFramework
//
//  Created by Wesley de Groot on 07-02-16.
//  Copyright © 2016 WDGWV. All rights reserved.
//

import Foundation

/**
 **PHP.Framework** \
 *PHP In Swift*
 
 Test class extension
 
 With this class you can run tests for PHP.Framework.
 
 Use `PHPTest.Test(val1, val2)` Or
 
 Please see a `.swift` file for more information about how it works
 
 */
extension PHPFrameworkTests {
    /**
     Test all of the String Functions
     
     - Returns: Dictionary<String, Any>
     */
	public func StringFunctions() -> Dictionary<String, Any> {
		
		let tempDict: Dictionary<String, Any> = [
			"ord": self.Test(String(php.ord("W")), "87"),
			"chr": self.Test(php.chr(87), "W"),
			// "assert_options": "NOT SUPPORTED",
			"addcslashes": self.Test(php.addcslashes("\"wdg\" aka Wesley De Groot"), "\\\"wdg\\\" aka Wesley De Groot"),
			"addslashes": self.Test(php.addslashes("\"wdg\" aka Wesley De Groot"), "\\\"wdg\\\" aka Wesley De Groot"),
			"bin2hex": self.Test(php.bin2hex("wdg"), "776467"),
			"chop": self.Test(php.chop("wdg"), "wdg"),
			"chunk_split": self.Test(php.chunk_split("wdg", 1), "w\r\nd\r\ng\r\n"),
			"convert_cyr_string": self.Test(php.convert_cyr_string("S"), FAIL),
			"convert_uudecode": self.Test(php.convert_uudecode("x"), FAIL),
			"convert_uuencode": self.Test(php.convert_uuencode("x"), FAIL),
			"count_chars": self.Test(php.count_chars("x"), [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]),
			"crc32": self.Test(php.crc32("wdg"), "2092498335"),
			"crypt": self.Test(php.crypt("wdg", "Salt"), "SapM.84jvmeEA"),
			"echo": self.Test(PASS),
			"explode": self.Test(php.explode("@;w;d;g", ";"), ["@", "w", "d", "g"]),
			"fprintf": self.Test(PASS),
			"get_html_translation_table": self.Test(php.get_html_translation_table(E), FAIL),
			"hebrev": self.Test(php.hebrev(E), FAIL),
			"hebrevc": self.Test(php.hebrevc(E), FAIL),
			"hex2bin": self.Test(php.hex2bin("776467"), "wdg"),
			"html_entity_decode": self.Test(php.html_entity_decode("&lt;b&gt;hi&lt;/b&gt;"), "<b>hi</b>"),
			"htmlentities": self.Test(php.html_entity_decode("<b>hi</b>"), "&lt;b&gt;hi&lt;/b&gt;"),
			"htmlspecialchars_decode": self.Test(FAIL),
			"htmlspecialchars": self.Test(FAIL),
			"implode": self.Test(php.implode("", ["@", "w", "d", "g"]), "@wdg"),
			"join": self.Test(php.join("", ["@", "w", "d", "g"]), "@wdg"),
			"lcfirst": self.Test(php.lcfirst("wDG"), "WDG"),
			"levenshtein": self.Test(php.levenshtein("35"), ""),
			"ltrim": self.Test(php.ltrim("   @wdg"), "@wdg"),
			"md5_file": self.Test(PASS),
			"md5": self.Test(php.md5("hi"), "49f68a5c8493ec2c0bf489821c21fc3b"),
			"metaphone": self.Test(php.metaphone("@wdg"), "TK"),
			"money_format": self.Test(PASS),
			"nl_langinfo": self.Test(php.nl_langinfo("NL"), false),
			"nl2br": self.Test(php.nl2br("Hello,\nGoodbye!"), "Hello,<br />\nGoodbye!"),
			"number_format": self.Test(php.number_format("0123456789"), "123,456,789"),
			"parse_str": self.Test(PASS),
			"printf": self.Test(PASS),
			"quoted_printable_decode": self.Test(php.quoted_printable_decode("EE"), FAIL),
			"quoted_printable_encode": self.Test(php.quoted_printable_encode("EE"), FAIL),
			"quotemeta": self.Test(php.quotemeta("ABCDEF"), FAIL),
			"rtrim": self.Test(php.rtrim("wdg      "), "wdg"),
			"setlocale": self.Test(php.setlocale("nl_NL"), false),
			"sha1_file": self.Test(PASS),
			"sha1": self.Test(PASS),
			"similar_text": self.Test(php.similar_text("PHP", "PHP"), true),
			"soundex": self.Test(php.soundex("ABC"), FAIL),
			"sprintf": self.Test(PASS),
			"sscanf": self.Test(FAIL),
			"str_getcsv": self.Test(FAIL),
			"str_ireplace": self.Test(FAIL),
			"str_pad": self.Test(FAIL),
			"str_repeat": self.Test(php.str_repeat("Hi", 2), "HiHi"),
			"str_replace": self.Test(FAIL),
			"str_rot13": self.Test(FAIL),
			"str_shuffle": self.Test(FAIL),
			"str_split": self.Test(php.str_split("@wdg"), ["@", "w", "d", "g"]),
			"str_word_count": self.Test(php.str_word_count("WDG WDG"), 2),
			"strchr": self.Test(FAIL),
			"strcmp": self.Test(FAIL),
			"strcoll": self.Test(FAIL),
			"strcspn": self.Test(FAIL),
			"strip_tags": self.Test(FAIL),
			"stripcslashes": self.Test(FAIL),
			"stripos": self.Test(FAIL),
			"stripslashes": self.Test(FAIL),
			"stristr": self.Test(FAIL),
			"strlen": self.Test(php.strlen("Hi"), 2),
			"strnatcasecmp": self.Test(FAIL),
			"strnatcmp": self.Test(FAIL),
			"strncasecmp": self.Test(FAIL),
			"strncmp": self.Test(FAIL),
			"strpbrk": self.Test(FAIL),
			"strpos": self.Test(FAIL),
			"strrchr": self.Test(php.strrchr("@wdg", "d"), "g"),
			"strrev": self.Test(php.strrev("gdw@"), "@wdg"),
			"strripos": self.Test(FAIL),
			"strrpos": self.Test(FAIL),
			"strspn": self.Test(FAIL),
			"strstr": self.Test(FAIL),
			"strtok": self.Test(FAIL),
			"strtolower": self.Test(php.strtolower("@WDG"), "@wdg"),
			"strtoupper": self.Test(php.strtoupper("@wdg"), "@WDG"),
			"strtr": self.Test(FAIL),
			"substr_compare": self.Test(FAIL),
			"substr_count": self.Test(FAIL),
			"substr_replace": self.Test(FAIL),
			"substr": self.Test(php.substr("@@wdg", -4), "@wdg"),
			"trim": self.Test(FAIL),
			"ucfirst": self.Test(php.ucfirst("wDG"), "WDG"),
			"ucwords": self.Test(php.ucfirst("wDG wDG"), "WDG WDG"),
			"vfprintf": self.Test(PASS),
			"vprintf": self.Test(PASS),
			"vsprintf": self.Test(PASS),
			"wordwrap": self.Test(php.wordwrap("wdg", 0, "\n", true), "w\nd\ng\n")
		]
		
		return tempDict
	}
}