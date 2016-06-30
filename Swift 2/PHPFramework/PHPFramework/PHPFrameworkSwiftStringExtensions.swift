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
 File:    PHPFrameworkSwiftStringExtensions.swift
 Created: 18-FEB-2016
 Creator: Wesley de Groot | g: @wdg | t: @wesdegroot
 Issue:   N/A
 Prefix:  N/A
 ---------------------------------------------------
 */

import Foundation

/**
 Extensions for Strings
 */
public extension String {
	private struct HTMLEntities {
		static let characterEntities : [String: Character] = [
			
			// XML predefined entities:
			"&amp;" : "&",
			"&quot;" : "\"",
			"&apos;" : "'",
			"&lt;" : "<",
			"&gt;" : ">",
			
			// HTML character entity references:
			"&nbsp;" : "\u{00A0}",
			"&iexcl;" : "\u{00A1}",
			"&cent;" : "\u{00A2}",
			"&pound;" : "\u{00A3}",
			"&curren;" : "\u{00A4}",
			"&yen;" : "\u{00A5}",
			"&brvbar;" : "\u{00A6}",
			"&sect;" : "\u{00A7}",
			"&uml;" : "\u{00A8}",
			"&copy;" : "\u{00A9}",
			"&ordf;" : "\u{00AA}",
			"&laquo;" : "\u{00AB}",
			"&not;" : "\u{00AC}",
			"&shy;" : "\u{00AD}",
			"&reg;" : "\u{00AE}",
			"&macr;" : "\u{00AF}",
			"&deg;" : "\u{00B0}",
			"&plusmn;" : "\u{00B1}",
			"&sup2;" : "\u{00B2}",
			"&sup3;" : "\u{00B3}",
			"&acute;" : "\u{00B4}",
			"&micro;" : "\u{00B5}",
			"&para;" : "\u{00B6}",
			"&middot;" : "\u{00B7}",
			"&cedil;" : "\u{00B8}",
			"&sup1;" : "\u{00B9}",
			"&ordm;" : "\u{00BA}",
			"&raquo;" : "\u{00BB}",
			"&frac14;" : "\u{00BC}",
			"&frac12;" : "\u{00BD}",
			"&frac34;" : "\u{00BE}",
			"&iquest;" : "\u{00BF}",
			"&Agrave;" : "\u{00C0}",
			"&Aacute;" : "\u{00C1}",
			"&Acirc;" : "\u{00C2}",
			"&Atilde;" : "\u{00C3}",
			"&Auml;" : "\u{00C4}",
			"&Aring;" : "\u{00C5}",
			"&AElig;" : "\u{00C6}",
			"&Ccedil;" : "\u{00C7}",
			"&Egrave;" : "\u{00C8}",
			"&Eacute;" : "\u{00C9}",
			"&Ecirc;" : "\u{00CA}",
			"&Euml;" : "\u{00CB}",
			"&Igrave;" : "\u{00CC}",
			"&Iacute;" : "\u{00CD}",
			"&Icirc;" : "\u{00CE}",
			"&Iuml;" : "\u{00CF}",
			"&ETH;" : "\u{00D0}",
			"&Ntilde;" : "\u{00D1}",
			"&Ograve;" : "\u{00D2}",
			"&Oacute;" : "\u{00D3}",
			"&Ocirc;" : "\u{00D4}",
			"&Otilde;" : "\u{00D5}",
			"&Ouml;" : "\u{00D6}",
			"&times;" : "\u{00D7}",
			"&Oslash;" : "\u{00D8}",
			"&Ugrave;" : "\u{00D9}",
			"&Uacute;" : "\u{00DA}",
			"&Ucirc;" : "\u{00DB}",
			"&Uuml;" : "\u{00DC}",
			"&Yacute;" : "\u{00DD}",
			"&THORN;" : "\u{00DE}",
			"&szlig;" : "\u{00DF}",
			"&agrave;" : "\u{00E0}",
			"&aacute;" : "\u{00E1}",
			"&acirc;" : "\u{00E2}",
			"&atilde;" : "\u{00E3}",
			"&auml;" : "\u{00E4}",
			"&aring;" : "\u{00E5}",
			"&aelig;" : "\u{00E6}",
			"&ccedil;" : "\u{00E7}",
			"&egrave;" : "\u{00E8}",
			"&eacute;" : "\u{00E9}",
			"&ecirc;" : "\u{00EA}",
			"&euml;" : "\u{00EB}",
			"&igrave;" : "\u{00EC}",
			"&iacute;" : "\u{00ED}",
			"&icirc;" : "\u{00EE}",
			"&iuml;" : "\u{00EF}",
			"&eth;" : "\u{00F0}",
			"&ntilde;" : "\u{00F1}",
			"&ograve;" : "\u{00F2}",
			"&oacute;" : "\u{00F3}",
			"&ocirc;" : "\u{00F4}",
			"&otilde;" : "\u{00F5}",
			"&ouml;" : "\u{00F6}",
			"&divide;" : "\u{00F7}",
			"&oslash;" : "\u{00F8}",
			"&ugrave;" : "\u{00F9}",
			"&uacute;" : "\u{00FA}",
			"&ucirc;" : "\u{00FB}",
			"&uuml;" : "\u{00FC}",
			"&yacute;" : "\u{00FD}",
			"&thorn;" : "\u{00FE}",
			"&yuml;" : "\u{00FF}",
			"&OElig;" : "\u{0152}",
			"&oelig;" : "\u{0153}",
			"&Scaron;" : "\u{0160}",
			"&scaron;" : "\u{0161}",
			"&Yuml;" : "\u{0178}",
			"&fnof;" : "\u{0192}",
			"&circ;" : "\u{02C6}",
			"&tilde;" : "\u{02DC}",
			"&Alpha;" : "\u{0391}",
			"&Beta;" : "\u{0392}",
			"&Gamma;" : "\u{0393}",
			"&Delta;" : "\u{0394}",
			"&Epsilon;" : "\u{0395}",
			"&Zeta;" : "\u{0396}",
			"&Eta;" : "\u{0397}",
			"&Theta;" : "\u{0398}",
			"&Iota;" : "\u{0399}",
			"&Kappa;" : "\u{039A}",
			"&Lambda;" : "\u{039B}",
			"&Mu;" : "\u{039C}",
			"&Nu;" : "\u{039D}",
			"&Xi;" : "\u{039E}",
			"&Omicron;" : "\u{039F}",
			"&Pi;" : "\u{03A0}",
			"&Rho;" : "\u{03A1}",
			"&Sigma;" : "\u{03A3}",
			"&Tau;" : "\u{03A4}",
			"&Upsilon;" : "\u{03A5}",
			"&Phi;" : "\u{03A6}",
			"&Chi;" : "\u{03A7}",
			"&Psi;" : "\u{03A8}",
			"&Omega;" : "\u{03A9}",
			"&alpha;" : "\u{03B1}",
			"&beta;" : "\u{03B2}",
			"&gamma;" : "\u{03B3}",
			"&delta;" : "\u{03B4}",
			"&epsilon;" : "\u{03B5}",
			"&zeta;" : "\u{03B6}",
			"&eta;" : "\u{03B7}",
			"&theta;" : "\u{03B8}",
			"&iota;" : "\u{03B9}",
			"&kappa;" : "\u{03BA}",
			"&lambda;" : "\u{03BB}",
			"&mu;" : "\u{03BC}",
			"&nu;" : "\u{03BD}",
			"&xi;" : "\u{03BE}",
			"&omicron;" : "\u{03BF}",
			"&pi;" : "\u{03C0}",
			"&rho;" : "\u{03C1}",
			"&sigmaf;" : "\u{03C2}",
			"&sigma;" : "\u{03C3}",
			"&tau;" : "\u{03C4}",
			"&upsilon;" : "\u{03C5}",
			"&phi;" : "\u{03C6}",
			"&chi;" : "\u{03C7}",
			"&psi;" : "\u{03C8}",
			"&omega;" : "\u{03C9}",
			"&thetasym;" : "\u{03D1}",
			"&upsih;" : "\u{03D2}",
			"&piv;" : "\u{03D6}",
			"&ensp;" : "\u{2002}",
			"&emsp;" : "\u{2003}",
			"&thinsp;" : "\u{2009}",
			"&zwnj;" : "\u{200C}",
			"&zwj;" : "\u{200D}",
			"&lrm;" : "\u{200E}",
			"&rlm;" : "\u{200F}",
			"&ndash;" : "\u{2013}",
			"&mdash;" : "\u{2014}",
			"&lsquo;" : "\u{2018}",
			"&rsquo;" : "\u{2019}",
			"&sbquo;" : "\u{201A}",
			"&ldquo;" : "\u{201C}",
			"&rdquo;" : "\u{201D}",
			"&bdquo;" : "\u{201E}",
			"&dagger;" : "\u{2020}",
			"&Dagger;" : "\u{2021}",
			"&bull;" : "\u{2022}",
			"&hellip;" : "\u{2026}",
			"&permil;" : "\u{2030}",
			"&prime;" : "\u{2032}",
			"&Prime;" : "\u{2033}",
			"&lsaquo;" : "\u{2039}",
			"&rsaquo;" : "\u{203A}",
			"&oline;" : "\u{203E}",
			"&frasl;" : "\u{2044}",
			"&euro;" : "\u{20AC}",
			"&image;" : "\u{2111}",
			"&weierp;" : "\u{2118}",
			"&real;" : "\u{211C}",
			"&trade;" : "\u{2122}",
			"&alefsym;" : "\u{2135}",
			"&larr;" : "\u{2190}",
			"&uarr;" : "\u{2191}",
			"&rarr;" : "\u{2192}",
			"&darr;" : "\u{2193}",
			"&harr;" : "\u{2194}",
			"&crarr;" : "\u{21B5}",
			"&lArr;" : "\u{21D0}",
			"&uArr;" : "\u{21D1}",
			"&rArr;" : "\u{21D2}",
			"&dArr;" : "\u{21D3}",
			"&hArr;" : "\u{21D4}",
			"&forall;" : "\u{2200}",
			"&part;" : "\u{2202}",
			"&exist;" : "\u{2203}",
			"&empty;" : "\u{2205}",
			"&nabla;" : "\u{2207}",
			"&isin;" : "\u{2208}",
			"&notin;" : "\u{2209}",
			"&ni;" : "\u{220B}",
			"&prod;" : "\u{220F}",
			"&sum;" : "\u{2211}",
			"&minus;" : "\u{2212}",
			"&lowast;" : "\u{2217}",
			"&radic;" : "\u{221A}",
			"&prop;" : "\u{221D}",
			"&infin;" : "\u{221E}",
			"&ang;" : "\u{2220}",
			"&and;" : "\u{2227}",
			"&or;" : "\u{2228}",
			"&cap;" : "\u{2229}",
			"&cup;" : "\u{222A}",
			"&int;" : "\u{222B}",
			"&there4;" : "\u{2234}",
			"&sim;" : "\u{223C}",
			"&cong;" : "\u{2245}",
			"&asymp;" : "\u{2248}",
			"&ne;" : "\u{2260}",
			"&equiv;" : "\u{2261}",
			"&le;" : "\u{2264}",
			"&ge;" : "\u{2265}",
			"&sub;" : "\u{2282}",
			"&sup;" : "\u{2283}",
			"&nsub;" : "\u{2284}",
			"&sube;" : "\u{2286}",
			"&supe;" : "\u{2287}",
			"&oplus;" : "\u{2295}",
			"&otimes;" : "\u{2297}",
			"&perp;" : "\u{22A5}",
			"&sdot;" : "\u{22C5}",
			"&lceil;" : "\u{2308}",
			"&rceil;" : "\u{2309}",
			"&lfloor;" : "\u{230A}",
			"&rfloor;" : "\u{230B}",
			"&lang;" : "\u{2329}",
			"&rang;" : "\u{232A}",
			"&loz;" : "\u{25CA}",
			"&spades;" : "\u{2660}",
			"&clubs;" : "\u{2663}",
			"&hearts;" : "\u{2665}",
			"&diams;" : "\u{2666}",
		]
	}
	
