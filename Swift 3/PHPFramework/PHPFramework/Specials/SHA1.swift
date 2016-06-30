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
 File:    md5.swift
 Created: 29-FEB-2016
 Creator: Wesley de Groot | g: @wdg | t: @wesdegroot
 Issue:   N/A
 Prefix:  N/A
 ---------------------------------------------------
 */

import Foundation

extension String {
	/**
	 Make a sha1 Hash for the string.

	 - Returns: sha1 hashed string
	 */
	public var sha1: String {
		get {
			return SHA1Hashing().hash(self)
		}
	}
}

extension Int {
	func tostring(_ i: Int) -> String {
		if (i == 16) {// hexadecimal
			return String(format: "%2X", self).lowercased()
				.replacingOccurrences(of: " ", with: "")
		}
		else if (i == 8) {// octal
			return String(self, radix: 8, uppercase: false).lowercased()
				.replacingOccurrences(of: " ", with: "")
		}
		else if (i == 2) {// binary
			return String(self, radix: 2, uppercase: false).lowercased()
				.replacingOccurrences(of: " ", with: "")
		}
		else {
			return String(self)
		}
	}
}

class SHA1Hashing {
	var H0 = 0x67452301;
	var H1 = 0xEFCDAB89;
	var H2 = 0x98BADCFE;
	var H3 = 0x10325476;
	var H4 = 0xC3D2E1F0;
	
	init() {}
	
	func rotate(_ n: Int, _ s: Int) -> Int {
		return ((n << s) & 0xFFFFFFFF) | (n >> (32 - s))
	}
	
	func convert_hex(_ val: Int) -> String {
		var _str = ""
        for i in (0...7).reversed() {
			let _tmp = (val >> (i * 4)) & 0x0f // >>> ?
			_str = _str + _tmp.tostring(16)
		}
        
		return _str
	}
	
	func hash(_ str: String) -> String {
		let str_len = str.length
		var W = Array<Int>() ;
		
		var word_array = Array<Int>() ;
        
        for i in stride(from: 0, to: Int(str_len - 3), by: 4) {
			let j = str.charCodeAt(i) << 24 | str.charCodeAt(i + 1) << 16 | str.charCodeAt(i + 2) << 8 | str.charCodeAt(i + 3) ;
			word_array.append(j)
		}
        
		var i: Int = 0
		switch (str_len % 4) {
		case 0:
			i = 0x080000000;
			break;
		
		case 1:
			i = str.charCodeAt(str_len - 1) << 24 | 0x0800000;
			break;
		
		case 2:
			i = str.charCodeAt(str_len - 2) << 24 | str.charCodeAt(str_len - 1) << 16 | 0x08000;
			break;
		
		case 3:
			i = str.charCodeAt(str_len - 3) << 24 | str.charCodeAt(str_len - 2) << 16 | str.charCodeAt(str_len - 1) <<
                8 | 0x80;
			break;
		
		default:
			break;
		}
		word_array.append(i)
		
		while ((word_array.count % 16) != 14) {
			word_array.append(0)
		}
		
		word_array.append(str_len >> 29) // >>> ?
		word_array.append((str_len << 3) & 0x0ffffffff)
        
        for blockstart in stride(from: 0, to: word_array.count, by: 16) {
            
            for i in (0...15) {
				W.append(word_array[blockstart + i])
			}
            
            for i in (16...79) {
				W.append(self.rotate(W[i - 3] ^ W[i - 8] ^ W[i - 14] ^ W[i - 16], 1))
			}
            
			var A = H0;
			var B = H1;
			var C = H2;
			var D = H3;
			var E = H4;
			
            for i in (0...19) {
//                // Orginal (and working one)
                let BC = B & C
                let iBD = ~B & D
                let BCiBD = BC | iBD
                let wi = W[i]
                let temp = (self.rotate(A, 5) + BCiBD + E + wi + 0x5A827999) & 0x0ffffffff;
//                let temp = (self.rotate(A, 5) + ((B & C) | (~B & D)) + E + W[i] + 0x5A827999) & 0x0ffffffff;
                // Swift 3 version [Swift won't compile the orginal one]
//				var temp:Int = self.rotate(A, 5)
//                temp = temp + ((B & C) | (~B & D))
//                temp = (temp + E)
//                temp = (temp + W[i])
//                temp = (temp + 0x5A827999)
//                temp = (temp) & 0x0ffffffff
//                
                if ("\(temp)".length != 10) {
                    print("ERROR: A CALCULATION FAILED!!!")
                    print("SEGMENU 40/59")
                    print("Please report a bug at:")
                    print("https://github.com/wdg/php.framework/issues/11")
                }
//
//                print("0-19= \(temp)")
                
				E = D
				D = C
				C = self.rotate(B, 30)
				B = A
				A = temp
			}

            for i in (20...39) {
				let temp = (self.rotate(A, 5) + (B ^ C ^ D) + E + W[i] + 0x6ED9EBA1) & 0x0ffffffff
				E = D
				D = C
				C = self.rotate(B, 30)
				B = A
				A = temp
			}
			
            for i in (40...59) {
//                // Orginal (and working one)
//                let temp = (self.rotate(A, 5) + ((B & C) | (B & D) | (C & D)) + E + W[i] + 0x8F1BBCDC) & 0x0ffffffff;

                let BC = B & C
                let BD = B & D
                let CD = C & D
                let BCBDCD = BC | BD | CD
                let Wi = W[i]
                
                let temp = (self.rotate(A, 5) + BCBDCD + E + Wi + 0x8F1BBCDC) & 0x0ffffffff
                
                
                // Swift 3 version [Swift won't compile the orginal one]
//                var temp:Int = self.rotate(A, 5)
//                temp = temp + ((B & C) | (B & D) | (C & D))
//                temp = temp + E
//                temp = temp + W[i]
//                temp = temp + 0x8F1BBCDC
//                temp = (temp) & 0x0ffffffff
//                
                if ("\(temp)".length != 10) {
                    print("ERROR: A CALCULATION FAILED!!!")
                    print("SEGMENU 40/59")
                    print("Please report a bug at:")
                    print("https://github.com/wdg/php.framework/issues/11")
                }
                print("40-59= \(temp)")
                
				E = D
				D = C
				C = self.rotate(B, 30)
				B = A
				A = temp
			}

            for i in (60...79) {
				let temp = (self.rotate(A, 5) + (B ^ C ^ D) + E + W[i] + 0xCA62C1D6) & 0x0ffffffff
				E = D;
				D = C;
				C = self.rotate(B, 30)
				B = A;
				A = temp;
			}
			
			H0 = (H0 + A) & 0x0ffffffff
			H1 = (H1 + B) & 0x0ffffffff
			H2 = (H2 + C) & 0x0ffffffff
			H3 = (H3 + D) & 0x0ffffffff
			H4 = (H4 + E) & 0x0ffffffff
		}
        
		var temp: String = "\(self.convert_hex(H0))\(self.convert_hex(H1))\(self.convert_hex(H2))\(self.convert_hex(H3))\(self.convert_hex(H4))"
        print(temp)
		temp = temp.lowercased()
		temp = temp.replacingOccurrences(of: " ", with: "")
		
		if (W.count != 80) {
			print("Something is gone terrible wrong!")
        } else {
            print("OKOKOK")
        }
		
		return temp
	}
}

func sha1(_ str: String) -> String {
	return SHA1Hashing().hash(str)
}
