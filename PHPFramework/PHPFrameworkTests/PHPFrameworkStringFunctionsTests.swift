//
//  PHPFrameworkStringFunctionsTests.swift
//  PHPFramework
//
//  Created by Wesley de Groot on 13-02-16.
//  Copyright © 2016 WDGWV. All rights reserved.
//

import XCTest
@testable import PHPFramework
import Foundation

extension PHPFrameworkTests {
	func test_ord() {
		XCTAssertEqual(php.ord("W"), 87)
	}
	
	func test_chr() {
		XCTAssertEqual(php.chr(87), "W")
	}
	
	func test_addcslashes() {
		XCTAssertEqual(php.addcslashes("\"wdg\" aka Wesley De Groot"), "\\\"wdg\\\" aka Wesley De Groot")
	}
	
	func test_addslashes() {
		XCTAssertEqual(php.addslashes("\"wdg\" aka Wesley De Groot"), "\\\"wdg\\\" aka Wesley De Groot")
	}
	
	func test_bin2hex() {
		XCTAssertEqual(php.bin2hex(01110111), 17891601)
	}
	
	func test_chop() {
		XCTAssertEqual(php.chop("wdg"), "wdg")
	}
	
	func test_chunk_split() {
		XCTAssertEqual(php.chunk_split("wdg", 1), "w\r\nd\r\ng\r\n")
	}
	
	func test_convert_cyr_string() {
		XCTAssertEqual(php.convert_cyr_string(E), E)
	}
	
	func test_convert_uudecode() {
		XCTAssertEqual(php.convert_uudecode("x"), FAIL)
	}
	
	func test_convert_uuencode() {
		XCTAssertEqual(php.convert_uuencode("x"), FAIL)
	}
	
	func test_count_chars() {
		XCTAssertEqual(php.count_chars("x"), [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0])
	}
	
	func test_crc32() {
		XCTAssertEqual(php.crc32("wdg"), "7cb8fd9f")
	}
	
	func test_crypt() {
		XCTAssertEqual(php.crypt("wdg", "Salt"), "SapM.84jvmeEA")
	}
	
	func test_echo() {
		// if no crash then pass
		php.echo(PASS)
	}
	
	func test_explode() {
		XCTAssertEqual(php.explode("@;w;d;g", ";"), ["@", "w", "d", "g"])
	}
	
	func test_fprintf() {
		// if no crash then pass
		php.fprintf(PASS)
	}
	
	func test_get_html_translation_table() {
		XCTAssertEqual(php.get_html_translation_table(E), php.get_html_translation_table(E))
	}
	
	func test_hebrev() {
		XCTAssertEqual(php.hebrev(E), E)
	}
	
	func test_hebrevc() {
		XCTAssertEqual(php.hebrevc(E), E)
	}
	
	func test_hex2bin() {
		XCTAssertEqual(php.hex2bin("776467"), 7824487)
	}
	
	func test_html_entity_decode() {
		XCTAssertEqual(php.html_entity_decode("&lt;b&gt;hi&lt;/b&gt;"), "<b>hi</b>")
	}
	
	func test_htmlentities() {
		XCTAssertEqual(php.htmlentities("<b>hi</b>"), "&lt;b&gt;hi&lt;/b&gt;")
	}
	
	func test_htmlspecialchars_decode() {
		XCTAssertEqual(php.htmlspecialchars_decode("&lt;b&gt;hi&lt;/b&gt;"), "<b>hi</b>")
	}
	
	func test_htmlspecialchars() {
		XCTAssertEqual(php.htmlspecialchars("<b>hi</b>"), "&lt;b&gt;hi&lt;/b&gt;")
	}
	
	func test_implode() {
		XCTAssertEqual(php.implode("", ["@", "w", "d", "g"]), "@wdg")
	}
	
	func test_join() {
		XCTAssertEqual(php.join("", ["@", "w", "d", "g"]), "@wdg")
	}
	