	/**
	 get string length
	 */
	public var length: Int {
		get {
			return self.characters.count
		}
	}
	
	/**
	 contains

	 - Parameter s: String to check

	 - Returns: true/false
	 */
	public func contains(s: String) -> Bool {
		return self.rangeOfString(s) != nil ? true : false
	}
	
	/**
	 Replace

	 - Parameter target: String
	 - Parameter withString: Replacement

	 - Returns: Replaced string
	 */
	public func replace(target: String, withString: String) -> String {
		return self.stringByReplacingOccurrencesOfString(target, withString: withString, options: NSStringCompareOptions.LiteralSearch, range: nil)
	}
	
    /**
     Replace (Case Insensitive)
     
     - Parameter target: String
     - Parameter withString: Replacement
     
     - Returns: Replaced string
     */
    public func ireplace(target: String, withString: String) -> String {
        return self.stringByReplacingOccurrencesOfString(target, withString: withString, options: NSStringCompareOptions.CaseInsensitiveSearch, range: nil)
    }
    
	/**
	 Character At Index

	 - Parameter index: The index

	 - Returns Character
	 */
	func characterAtIndex(index: Int) -> Character! {
		var cur = 0
		for char in self.characters {
			if cur == index {
				return char
			}
			cur += 1
		}
		return nil
	}
	
