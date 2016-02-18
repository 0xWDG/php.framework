//
//  ROT13.swift
//  PHPFramework
//
//  Created by Wesley de Groot on 18-02-16.
//  Copyright © 2016 WDGWV. All rights reserved.
//

import Foundation

class ROT13 {
	func encrypt(str: String) -> String {
		return self.crypt(str, rotateAmount: 13)
	}
	
	func decrypt(str: String) -> String {
		return self.crypt(str, rotateAmount: -13)
	}
	
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