	func test_lcfirst() {
		XCTAssertEqual(php.lcfirst("WDG"), "wDG")
	}
	
	func test_levenshtein() {
		XCTAssertEqual(php.levenshtein("Hello", "ello"), 1)
	}
	
	func test_ltrim() {
		XCTAssertEqual(php.ltrim("   @wdg"), "@wdg")
	}
	
	func test_md5_file() {
		// if no crash then passed
		php.md5_file(E)
	}
	
	func test_md5() {
		XCTAssertEqual(php.md5("hi"), "49f68a5c8493ec2c0bf489821c21fc3b")
	}
	
	func test_metaphone() {
		XCTAssertEqual(php.metaphone("@wdg"), "TK")
	}
	
	func test_money_format() {
		XCTAssertEqual(php.money_format("0123456789"), "$123,456,789.00")
	}
	
	func test_nl_langinfo() {
		XCTAssertEqual(php.nl_langinfo("NL") as? Bool, false)
	}
	
	func test_nl2br() {
		XCTAssertEqual(php.nl2br("Hello,\nGoodbye!"), "Hello,<br />\nGoodbye!")
	}
	
	func test_number_format() {
		XCTAssertEqual(php.number_format("0123456789"), "123,456,789")
	}
	
	func test_parse_str() {
		// if no crash then pass
		php.parse_str(E)
	}
	
	func test_printf() {
		// if no crash then pass
		php.printf(E)
	}
	
	func test_quoted_printable_decode() {
		XCTAssertEqual(php.quoted_printable_decode("EE"), "EE")
	}
	
	func test_quoted_printable_encode() {
		XCTAssertEqual(php.quoted_printable_encode("EE"), "EE")
	}
	
	func test_quotemeta() {
        XCTAssertEqual(php.quotemeta(". \\ + * ? [ ^ ] ( $ )"), "\\. \\\\ \\+ \\* \\? \\[ \\^ \\] \\( \\$ \\)")
	}
	
	func test_rtrim() {
		XCTAssertEqual(php.rtrim("wdg      "), "wdg")
	}

    func test_localeconv() {
        XCTAssertEqual(php.localeconv(), false)
    }
    
	func test_setlocale() {
		XCTAssertEqual(php.setlocale("nl_NL") as? Bool, false)
	}
	
	func test_sha1_file() {
		XCTAssertEqual(php.sha1_file("@wdg"), "1b1c1165d61d3fd00270b43e0b8d691bb45f0a0a")
	}
	
	func test_sha1() {
		XCTAssertEqual(php.sha1("@wdg"), "1b1c1165d61d3fd00270b43e0b8d691bb45f0a0a")
	}
	
	func test_similar_text() {
		XCTAssertEqual(php.similar_text("PHP", "PHP"), true)
	}
	
	func test_soundex() {
		XCTAssertEqual(php.soundex("ABC"), FAIL)
	}
	
	func test_sprintf() {
		// if no crash then pass
		php.sprintf(E)
	}
	
	func test_sscanf() {
		XCTAssertEqual(PASS, FAIL)
	}
	
	func test_str_getcsv() {
		XCTAssertEqual(PASS, FAIL)
	}
	
	func test_str_ireplace() {
		XCTAssertEqual(PASS, FAIL)
	}
	
	func test_str_pad() {
		XCTAssertEqual(PASS, FAIL)
	}
	
	func test_str_repeat() {
		XCTAssertEqual(php.str_repeat("Hi", 2), "HiHi")
	}
	
	func test_str_replace() {
		XCTAssertEqual(php.str_replace("abc", "wdg", "@abc"), "@wdg")
	}
	
	func test_str_rot13() {
		XCTAssertEqual(php.str_rot13("wdg"), "jqt")
	}
	
	func test_str_shuffle() {
		XCTAssertNotEqual(php.str_shuffle("Hello you!"), "Hello you!")
	}
	
	func test_str_split() {
		XCTAssertEqual(php.str_split("@wdg"), ["@", "w", "d", "g"])
	}
	