	/**
	 Character Code At Index

	 - Parameter index: The index

	 - Returns Character
	 */
	func charCodeAtindex(index: Int) -> Int! {
		return self.charCodeAt(index)
	}
	
	/**
	 add subscript

	 - Parameter i: The index

	 - Returns: The ranged string
	 */
	public subscript(i: Int) -> Character {
		get {
			let index = self.startIndex.advancedBy(i)
			return self[index]
		}
	}
	/**
	 add subscript

	 - Parameter r: Range [1..2]

	 - Returns: The ranged string.
	 */
	public subscript(r: Range<Int>) -> String {
		get {
			let startIndex = self.startIndex.advancedBy(r.startIndex)
			let endIndex = self.startIndex.advancedBy(r.endIndex - 1)
			
			return self[startIndex..<endIndex]
		}
	}
	
	/**
	 Finds the string between two bookend strings if it can be found.

	 - parameter left:  The left bookend
	 - parameter right: The right bookend

	 - returns: The string between the two bookends, or nil if the bookends cannot be found, the bookends are the same or appear contiguously.
	 */
	func between(left: String, _ right: String) -> String? {
		guard
		let leftRange = rangeOfString(left), rightRange = rangeOfString(right, options: .BackwardsSearch)
		where left != right && leftRange.endIndex != rightRange.startIndex
		else {return nil}
		
		return self[leftRange.endIndex...rightRange.startIndex.predecessor()]
		
	}
	
