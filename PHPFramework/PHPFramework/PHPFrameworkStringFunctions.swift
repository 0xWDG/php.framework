/**
 _____    _    _   _____    ______                                           _
 |  __ \  | |  | | |  __ \  |  ____|                                         | |
 | |__) | | |__| | | |__) | | |__ _ __ __ _ _ __ ___   _____      _____  _ __| | __
 |  ___/  |  __  | |  ___/  |  __| '__/ _` | '_ ` _ \ / _ \ \ /\ / / _ \| '__| |/ /
 | |      | |  | | | |  _   | |  | | | (_| | | | | | |  __/\ V  V / (_) | |  |   <
 |_|      |_|  |_| |_| (_)  |_|  |_|  \__,_|_| |_| |_|\___| \_/\_/ \___/|_|  |_|\_\
 
 
 Copyright (c) 2016 Wesley de Groot (http://www.wesleydegroot.nl), WDGWV (http://www.wdgwv.com)
 
 
 Variable prefixes:
 PFS = PHP.Framework Shared
 PFT = PHP.Framework Tests (internal)
 PFI = PHP.Framework Internal
 PFU = PHP.Framework Unspecified
 
 usage:
 php.the_php_function(and, parameters, ofcourse)
 
 documentation:
 http://wdg.github.io/php.framework/
 
 wiki:
 https://github.com/wdg/php.framework/wiki
 
 questions/bugs:
 https://github.com/wdg/php.framework/issues
 
 ---------------------------------------------------
 File:    PHPFrameworkStringFunctions.swift
 Created: 15-JAN-2016
 Creator: Wesley de Groot | g: @wdg | t: @wesdegroot
 Issue:   #1 (String Functions)
 Prefix:  PFS
 ---------------------------------------------------
 */

import Foundation
//import CryptoSwift

/**
 PHPFramework

 A Swift framework inspired by some PHP Functions.
 */
extension PHPFramework {
	/**
	 Return ASCII value of character

	 - Parameter s: the character

	 - Returns: the ascii number of the character
	 */
	public func ord(s: String) -> Int {
		return Int(String(s.unicodeScalars.first!.value))!
	}
	
	/**
	 Return a specific character

	 - Parameter s: the chr's number

	 - Returns: the character as given in ascii
	 */
	public func chr(s: Int) -> String {
		guard let newS: Int = Int(s) else {
			return "\(s)"
		}
		return String(UnicodeScalar(newS))
	}
	
	/**
	 Set/get the various assert flags (Not done)

	 - Parameter String: The input string

	 - Returns: The input String
	 */
	public func assert_options(str: String) -> String {
		print("Sorry this function is not supported yet!")
		return str
	}
	
	/**
	 Quote string with slashes in a C style (not done)

	 - Parameter str: The String

	 - Returns: The String
	 */
	public func addcslashes(str: String) -> String {
		return self.addslashes(str)
	}
	
	/**
	 Quote string with slashes

	 Returns a string with backslashes before characters that need to be escaped. These characters are single quote ('), double quote ("), backslash (\) and NUL (the NULL byte).

	 - Parameter str: the string

	 - Returns: the string with backslashes
	 */
	public func addslashes(str: String!) -> String {
		return str.stringByReplacingOccurrencesOfString("\\", withString: "\\\\")
			.stringByReplacingOccurrencesOfString("'", withString: "\\'")
			.stringByReplacingOccurrencesOfString("\"", withString: "\\\"")
			.stringByReplacingOccurrencesOfString("\0", withString: "\\\0")
	}
	
	/**
	 Convert binary data into hexadecimal representation

	 - Parameter str: The String

	 - Returns: The String
	 */
	public func bin2hex(str: Int) -> Int {
		let scanner = NSScanner(string: String(str))
		var result : UInt32 = 0
		if scanner.scanHexInt(&result) {
			return Int(result)
		}
		// return Int(str, radix: 16)! // Can couse for crash if not a binary number
		return 0
	}
	
	/**
	 Alias of rtrim

	 chrs includes standard:

	 " " (ASCII 32 (0x20)), an ordinary space.

	 "\t" (ASCII 9 (0x09)), a tab.

	 "\n" (ASCII 10 (0x0A)), a new line (line feed).

	 "\r" (ASCII 13 (0x0D)), a carriage return.

	 "\0" (ASCII 0 (0x00)), the NULL-byte.

	 "\x0B" (ASCII 11 (0x0B)), a vertical tab.

	 - Parameter str: The String
	 - Parameter chrs: Characters to trim

	 - Returns: The String
	 */
	public func chop(str: String, _ chrs: String? = "_ALL_") -> String {
		return self.rtrim(str, chrs)
	}
	
	/**
	 Split a string into smaller chunks (not done)

	 - Parameter str: The String
	 - Parameter length: the lenght (default 76)
	 - Parameter end: the end (default \r\n)

	 - Returns: The String
	 */
	public func chunk_split(str: String, _ length: Int = 76, _ end: String? = "\r\n") -> String {
		var myCount: Int = 0
		var newString: String = ""
		
		for character in str.characters {
			newString = newString.stringByAppendingString(String(character))
			
			if (myCount == (length - 1)) {
				newString = newString.stringByAppendingString(end!)
				myCount = 0
			} else {
				myCount += 1
			}
		}
		
		return newString
	}
	
