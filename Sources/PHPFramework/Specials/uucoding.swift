/// **
// _____    _    _   _____    ______                                           _
// |  __ \  | |  | | |  __ \  |  ____|                                         | |
// | |__) | | |__| | | |__) | | |__ _ __ __ _ _ __ ___   _____      _____  _ __| | __
// |  ___/  |  __  | |  ___/  |  __| '__/ _` | '_ ` _ \ / _ \ \ /\ / / _ \| '__| |/ /
// | |      | |  | | | |  _   | |  | | | (_| | | | | | |  __/\ V  V / (_) | |  |   <
// |_|      |_|  |_| |_| (_)  |_|  |_|  \__,_|_| |_| |_|\___| \_/\_/ \___/|_|  |_|\_\
//
//
// Copyright (c) 2016 Wesley de Groot (http://www.wesleydegroot.nl), WDGWV (http://www.wdgwv.com)
//
//
// Variable prefixes:
// PFS = PHP.Framework Shared
// PFT = PHP.Framework Tests (internal)
// PFI = PHP.Framework Internal
// PFU = PHP.Framework Unspecified
//
// usage:
// php.the_php_function(and, parameters, ofcourse)
//
// documentation:
// http://wdg.github.io/php.framework/
//
// wiki:
// https://github.com/wdg/php.framework/wiki
//
// questions/bugs:
// https://github.com/wdg/php.framework/issues
//
// ---------------------------------------------------
// File:    uucoding.swift
// Created: 15-MAY-2016
// Creator: Wesley de Groot | g: @wdg | t: @wesdegroot
// Issue:   N/A
// Prefix:  N/A
// ---------------------------------------------------
// */
//
// import Foundation
//
//// extension CChar {
////    var xtoInt: Int {
////        // xxx
////        // Array<CChar>
////        return Int.init(self)
////    }
////
////    var xtoString: String {
////        let cString:UnsafeMutablePointer<Int8> = UnsafeMutablePointer(self)
////        return String.init(CString: cString, encoding: NSUTF8StringEncoding)!
////    }
//// }
//
// extension CChar {
//	var toInt: Int {
//		return Int.init(self)
//	}
//
//	var toString: String {
//		return String(UTF8String: UnsafePointer<CChar>(bitPattern: Int(self)))!
//	}
// }
//
// public class uucoding {
//	let uuDigit = [
//		"`", "!", "\"", "#", "$", "%", "&", "'",
//		"(", ")", "*", "+", ",", "-", ".", "/",
//		"0", "1", "2", "3", "4", "5", "6", "7",
//		"8", "9", ":", ";", "<", "=", ">", "?",
//		"@", "A", "B", "C", "D", "E", "F", "G",
//		"H", "I", "J", "K", "L", "M", "N", "O",
//		"P", "Q", "R", "S", "T", "U", "V", "W",
//		"X", "Y", "Z", "[", "\\", "]", "^", "_"
//	]
//	let UUENCODE_LENGTH = 45
//	let UUDECODE_LENGTH = 61
//
//	private func UUDECODE(c: CChar) -> String {
//		return c.toString == "`" ? "0" : "\(c) "
//	}
//
//	private func N64(i: Any) -> Bool {
//		return (Int(i as! Int) & ~63) != 0
//	}
//
//	private init() { }
//
//	private func uuEncode(char: String? = "") -> NSMutableData {
//		let uuEncryptedData = malloc(((char!.length) * 4 + 2) / 3 + 1)
//		let mutableEncryption = NSMutableData()
//		let dataLength = char!.length
//		var len = 0
//		var rangeLength = 0
//		var bytes: Array<CChar> = []
//
//		for readpointer in 0.stride(through: dataLength, by: 45) {
//			if (dataLength < len) {
//				rangeLength = dataLength
//			} else {
//				if ((rangeLength + readpointer) > dataLength) {
//					rangeLength = (dataLength - readpointer)
//				}
//			}
//
//			len = touufrombits(&bytes, [Int8()])
//			mutableEncryption.appendBytes(bytes, length: len)
//		}
//
//		free(uuEncryptedData)
//
//		return mutableEncryption
//	}
//
//	private func xor_data() {
//
//	}
//
//	// char* xor_data(char* input_data, const char* key, unsigned long length)
//	// {
//	// //unsigned long data_length = strlen(input_data);
//	// char *output_data = strdup(input_data);
//	// int key_count = 0; //Used to restart key if strlen(key) < strlen(encrypt)
//	// for (long i = 0; i < length; i ++)
//	// {
//	// //XOR the data and write it to a file
//	// *(output_data+i) = (*(output_data+i) ^ key[key_count]);
//	// //Incrrement key_count and start over if necessary
//	// key_count++;
//	// if(key_count == strlen(key))
//	// key_count = 0;
//	// }
//	// return output_data;
//	// }
//
//	private func touufrombits(inout out: Array<Int8>, _ _in: Array<CChar>, inlen: Int? = 0) -> Int {
//
//		if (inlen > 45) {
//			return -1
//
//		}
//
//		var len = (inlen! * 4 + 2) / 3 + 1
//
//		out = uuDigit[inlen!]
//
//		var xin = _in
//
//		for (; inlen >= 3; inlen -= 3) {
//			out += uuDigit[xin[0] >> 2]
//			out += uuDigit[((xin[0] << 4) & 0x30) | (xin[1] >> 4)]
//			out += uuDigit[((xin[1] << 2) & 0x3c) | (xin[2] >> 6)]
//			out += uuDigit[xin[2] & 0x3f]
//
//			_in += 3
//		}
//
//		if (inlen > 0) {
//			out += uuDigit[(xin[0] >> 2)]
//
//			if (inlen == 1) {
//				out += uuDigit[((xin[0] << 4) & 0x30)]
//			} else {
//				out += uuDigit[(((xin[0] << 4) & 0x30) | (xin[1] >> 4))]
//				out += uuDigit[((xin[1] << 2) & 0x3c)]
//			}
//		}
//
//		out += "\0"
//
//		return len
//	}
//
//	private func fromuutobits(inout out: Array<CChar>, _ _xin: Array<CChar>) -> Int {
//		var len = 0
//		var outlen = 0
//		var inlen = 0
//
//		var digit1 = "a".characters.first
//		var digit2 = "b".characters.first
//		var _in = _xin
//
//		outlen = UUDECODE(_in[0])
//		_in += 1
//
//		if (outlen < 0 || outlen > 45) {
//			return -2
//		}
//		if (outlen == 0) {
//			return 0
//		}
//
//		inlen = (outlen * 4 + 2) / 3
//		len = 0
//
//		// FOR FOR FOR
//		for (; inlen > 0; inlen -= 4) {
//			digit1 = UUDECODE(_in[0])
//
//			if (N64(digit1)) {
//				return -1
//			}
//
//			digit2 = UUDECODE(_in[1])
//			if (N64(digit2)) {
//				return -1
//			}
//
//			out[len++] = (digit1 << 2) | (digit2 >> 4)
//
//			if (inlen > 2) {
//				digit1 = UUDECODE(_in[2])
//
//				if (N64(digit1)) {
//					return -1
//				}
//
//				out[len++] = (digit2 << 4) | (digit1 >> 2)
//
//				if (inlen > 3) {
//					digit2 = UUDECODE(_in[3]);
//					if (N64(digit2)) {
//						return -1;
//					}
//					out[len++] = (digit1 << 6) | digit2;
//				}
//			}
//			_in += 4;
//		}
//
//		return len == outlen ? len : -3;
//	}
// }
//
//// -(NSData *)uuDecode {
////    char *uuEncryptedData = malloc([self length]);
////    NSMutableData *mutableEncryption = [[NSMutableData alloc] init];
////    unsigned long dataLength = [self length];
////    for (unsigned long readPointer = 0; readPointer < dataLength; readPointer += 61) {
////        unsigned long rangeLength= 61;
////        if (dataLength < 61) {
////            rangeLength = dataLength;
////        }
////        else {
////            if (rangeLength+readPointer > dataLength) {
////                rangeLength = (dataLength - readPointer);
////            }
////        }
////        memset(uuEncryptedData,0,dataLength);
////        int len = fromuutobits((char *)uuEncryptedData,(const char *)[[self subdataWithRange:NSMakeRange(readPointer, rangeLength)] bytes]);
////        if ( len == -1)
////        return [NSData dataWithBytes:@"Error Processing" length:17];
////        [mutableEncryption appendBytes:uuEncryptedData length:len];
////
////    }
////    // Free up the malloc'd memory
////    free(uuEncryptedData);
////    return mutableEncryption;
//// }
////
//// -(NSString *)uuEncodeToString {
////    // In theory this should be a null terminated string.
////    return [NSString stringWithCString:[[self uuEncode] bytes] encoding:NSUTF8StringEncoding];
//// }
////
//// S: https://github.com/thebsdbox/DFSimpleEncrypt
