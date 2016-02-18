//
//  ROT13.swift
//  PHPFramework
//
//  Created by Wesley de Groot on 18-02-16.
//  Copyright © 2016 WDGWV. All rights reserved.
//

import Foundation

/**
 **PHP.Framework** \
 *PHP In Swift*

 ROT13 calculator class
 */
class ROT13 {
	/**
	 Encrypt function for ROT13

	 - Parameter str: the string what needs to be encoded

	 - Returns: ROT13 encoded string
	 */
	func encrypt(str: String) -> String {
		return self.crypt(str, rotateAmount: 13)
	}
	
	/**
	 Decrypt function for ROT13

	 - Parameter str: the string what needs to be decoded

	 - Returns: ROT13 decoded string
	 */
	func decrypt(str: String) -> String {
		return self.crypt(str, rotateAmount: -13)
	}
	
	/**
	 ROT13 Calculator

	 - Parameter str: the string what needs to be decoded
	 - Parameter rotateAmount: the rotation amount

	 - Returns: ROT13 en/decoded string
	 */
	func crypt(str: String, rotateAmount: Int) -> String {
		return "".join(str.characters.map {
				(char) -> String in
				let num = String(char).unicodeScalars
				let characterIntVal = num.first!.value
				var rotatedIntVal = 0
				
				if (Int(characterIntVal) + rotateAmount > 126) {
					// To high..
					rotatedIntVal = ((Int(characterIntVal) + rotateAmount) - 26)
				} else {
					// Well done.
					rotatedIntVal = Int(characterIntVal) + rotateAmount
				}
				
				return String(UnicodeScalar(rotatedIntVal))
			}
		)
	}
}