	/**
	 **Not Supported** Convert from one Cyrillic character set to another

	 - Parameter str: The String

	 - Returns: The String
	 */
	public func convert_cyr_string(str: String) -> String {
		return str
	}
	
	/**
	 Decode a uuencoded string (not done)

	 - Parameter str: The String

	 - Returns: The String
	 */
	public func convert_uudecode(str: String) -> String {
		print("Sorry this function is not done")
		
		return str
	}
	
	/**
	 Uuencode a string (not done)

	 - Parameter str: The String

	 - Returns: The String
	 */
	public func convert_uuencode(str: String) -> String {
		print("Sorry this function is not done")
		
		return str
	}
	
	/**
	 Return information about characters used in a string

	 - Parameter str: The String

	 - Returns: Array Int (255 x 0)
	 */
	public func count_chars(str: String) -> Array<Int> {
		return [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
	}
	
	/**
	 Calculates the crc32 polynomial of a string

	 - Parameter str: The String

	 - Returns: The String
	 */
	public func crc32(str: String) -> String {
		return str.crc32
	}
	
	/**
	 One-way string hashing (DES) (not done)

	 - Parameter str: The String

	 - Returns: The String
	 */
	public func crypt(str: String, _ salt: String) -> String {
		print("Sorry this function is not done")
		
		return str
	}
	
	/**
	 **PHP.Framework**\
	 Output one or more strings\
	 *via swift's print function*

	 - Parameter ob: the object
	 */
	public func echo(ob: AnyObject...) -> Void {
		print(ob)
	}
	
	/**
	 Split a string by string

	 - Parameter str: The String
	 - Parameter split: How to split
	 - Parameter limit: The limit (Not supported)

	 - Returns: The String Splitted as a array.
	 */
	public func explode(str: String, _ split: String = " ", _ limit: Int = 0) -> Array<String> {
		if (limit != 0) {
			print("Sorry limits are not supported (yet)")
		}
		
		return Array(str.componentsSeparatedByString(split))
	}
	
	/**
	 **PHP.Framework**\
	 Write a formatted string to a stream
	 *via swift's print function*

	 **WARNING: use String(format:...)**

	 - Parameter ob: the object
	 */
	public func fprintf(ob: AnyObject...) -> Void {
		print(ob)
	}
	
	/**
	 Returns the translation table used by htmlspecialchars and htmlentities

	 - Returns: The table ([String: Character])
	 */
	public func get_html_translation_table(str: String) -> [String: Character] {
		return "".getHTMLEntities()
	}
	
	/**
	 **Not Supported** Convert logical Hebrew text to visual text

	 - Parameter str: The String

	 - Returns: The String
	 */
	public func hebrev(str: String) -> String {
		return str
	}
	
	/**
	 **Not supported** Convert logical Hebrew text to visual text with newline conversion

	 - Parameter str: The String

	 - Returns: The String
	 */
	public func hebrevc(str: String) -> String {
		return str
	}
	
	/**
	 Decodes a hexadecimally encoded binary string (not done)

	 - Parameter str: The String

	 - Returns: The String
	 */
	public func hex2bin(str: String) -> Int {
		// print("Sorry this function is not done")
		//
		// return str
		// let scanner = NSScanner(string: String(str))
		// var result : UInt32 = 0
		// if scanner.scanHexInt(&result) {
		// return Int(result)
		// }
		return Int(strtoul(str, nil, 16))
		// return Int(str, radix: 16)! // Can couse for crash if not a binary number
		// return 0
	}
	
	/**
	 Convert all HTML entities to their applicable characters

	 - Parameter str: The String
	 - Parameter flags: the flags (*will be ignored*)
	 - Parameter encoding: the encoding (*will be ignored*)
	 - Parameter double_encoding: bool (*will be ignored*)

	 - Returns: The String
	 */
	public func html_entity_decode(str: String, _ flags: Int? = 0, _ encoding: Int? = 0, _ double_encode: Bool? = false) -> String {
		return str.decodeHTML()
	}
	
	/**
	 Convert all applicable characters to HTML entities

	 - Parameter str: The String
	 - Parameter flags: the flags (*will be ignored*)
	 - Parameter encoding: the encoding (*will be ignored*)
	 - Parameter double_encoding: bool (*will be ignored*)

	 - Returns: The String
	 */
	public func htmlentities(str: String, _ flags: Int? = 0, _ encoding: Int? = 0, _ double_encode: Bool? = false) -> String {
		return str.encodeHTML()
	}
	
	/**
	 Convert special HTML entities back to characters

	 - Parameter str: The String
	 - Parameter flags: the flags (*will be ignored*)
	 - Parameter encoding: the encoding (*will be ignored*)
	 - Parameter double_encoding: bool (*will be ignored*)

	 - Returns: The String
	 */
	public func htmlspecialchars_decode(str: String, _ flags: Int? = 0, _ encoding: Int? = 0, _ double_encode: Bool? = false) -> String {
		return str.decodeHTML()
	}
	
	/**
	 Convert special characters to HTML entities

	 - Parameter str: The String
	 - Parameter flags: the flags (*will be ignored*)
	 - Parameter encoding: the encoding (*will be ignored*)
	 - Parameter double_encoding: bool (*will be ignored*)

	 - Returns: The String
	 */
	public func htmlspecialchars(str: String, _ flags: Int? = 0, _ encoding: Int? = 0, _ double_encode: Bool? = false) -> String {
		print("Sorry this function is not done")
		
		return str.encodeHTML()
	}
	
	/**
	 Join array elements with a string

	 - Parameter glue: The glue
	 - Parameter arr: The array to implode

	 - Returns: The String
	 */
	public func implode(glue: String, _ arr: Array<String>) -> String {
		return arr.joinWithSeparator(glue)
	}
	
	/**
	 Alias of implode

	 - Parameter glue: The glue
	 - Parameter arr: The array to implode

	 - Returns: The String
	 */
	public func join(glue: String, _ arr: Array<String>) -> String {
		return self.implode(glue, arr)
	}
	
	/**
	 Make a string's first character lowercase

	 - Parameter str: The String

	 - Returns: The String
	 */
	public func lcfirst(str: String) -> String {
		return String(str[0]).lowercaseString + String(str[1...(str.length)])
	}
	
	/**
	 Calculate Levenshtein distance between two strings

	 - Parameter aStr: The First String
	 - Parameter bStr: The Second String

	 - Returns: The String
	 */
	public func levenshtein(aStr: String, _ bStr: String) -> Int {
		return calculateLevenshtein().calc(aStr, bStr)
	}
	
	/**
	 Get numeric formatting information

	 - Returns: False
	 */
	public func localeconv() -> Bool {
		return false
	}
	
	/**
	 Strip whitespace (or other characters) from the beginning of a string

	 chrs includes standard:

	 " " (ASCII 32 (0x20)), an ordinary space.

	 "\t" (ASCII 9 (0x09)), a tab.

	 "\n" (ASCII 10 (0x0A)), a new line (line feed).

	 "\r" (ASCII 13 (0x0D)), a carriage return.

	 "\0" (ASCII 0 (0x00)), the NULL-byte.

	 "\x0B" (ASCII 11 (0x0B)), a vertical tab.

	 - Parameter str: The String
	 - Parameter chrs: Characters to trim (*ignored*)

	 - Returns: The String
	 */
	public func ltrim(str: String, _ chrs: String? = "_ALL_") -> String {
		return str.trimmedLeft()
	}
	
	/**
	 Calculates the md5 hash of a given file

	 - Parameter str: The String

	 - Returns: The String
	 */
	public func md5_file(str: String) -> String {
		return str.md5
	}
	
	/**
	 Calculate the md5 hash of a string

	 - Parameter str: The String

	 - Returns: The String
	 */
	public func md5(str: String) -> String {
		return str.md5
    }
	
	/**
	 Calculate the metaphone key of a string (not done)

	 - Parameter str: The String

	 - Returns: The String
	 */
	public func metaphone(str: String) -> String {
		print("Sorry this function is not done")
		
		return str
	}
	
	/**
	 Formats a number as a currency string

	 - Parameter str: The String

	 - Returns: The String
	 */
	public func money_format(str: String) -> String {
		let formatter = NSNumberFormatter()
		formatter.numberStyle = .CurrencyStyle
		
		if let number = Int(str) {
			let myNumber = NSNumber(integer: number)
			return formatter.stringFromNumber(myNumber)!
		} else {
			return "";
		}
	}
	
	/**
	 **Not supported** Query language and locale information

	 - Parameter str: The String

	 - Returns: The String
	 */
	public func nl_langinfo(str: String) -> Any {
		return false
	}
	
	/**
	 Inserts HTML line breaks before all newlines in a string (not done)

	 - Parameter html: the string

	 - Returns: the string with <br /> tags
	 */
	public func nl2br(html: String) -> String {
		return html.stringByReplacingOccurrencesOfString("\n", withString: "<br />\n")
	}
	
	/**
	 Break (br) to Newline [like-php (reversed)]

	 - Parameter html: the html string to convert to a string

	 - Returns: the string with line-breaks
	 */
	public func br2nl(html: String) -> String {
		return html.stringByReplacingOccurrencesOfString("<br />", withString: "\n") // html 4
		.stringByReplacingOccurrencesOfString("<br/>", withString: "\n") // invalid html
		.stringByReplacingOccurrencesOfString("<br>", withString: "\n") // html <=4
	}
	
	/**
	 Format a number with grouped thousands

	 - Parameter str: The String

	 - Returns: The String
	 */
	public func number_format(str: String) -> String {
		let formatter = NSNumberFormatter()
		formatter.numberStyle = .DecimalStyle
		
		if let number = Int(str) {
			let myNumber = NSNumber(integer: number)
			return formatter.stringFromNumber(myNumber)!
		} else {
			return "";
		}
	}
	
	/**
	 Return ASCII value of character

	 - Parameter str: The String

	 - Returns: The String
	 */
	public func ord(str: String) -> String {
		return String(str.unicodeScalars.first!.value)
	}
	
	/**
	 Parses the string into variables (**not supported**)

	 # **not supported**
	 ### Unsafe behaviour & no addition to swift.

	 - Parameter str: the query string

	 - Returns: false
	 */
	public func parse_str(str: String) -> Array<String> {
		return ["false", "Not supported"]
	}
	
	/**
	 **PHP.Framework**\
	 Write a formatted string to a stream
	 *via swift's print function*

	 **WARNING: use String(format:...)**

	 - Parameter ob: the object
	 */
	// public func print(ob: Any...) -> Void {
	// print(ob)
	// }
	
	/**
	 **PHP.Framework**\
	 Output a formatted string
	 *via swift's print function*

	 **WARNING: use String(format:...)**

	 - Parameter ob: the object
	 */
	public func printf(ob: AnyObject...) -> Void {
		print(ob)
	}
	
	/**
	 Convert a quoted-printable string to an 8 bit string

	 - Parameter str: The String

	 - Returns: The String
	 */
	public func quoted_printable_decode(str: String) -> String {
		return str
	}
	
	/**
	 Convert a 8 bit string to a quoted-printable string

	 - Parameter str: The String

	 - Returns: The String
	 */
	public func quoted_printable_encode(str: String) -> String {
		return str
	}
	
	/**
	 Quote meta characters
	 Puts a backslash before one of those characters: **. \ + * ? [ ^ ] ( $ )**

	 - Parameter str: The String

	 - Returns: The String
	 */
	public func quotemeta(str: String) -> String {
		return str.replace("\\", withString: "\\\\")
			.replace(".", withString: "\\.")
			.replace("+", withString: "\\+")
			.replace("*", withString: "\\*")
			.replace("?", withString: "\\?")
			.replace("[", withString: "\\[")
			.replace("^", withString: "\\^")
			.replace("]", withString: "\\]")
			.replace("(", withString: "\\(")
			.replace("$", withString: "\\$")
			.replace(")", withString: "\\)")
	}
	
	/**
	 Strip whitespace (or other characters) from the end of a string

	 chrs includes standard:

	 " " (ASCII 32 (0x20)), an ordinary space.

	 "\t" (ASCII 9 (0x09)), a tab.

	 "\n" (ASCII 10 (0x0A)), a new line (line feed).

	 "\r" (ASCII 13 (0x0D)), a carriage return.

	 "\0" (ASCII 0 (0x00)), the NULL-byte.

	 "\x0B" (ASCII 11 (0x0B)), a vertical tab.

	 - Parameter str: The String
	 - Parameter chrs: Characters to trim (*ignored*)

	 - Returns: String
	 */
	public func rtrim(str: String, _ chars: String? = "_ALL_") -> String {
		return str.trimmedRight()
	}
	
	/**
	 **Not Supported** Set locale information

	 - Parameter str: The String

	 - Returns: false
	 */
	public func setlocale(str: String) -> Any {
		return false
	}
	
	/**
	 Calculate the sha1 hash of a file

	 - Parameter str: The String

	 - Returns: The String
	 */
	public func sha1_file(str: String) -> String {
		return str.sha1
	}
	
	/**
	 Calculate the sha1 hash of a string

	 - Parameter str: The String

	 - Returns: The String
	 */
	public func sha1(str: String) -> String {
		return str.sha1
	}
	
	/**
	 Calculate the similarity between two strings

	 - Parameter str: The String

	 - Returns: The String
	 */
	public func similar_text(str: String, _ str2: String = "") -> Bool {
		return str == str2
	}
	
	/**
	 Calculate the soundex key of a string (not done)

	 - Parameter str: The String

	 - Returns: The String
	 */
	public func soundex(str: String) -> String {
		print("Sorry this function is not done")
		
		return str
	}
	
	/**
	 **PHP.Framework**\
	 Return a formatted string\
	 *via swift's print function*

	 **WARNING: use String(format:...)**

	 - Parameter ob: the object
	 */
	public func sprintf(ob: AnyObject...) -> Void {
		print(ob)
	}
	
	/**
	 Parses input from a string according to a format\
	 **Use swift's String, this will only return the string!**

	 - Parameter str: The String

	 - Returns: The String
	 */
	public func sscanf(str: String) -> String {
		return str
	}
	
	/**
	 Parse a CSV string into an array

	 - Parameter str: The input String
	 - Parameter delimiter: ","
	 - Parameter enclosure: "\""
	 - Parameter escape: "\\"

	 - Returns: The String
	 */
	public func str_getcsv(str: String, _ delimiter: String? = ",", enclosure: String? = "\"", escape: String? = "\\") -> Array<String> {
		return php.explode(str, delimiter!)
	}
	
	/**
	 Case-insensitive version of str_replace. (not done)

	 - Parameter str: The String

	 - Returns: The String
	 */
	public func str_ireplace(str: String) -> String {
		print("Sorry this function is not done")
		
		return str
	}
	
	/**
	 Pad a string to a certain length with another string

	 - Parameter input: The String

	 - Returns: The String
	 */
	// string str_pad ( string $input , int $pad_length [, string $pad_string = " " [, int $pad_type = STR_PAD_RIGHT ]] )
	
	public func str_pad(input: String, _ length: Int, _ pad_string: String? = " ", pad_type: Int? = STR_PAD_RIGHT) -> String {
		var _mutated: String = input
		
		switch (pad_type!) {
		case STR_PAD_BOTH:
			let steps = length - ((pad_string?.length)! + input.length) + 1
			let steps_left = Int(steps / 2) // Remove .xx
			let steps_right = Int(steps / 2) // Remove .xx
			
			// Add padding before...
            for _ in (0...steps_left) {
				_mutated = "\(pad_string!)\(_mutated)"
			}
            
			// Add padding afterwards...
			// (steps % 2 == 0) checks if it is even or odd, if odd then right +1
			for _ in 0 ..< steps_right + ((steps % 2 == 0) ? 0 : 1) {
				_mutated = _mutated.stringByAppendingString(pad_string!)
			}
			break
		case STR_PAD_LEFT:
			let steps = length - ((pad_string?.length)! + input.length) + 1
			
			for _ in 0 ..< steps {
				_mutated = "\(pad_string!)\(_mutated)"
			}
			break
		case STR_PAD_RIGHT:
			let steps = length - ((pad_string?.length)! + input.length) + 1
			
			for _ in 0 ..< steps {
				_mutated = _mutated.stringByAppendingString(pad_string!)
			}
			break
		
		default:
			print("ERROR")
			break
		}
		return _mutated
	}
	
	/**
	 Repeat a string

	 - Parameter str: The String to repeat
	 - Parameter times: the amount of times to repeat

	 - Returns: The String
	 */
	public func str_repeat(str: String, _ times: Int) -> String {
		var newString: String = ""
		
		for _ in 0 ..< times {
			newString = newString.stringByAppendingString(str)
		}
		
		return newString
	}
	
	/**
	 Replace all occurrences of the search string with the replacement string (*we only support strings*)

	 - Parameter search: string to search for
	 - Parameter replace: replace with
	 - Parameter subject: The String

	 - Returns: The replaced String
	 */
	public func str_replace(search: String, _ replace: String, _ subject: String) -> String {
		
		return subject.replace(search, withString: replace)
	}
	
	/**
	 Perform the rot13 transform on a string

	 - Parameter str: The String

	 - Returns: The String
	 */
	public func str_rot13(str: String) -> String {
		return ROT13().encrypt(str)
	}
	
	/**
	 Randomly shuffles a string (not done)

	 - Parameter str: The String

	 - Returns: The String
	 */
	public func str_shuffle(str: String) -> String {
		print("Sorry this function is not done")
		
		var arr: Array<String> = php.str_split(str)
		arr.shuffle()
		
		return php.implode("", arr)
	}
	
	/**
	 Convert a string to an array

	 - Parameter str: The String to split
	 - Parameter count: The count (defaults 1)

	 - Returns: The String splitted into a array
	 */
	public func str_split(str: String, _ count: Int = 1) -> Array<String> {
		var temporaryArray: Array<String> = Array<String>()
		var temporaryString: String = ""
		var temporaryCounter: Int = 1
		
        for i in (0...str.characters.count) {
			// Walk trough all the characters
			if (temporaryCounter == count) {
				// Put it in the array.
				// & Recount
				temporaryString = temporaryString.stringByAppendingString(String(str.characterAtIndex(i)))
				temporaryArray.append(temporaryString)
				temporaryString = ""
				temporaryCounter = 1
			} else {
				// Just add it to the "Temporary String"
				temporaryString = temporaryString.stringByAppendingString(String(str.characterAtIndex(i)))
				temporaryCounter += 1
			}
		}
		
		return temporaryArray // str
	}
	
	/**
	 Return information about words used in a string

	 *Differs from PHP, PHP counts a number as a new word, we don't!*

	 - Parameter str: The String
	 - Parameter format: 0 - returns the number of words found \
	 1 - returns an array containing all the words found inside the string \
	 2 - returns an associative array, where the key is the numeric position of the word inside the string and the value is the actual word itself (**Not supported**)
	 - Parameter charlist: *Not supported*.

	 - Returns: The count of the words
	 */
	public func str_word_count(str: String, _ mode: Int = 0, _ charlist: String = "DEFAULT") -> Any {
		if (mode < 2) {
			let temporaryReadArray: Array<String> = self.explode(str, " ")
			var temporaryWriteArray: Array<String> = Array<String>()
			
			for i in 0 ..< temporaryReadArray.count {
				if (temporaryReadArray[i] != "") {
					temporaryWriteArray.append(temporaryReadArray[i])
				}
			}
			
			if (mode == 1) {
				return temporaryWriteArray
			} else {
				return temporaryWriteArray.count
			}
		} else {
			print("Sorry, This is not supported")
			return 0
		}
	}
	
	/**
	 Binary safe case-insensitive string comparison (not done)

	 - Parameter str: The String

	 - Returns: The String
	 */
	public func strcasecmp(str: String) -> String {
		print("Sorry this function is not done")
		
		return str
	}
	
	/**
	 Alias of strstr

	 - Parameter str: The String
	 - Parameter find: find
	 - Parameter before: before?

	 - Returns: The part String
	 */
	public func strchr(str: String, _ find: String, _ before: Bool? = false) -> String {
		return php.strstr(str, find, before)
	}
	
	/**
	 Binary safe string comparison (not done)

	 - Parameter str: The String

	 - Returns: The String
	 */
	public func strcmp(str: String) -> String {
		print("Sorry this function is not done")
		
		return str
	}
	
	/**
	 **Not supported** Locale based string comparison

	 - Parameter str: The String

	 - Returns: The String
	 */
	public func strcoll(str: String) -> String {
		return str
	}
	
	/**
	 Find length of initial segment not matching mask (not done)

	 - Parameter str: The String

	 - Returns: The String
	 */
	public func strcspn(str: String) -> String {
		print("Sorry this function is not done")
		
		return str
	}
	
	/**
	 Strip HTML and PHP tags from a string

	 - Parameter str: The String

	 - Returns: The String
	 */
	public func strip_tags(str: String) -> String {
		do {
			let regex: NSRegularExpression = try NSRegularExpression(pattern: "<.*?>", options: NSRegularExpressionOptions.CaseInsensitive)
			let range = NSMakeRange(0, str.characters.count)
			let htmlLessString : String = regex.stringByReplacingMatchesInString(str, options: [], range: range, withTemplate: "")
			return htmlLessString
		}
		catch {
			print("Failed to parse HTML String")
			return str
		}
	}
	
	/**
	 Un-quote string quoted with addcslashes (not done)

	 - Parameter str: The String

	 - Returns: The String
	 */
	public func stripcslashes(str: String) -> String {
        return str.stringByReplacingOccurrencesOfString("\\\\", withString: "\\")
            .stringByReplacingOccurrencesOfString("\\'", withString: "'")
            .stringByReplacingOccurrencesOfString("\\\"", withString: "\"")
            .stringByReplacingOccurrencesOfString("\\\0", withString: "\0")
	}
	
	/**
	 Find the position of the first occurrence of a case-insensitive substring in a string (not done)

	 - Parameter str: The String

	 - Returns: The String
	 */
	public func stripos(str: String) -> String {
		print("Sorry this function is not done")
		
		return str
	}
	
	/**
	 Un-quotes a quoted string

	 - Parameter str: The String

	 - Returns: The String
	 */
	public func stripslashes(str: String) -> String {
        return str.stringByReplacingOccurrencesOfString("\\\\", withString: "\\")
            .stringByReplacingOccurrencesOfString("\\'", withString: "'")
            .stringByReplacingOccurrencesOfString("\\\"", withString: "\"")
            .stringByReplacingOccurrencesOfString("\\\0", withString: "\0")
	}
	
	/**
	 Case-insensitive strstr

     - Parameter str: The String
     - Parameter find: find
     - Parameter before: before?
     
     - Returns: The part String
	 */
    public func stristr(str: String, _ needle: String) -> Any {
        // string strrchr ( string $haystack , mixed $needle )
        // Explode & get end
        let exploded: Array<String> = php.explode(str, needle) ;
        
        if (exploded.count > 1) {
            return exploded[exploded.count - 1] ;
        } else {
            return false
        }
	}
	
	/**
	 Get string length

	 - Parameter str: The String

	 - Returns: The length
	 */
	public func strlen(str: String) -> Int {
		return str.characters.count
	}
	
	/**
	 Case insensitive string comparisons using a "natural order" algorithm (not done)

	 - Parameter str: The String

	 - Returns: The String
	 */
	public func strnatcasecmp(str: String) -> String {
		print("Sorry this function is not done")
		
		return str
	}
	
	/**
	 String comparisons using a "natural order" algorithm (not done)

	 - Parameter str: The String

	 - Returns: The String
	 */
	public func strnatcmp(str: String) -> String {
		print("Sorry this function is not done")
		
		return str
	}
	
	/**
	 Binary safe case-insensitive string comparison of the first n characters (not done)

	 - Parameter str: The String

	 - Returns: The String
	 */
	public func strncasecmp(str: String) -> String {
		print("Sorry this function is not done")
		
		return str
	}
	
	/**
	 Binary safe string comparison of the first n characters (not done)

	 - Parameter str: The String

	 - Returns: The String
	 */
	public func strncmp(str: String) -> String {
		print("Sorry this function is not done")
		
		return str
	}
	
	/**
	 Search a string for any of a set of characters (not done)

	 - Parameter str: The String

	 - Returns: The String
	 */
	public func strpbrk(str: String) -> String {
		print("Sorry this function is not done")
		
		return str
	}
	
	/**
	 Find the position of the first occurrence of a substring in a string (not done)

	 - Parameter str: The String

	 - Returns: The String
	 */
	public func strpos(str: String) -> String {
		print("Sorry this function is not done")
		
		return str
	}
	
	/**
	 Find the last occurrence of a character in a string

	 *Please note that we need at least 2 components, otherwise it will fail*

	 - Parameter str: input string
	 - Parameter needle: what do we need

	 - Returns: **Pass:** String\
	 **Fail:** Boolean (false)
	 */
	public func strrchr(str: String, _ needle: String) -> Any {
		// string strrchr ( string $haystack , mixed $needle )
		// Explode & get end
		let exploded: Array<String> = php.explode(str, needle) ;
		
		if (exploded.count > 1) {
			return exploded[exploded.count - 1] ;
		} else {
			return false
		}
	}
	
	/**
	 Reverse a string

	 - Parameter str: The String

	 - Returns: The String
	 */
	public func strrev(str: String) -> String {
		return String(str.characters.reverse())
	}
	
	/**
	 Find the position of the last occurrence of a case-insensitive substring in a string (not done)

	 - Parameter str: The String

	 - Returns: The String
	 */
	public func strripos(str: String) -> String {
		print("Sorry this function is not done")
		
		return str
	}
	
	/**
	 Find the position of the last occurrence of a substring in a string (not done)

	 - Parameter str: The String

	 - Returns: The String
	 */
	public func strrpos(str: String) -> String {
		print("Sorry this function is not done")
		
		return str
	}
	
	/**
	 Finds the length of the initial segment of a string consisting entirely of characters contained within a given mask. (not done)

	 - Parameter str: The String

	 - Returns: The String
	 */
	public func strspn(str: String) -> String {
		print("Sorry this function is not done")
		
		return str
	}
	
	/**
	 Find the first occurrence of a string

	 - Parameter str: The String
	 - Parameter find: find
	 - Parameter before: before?

	 - Returns: The part String
	 */
	public func strstr(str: String, _ find: String, _ before: Bool? = false) -> String {
		
		var exploded = php.explode(str, find)
		
		if (exploded.count < 1) {
			return str
		}
		
		if (before! || before == nil) {
			return exploded[0]
		} else {
			return exploded[1]
		}
	}
	
	/**
	 Tokenize string

	 - Parameter str: The String
	 - Parameter delimiter: The delimiter

	 - Returns: The String
	 */
	public func strtok(str: String, _ delimiter: String? = "\n\r") -> Any {
		let _returnIfAny = php.explode(str, delimiter!)
		if (_returnIfAny.count > 1) {
			return _returnIfAny
		} else {
			return false
		}
	}
	
	/**
	 Make a string lowercase

	 - Parameter str: The String

	 - Returns: The String
	 */
	public func strtolower(str: String) -> String {
		return str.lowercaseString
	}
	
	/**
	 Make a string uppercase

	 - Parameter str: The String

	 - Returns: The String
	 */
	public func strtoupper(str: String) -> String {
		return str.uppercaseString
	}
	
	/**
	 Translate characters or replace substrings

	 - Parameter str: The String
	 - Parameter from: from
	 - Parameter to: to

	 - Returns: The changed String
	 */
	public func strtr(str: String, _ from: String, _ to: String) -> String {
		if (from.length != to.length) {
			return str
		}
		
		var _str = str
		
		for i in 0 ..< from.length {
			_str = _str.replace(String(from[i]), withString: String(to[i]))
		}
		
		return _str
	}
	/**
	 Binary safe comparison of two strings from an offset, up to length characters (not done)

	 - Parameter str: The String

	 - Returns: The String
	 */
	public func substr_compare(str: String) -> String {
		print("Sorry this function is not done")
		
		return str
	}
	
	/**
	 Count the number of substring occurrences (not done)

	 - Parameter str: The String

	 - Returns: The String
	 */
	public func substr_count(str: String) -> String {
		print("Sorry this function is not done")
		
		return str
	}
	
	/**
	 Replace text within a portion of a string (not done)

	 - Parameter str: The String

	 - Returns: The String
	 */
	public func substr_replace(str: String) -> String {
		print("Sorry this function is not done")
		
		return str
	}
	
	/**
	 Return part of a string

	 - Parameter str: The String
	 - Parameter start: The start
	 - Parameter length: The length (optional, default: 0)

	 - More info: http://php.net/manual/en/function.substr.php

	 - Returns: The String
	 */
	public func substr(str: String, _ start: Int, _ length: Int = 0) -> String {
		// string substr ( string $string , int $start [, int $length ] )
		
		if (length == 0) {
			// We'll only have a 'start' position
			
			if (start < 1) {
				// Count down to end.
				let startPosition: Int = (str.characters.count + start)
				return str[startPosition...str.characters.count]
			} else {
				// Ok we'll start at point...
				return str[start...str.characters.count]
			}
		} else {
			// Ok, this could be fun, but we can also..
			// Nevermind.
			// We'll need to handle the length...
			
			if (length > 0) {
				if (start < 1) {
					// We'll know this trick!
					let startPosition: Int = (str.characters.count + start)
					
					// Will be postitive in the end. (hopefully :P)
					// Ok, this is amazing! let me explain
					// String Count - (String count - -Start Point) + length
					// ^^^ -- is + (Since Start Point is a negative number)
					// String Count - Start point + length
					var endPosition: Int = ((str.characters.count - (str.characters.count + start)) + length)
					
					// If the endposition > the string, just string length.
					if (endPosition > str.characters.count) {
						endPosition = str.characters.count
					}
					
					// i WILL return ;)
					return str[startPosition...endPosition]
				} else {
					// We'll know this trick!
					let startPosition: Int = start
					
					// Will be postitive in the end. (hopefully :P)
					var endPosition: Int = ((str.characters.count - start) + length)
					
					// If the endposition > the string, just string length.
					if (endPosition > str.characters.count) {
						endPosition = str.characters.count
					}
					
					// i WILL return ;)
					return str[startPosition...endPosition]
				}
			} else {
				// End tries to be funny.
				// so fix that.
				// Length (end = negative)
				
				if (start < 1) {
					// But, Wait. Start is also negative?!
					
					// Count down to end.
					let startPosition: Int = (str.characters.count + start)
					
					// We'll doing some magic here again, please, i don't explain this one also! (HAHA)
					var endPosition: Int = (str.characters.count - ((str.characters.count + start) + (length + 1)))
					
					// If the endposition > the string, just string length.
					if (endPosition > str.characters.count) {
						endPosition = str.characters.count
					}
					
					// i WILL return ;)
					return str[startPosition...endPosition]
				} else {
					// Ok we'll start at point...
					
					// Count down to end.
					let startPosition: Int = (str.characters.count - start)
					
					// We'll doing some magic here again, please, i don't explain this one also! (HAHA)
					var endPosition: Int = (str.characters.count - ((str.characters.count - start) + (length + 1)))
					
					// If the endposition > the string, just string length.
					if (endPosition > str.characters.count) {
						endPosition = str.characters.count
					}
					
					// i WILL return ;)
					return str[startPosition...endPosition]
				}
			}
			// we'll having fun now!
		}
		// And it's done.
	}
	
	/**
	 Strip whitespace (or other characters) from the beginning and end of a string

	 chrs includes standard:

	 " " (ASCII 32 (0x20)), an ordinary space.

	 "\t" (ASCII 9 (0x09)), a tab.

	 "\n" (ASCII 10 (0x0A)), a new line (line feed).

	 "\r" (ASCII 13 (0x0D)), a carriage return.

	 "\0" (ASCII 0 (0x00)), the NULL-byte.

	 "\x0B" (ASCII 11 (0x0B)), a vertical tab.

	 - Parameter str: The String
	 - Parameter chrs: Characters to trim (*ignored*)

	 - Returns: The String
	 */
	public func trim(str: String, _ chrs: String? = "_ALL_") -> String {
		return str.trimmed()
	}
	
	/**
	 Make a string's first character uppercase

	 - Parameter str: The String

	 - Returns: The String
	 */
	public func ucfirst(str: String) -> String {
		return String(str[0]).uppercaseString + String(str[1...(str.length)])
	}
	
	/**
	 Uppercase the first character of each word in a string

	 - Parameter str: The String

	 - Returns: The String
	 */
	public func ucwords(str: String) -> String {
		let splitted: Array = str.split(" ")
		var newString: String = ""
		for i in 0 ..< splitted.count {
			newString = newString.stringByAppendingString(String(splitted[i] [0]).uppercaseString + String(splitted[i] [1...(splitted[i].length)]))
			
			if (i < splitted.count - 1) {
				newString = newString.stringByAppendingString(" ")
			}
		}
		
		return newString
	}
	
	/**
	 **PHP.Framework**\
	 Write a formatted string to a stream
	 *via swift's print function*

	 **WARNING: use String(format:...)**

	 - Parameter ob: the object
	 */
	public func vfprintf(ob: Any...) -> Void {
		print(ob)
	}
	
	/**
	 **PHP.Framework**\
	 Output a formatted string
	 *via swift's print function*

	 **WARNING: use String(format:...)**

	 - Parameter ob: the object
	 */
	public func vprintf(ob: Any...) -> Void {
		print(ob)
	}
	
	/**
	 **PHP.Framework**\
	 Return a formatted string
	 *via swift's print function*

	 **WARNING: use String(format:...)**

	 - Parameter ob: the object
	 */
	public func vsprintf(ob: Any...) -> Void {
		print(ob)
	}
	
	/**
	 Wraps a string to a given number of characters (not done)

	 - Parameter str: The String
	 - Parameter width: The Width (default: 75)
	 - Parameter breaks: Breaking character (default: \n)
	 - Parameter cut: Just cut? (default: false)\
	 if false we will cut on whitespaces or dots\
	 if true we will cut if the limit is reached

	 - Returns: The String
	 */
	public func wordwrap(str: String, _ width: Int = 75, _ breaks: String = "\n", _ cut: Bool = false) -> String {
		// string wordwrap ( string $str [, int $width = 75 [, string $break = "\n" [, bool $cut = false ]]] )
		var myCount: Int = 0
		var myString: String = ""
		
		// Map to array!
		var StringToArray: Array<String> = Array<String>()
		let x = str.characters.map {StringToArray.append(String($0))} ;
		
		// Noop to ignore stupid swift not used errors
		php.noop(x)
		
		for i in (0 ..< StringToArray.count) {
			myString = myString.stringByAppendingString(StringToArray[i])
			
			if (myCount >= width) {
				if (cut) {
					// We'd like to cut always.
					myString = myString.stringByAppendingString(breaks)
					myCount = 0
				} else {
					// Only cut on a whitespace, or a dot!
					if (StringToArray[i] == " " || StringToArray[i] == ".") {
						myString = myString.stringByAppendingString(breaks)
						myCount = 0
					}
				}
			} else {
				myCount += 1
			}
		}
		return myString
	}
	
}