	// https://gist.github.com/stevenschobert/540dd33e828461916c11
	func camelize() -> String {
		let source = clean(" ", allOf: "-", "_")
		if source.characters.contains(" ") {
			let first = source.substringToIndex(source.startIndex.advancedBy(1))
			let cammel = NSString(format: "%@", (source as NSString).capitalizedString.stringByReplacingOccurrencesOfString(" ", withString: "", options: [], range: nil)) as String
			let rest = String(cammel.characters.dropFirst())
			return "\(first)\(rest)"
		} else {
			let first = (source as NSString).lowercaseString.substringToIndex(source.startIndex.advancedBy(1))
			let rest = String(source.characters.dropFirst())
			return "\(first)\(rest)"
		}
	}
	
	func capitalize() -> String {
		return capitalizedString
	}
	
	func chompLeft(prefix: String) -> String {
		if let prefixRange = rangeOfString(prefix) {
			if prefixRange.endIndex >= endIndex {
				return self[startIndex..<prefixRange.startIndex]
			} else {
				return self[prefixRange.endIndex..<endIndex]
			}
		}
		return self
	}
	
	func chompRight(suffix: String) -> String {
		if let suffixRange = rangeOfString(suffix, options: .BackwardsSearch) {
			if suffixRange.endIndex >= endIndex {
				return self[startIndex..<suffixRange.startIndex]
			} else {
				return self[suffixRange.endIndex..<endIndex]
			}
		}
		return self
	}
	