	func test_str_word_count() {
		XCTAssertEqual(php.str_word_count("WDG WDG") as? Int, 2)
	}
	
	func test_strchr() {
		XCTAssertEqual(PASS, FAIL)
	}
	
	func test_strcmp() {
		XCTAssertEqual(PASS, FAIL)
	}
	
	func test_strcoll() {
		XCTAssertEqual(PASS, FAIL)
	}
	
	func test_strcspn() {
		XCTAssertEqual(PASS, FAIL)
	}
	
	func test_strip_tags() {
		XCTAssertEqual(php.strip_tags("<b>Hello</b> this is <a href='http://github.com/wdg/php.framework' target='_blank'>php.framework</a>"), "Hello this is php.framework")
	}
	
	func test_stripcslashes() {
		XCTAssertEqual(PASS, FAIL)
	}
	
	func test_stripos() {
		XCTAssertEqual(PASS, FAIL)
	}
	
	func test_stripslashes() {
		XCTAssertEqual(PASS, FAIL)
	}
	
	func test_stristr() {
		XCTAssertEqual(PASS, FAIL)
	}
	
	func test_strlen() {
		XCTAssertEqual(php.strlen("Hi"), 2)
	}
	
	func test_strnatcasecmp() {
		XCTAssertEqual(PASS, FAIL)
	}
	
	func test_strnatcmp() {
		XCTAssertEqual(PASS, FAIL)
	}
	
	func test_strncasecmp() {
		XCTAssertEqual(PASS, FAIL)
	}
	
	func test_strncmp() {
		XCTAssertEqual(PASS, FAIL)
	}
	
	func test_strpbrk() {
		XCTAssertEqual(PASS, FAIL)
	}
	
	func test_strpos() {
		XCTAssertEqual(PASS, FAIL)
	}
	
	func test_strrchr() {
		XCTAssertEqual(php.strrchr("@wdg", "d") as? String, "g")
	}
	
	func test_strrev() {
		XCTAssertEqual(php.strrev("gdw@"), "@wdg")
	}
	
	func test_strripos() {
		XCTAssertEqual(PASS, FAIL)
	}
	
	func test_strrpos() {
		XCTAssertEqual(PASS, FAIL)
	}
	
	func test_strspn() {
		XCTAssertEqual(PASS, FAIL)
	}
	
	func test_strstr() {
		XCTAssertEqual(PASS, FAIL)
	}
	
	func test_strtok() {
		XCTAssertEqual(PASS, FAIL)
	}
	
	func test_strtolower() {
		XCTAssertEqual(php.strtolower("@WDG"), "@wdg")
	}
	
	func test_strtoupper() {
		XCTAssertEqual(php.strtoupper("@wdg"), "@WDG")
	}
	
	func test_strtr() {
		XCTAssertEqual(PASS, FAIL)
	}
	
	func test_substr_compare() {
		XCTAssertEqual(PASS, FAIL)
	}
	
	func test_substr_count() {
		XCTAssertEqual(PASS, FAIL)
	}
	
	func test_substr_replace() {
		XCTAssertEqual(PASS, FAIL)
	}
	
	func test_substr() {
		XCTAssertEqual(php.substr("@@wdg", -4), "@wdg")
	}
	
	func test_trim() {
		XCTAssertEqual(php.trim("   @wdg         "), "@wdg")
	}
	
	func test_ucfirst() {
		XCTAssertEqual(php.ucfirst("wDG"), "WDG")
	}
	
	func test_ucwords() {
		XCTAssertEqual(php.ucwords("wDG wDG"), "WDG WDG")
	}
	
	func test_vfprintf() {
		// if no crash then pass
		php.vfprintf(E)
	}
	
	func test_vprintf() {
		php.vprintf(E)
	}
	
	func test_vsprintf() {
		php.vsprintf(E)
	}
	
	func test_wordwrap() {
		XCTAssertEqual(php.wordwrap("wdg", 0, "\n", true), "w\nd\ng\n")
	}
	
}