	func collapseWhitespace() -> String {
		let components = componentsSeparatedByCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet()).filter {!$0.isEmpty}
		return components.joinWithSeparator(" ")
	}
	
	func clean(with: String, allOf: String...) -> String {
		var string = self
		for target in allOf {
			string = string.stringByReplacingOccurrencesOfString(target, withString: with)
		}
		return string
	}
	
	func count(substring: String) -> Int {
		return componentsSeparatedByString(substring).count - 1
	}
	
	func endsWith(suffix: String) -> Bool {
		return hasSuffix(suffix)
	}
	
	func ensureLeft(prefix: String) -> String {
		if startsWith(prefix) {
			return self
		} else {
			return "\(prefix)\(self)"
		}
	}
	
	func ensureRight(suffix: String) -> String {
		if endsWith(suffix) {
			return self
		} else {
			return "\(self)\(suffix)"
		}
	}
	
	func indexOf(substring: String) -> Int? {
		if let range = rangeOfString(substring) {
			return startIndex.distanceTo(range.startIndex)
		}
		return nil
	}
	
	func initials() -> String {
		let words = self.componentsSeparatedByString(" ")
		return words.reduce("") {$0 + $1[0...0]}
	}
	
	func initialsFirstAndLast() -> String {
		let words = self.componentsSeparatedByString(" ")
		return words.reduce("") {($0 == "" ? "" : $0[0...0]) + $1[0...0]}
	}
	
	func isAlpha() -> Bool {
		for chr in characters {
			if (!(chr >= "a" && chr <= "z") && !(chr >= "A" && chr <= "Z")) {
				return false
			}
		}
		return true
	}
	
	func isAlphaNumeric() -> Bool {
		let alphaNumeric = NSCharacterSet.alphanumericCharacterSet()
		return componentsSeparatedByCharactersInSet(alphaNumeric).joinWithSeparator("").length == 0
	}
	
	func isEmpty() -> Bool {
		let nonWhitespaceSet = NSCharacterSet.whitespaceAndNewlineCharacterSet().invertedSet
		return componentsSeparatedByCharactersInSet(nonWhitespaceSet).joinWithSeparator("").length != 0
	}
	
	func isNumeric() -> Bool {
		if let _ = NSNumberFormatter().numberFromString(self) {
			return true
		}
		return false
	}
	
	func join<S : SequenceType>(elements: S) -> String {
		return elements.map {String($0)}.joinWithSeparator(self)
	}
	
	func latinize() -> String {
		return self.stringByFoldingWithOptions(.DiacriticInsensitiveSearch, locale: NSLocale.currentLocale())
	}
	
	func lines() -> [String] {
		return characters.split {$0 == "\n"}.map(String.init)
	}
	
	func pad(n: Int, _ string: String = " ") -> String {
		return "".join([string.times(n), self, string.times(n)])
	}
	
	func padLeft(n: Int, _ string: String = " ") -> String {
		return "".join([string.times(n), self])
	}
	
	func padRight(n: Int, _ string: String = " ") -> String {
		return "".join([self, string.times(n)])
	}
	
	func slugify() -> String {
		let slugCharacterSet = NSCharacterSet(charactersInString: "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-")
		return latinize()
			.lowercaseString
			.componentsSeparatedByCharactersInSet(slugCharacterSet.invertedSet)
			.filter {$0 != ""}
			.joinWithSeparator("-")
	}
	
	func split(separator: Character) -> [String] {
		return characters.split {$0 == separator}.map(String.init)
	}
	
    var textLines: [String] {
        return split("\n")
    }
    
    var words: [String] {
        return split(" ")
    }
    
	func startsWith(prefix: String) -> Bool {
		return hasPrefix(prefix)
	}
	
	func stripPunctuation() -> String {
		return componentsSeparatedByCharactersInSet(.punctuationCharacterSet())
			.joinWithSeparator("")
			.componentsSeparatedByString(" ")
			.filter {$0 != ""}
			.joinWithSeparator(" ")
	}
	
	func times(n: Int) -> String {
		return (0..<n).reduce("") {$0.0 + self}
	}
	
	func toFloat() -> Float? {
		if let number = NSNumberFormatter().numberFromString(self) {
			return number.floatValue
		}
		return nil
	}
	
	func toInt() -> Int? {
		if let number = NSNumberFormatter().numberFromString(self) {
			return number.integerValue
		}
		return nil
	}
	
	func toDouble(locale: NSLocale = NSLocale.systemLocale()) -> Double? {
		let nf = NSNumberFormatter()
		nf.locale = locale
		if let number = nf.numberFromString(self) {
			return number.doubleValue
		}
		return nil
	}
	
	/**
	 Convert anything to bool...

	 - Returns: Bool
	 */
	func toBool() -> Bool? {
		let trimmed = self.trimmed().lowercaseString
		if trimmed == "true" || trimmed == "false" {
			return (trimmed as NSString).boolValue
		}
		return nil
	}
	
	func toDate(format: String = "yyyy-MM-dd") -> NSDate? {
		let dateFormatter = NSDateFormatter()
		dateFormatter.dateFormat = format
		return dateFormatter.dateFromString(self)
	}
	
	func toDateTime(format : String = "yyyy-MM-dd HH:mm:ss") -> NSDate? {
		return toDate(format)
	}
	
	/**
	 trimmedLeft

	 - Returns: Left trimmed string
	 */
	func trimmedLeft() -> String {
		if let range = rangeOfCharacterFromSet(NSCharacterSet.whitespaceAndNewlineCharacterSet().invertedSet) {
			return self[range.startIndex..<endIndex]
		}
		
		return self
	}
	
	/**
	 trimmedRight

	 - Returns: Right trimmed string
	 */
	func trimmedRight() -> String {
		if let range = rangeOfCharacterFromSet(NSCharacterSet.whitespaceAndNewlineCharacterSet().invertedSet, options: NSStringCompareOptions.BackwardsSearch) {
			return self[startIndex..<range.endIndex]
		}
		
		return self
	}
	
	/**
	 trimmed

	 - Returns: Left & Right trimmed.
	 */
	func trimmed() -> String {
		return trimmedLeft().trimmedRight()
	}
	
	/**
	 Convert the number in the string to the corresponding\
	 Unicode character, e.g.\
	 <pre>
	 decodeNumeric("64", 10)   --> "@"
	 decodeNumeric("20ac", 16) --> "€"
	 </pre>

	 - Parameter string
	 - Parameter base
	 - Returns: Character
	 */
	private func decodeNumeric(string : String, base : Int32) -> Character? {
		let code = UInt32(strtoul(string, nil, base))
		return Character(UnicodeScalar(code))
	}
	
	/**
	 Decode the HTML character entity to the corresponding\
	 Unicode character, return `nil` for invalid input.\
	 <pre>
	 decode("&amp;#64;")    --> "@"
	 decode("&amp;#x20ac;") --> "€"
	 decode("&amp;lt;")     --> "<"
	 decode("&amp;foo;")    --> nil
	 </pre>

	 - Parameter entity: The entities
	 - Returns: Character
	 */
	private func decode(entity : String) -> Character? {
		if entity.hasPrefix("&#x") || entity.hasPrefix("&#X") {
			return decodeNumeric(entity.substringFromIndex(entity.startIndex.advancedBy(3)), base: 16)
		} else if entity.hasPrefix("&#") {
			return decodeNumeric(entity.substringFromIndex(entity.startIndex.advancedBy(2)), base: 10)
		} else {
			return HTMLEntities.characterEntities[entity]
		}
	}
	
	/**
	 Returns a new string made by replacing in the `String` all HTML character entity references with the corresponding character.

	 - Returns: the decoded HTML
	 */
	func decodeHTML() -> String {
		var result = ""
		var position = startIndex
		
		// Find the next '&' and copy the characters preceding it to `result`:
		while let ampRange = self.rangeOfString("&", range: position..<endIndex) {
			result.appendContentsOf(self[position..<ampRange.startIndex])
			position = ampRange.startIndex
			
			// Find the next ';' and copy everything from '&' to ';' into `entity`
			if let semiRange = self.rangeOfString(";", range: position..<endIndex) {
				let entity = self[position..<semiRange.endIndex]
				position = semiRange.endIndex
				
				if let decoded = decode(entity) {
					// Replace by decoded character:
					result.append(decoded)
				} else {
					// Invalid entity, copy verbatim:
					result.appendContentsOf(entity)
				}
			} else {
				// No matching ';'.
				break
			}
		}
		// Copy remaining characters to `result`:
		result.appendContentsOf(self[position..<endIndex])
		return result
	}
	
	/**
	 Encode the HTML

	 - Returns: the encoded HTML
	 */
	public func encodeHTML() -> String {
		// Ok, this feels weird.
		var _tempString = self
		
		// First do the amperstand, otherwise it will ruin everything.
		_tempString.replace("&", withString: "&amp;")
		
		// Loop trough the HTMLEntities.
		for (index, value) in HTMLEntities.characterEntities {
			// Ignore the "&".
			if (String(value) != "&") {
				// Replace val, with index.
				_tempString = _tempString.replace(String(value), withString: index)
			}
		}
		
		// return and be happy
		return _tempString
	}
	
	/**
	 getHTMLEntities

	 - Returns: the HTMLEntities.
	 */
	public func getHTMLEntities() -> [String: Character] {
		// PHP, Shame on you. but here you'll go.
		return HTMLEntities.characterEntities
	}
	
	/**
	 Charcode for the character at index x

	 - Parameter Char: the character index

	 - Returns: charcode (int)
	 */
	func charCodeAt(Char: Int) -> Int {
		// ok search for the character...
		
		if (self.length > Char) {
			let character = String(self.characterAtIndex(Char))
			return Int(String(character.unicodeScalars.first!.value))!
		} else {
			return 0
		}
	}
    func UcharCodeAt(Char: Int) -> UInt {
        // ok search for the character...
        
        if (self.length > Int(Char)) {
            let character = String(self.characterAtIndex(Int(Char)))
            return UInt(String(character.unicodeScalars.first!.value))!
        } else {
            return 0
        }
    }
	
	/**
	 Substring a string.

	 - Parameter start: the start
	 - Parameter length: the length

	 - Returns: the substring
	 */
	func substr(start: Int, _ length: Int = 0) -> String {
		let str = self
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
}