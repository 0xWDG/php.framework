//
//  PHPFrameworkTest.swift
//  PHPFramework
//
//  Created by Wesley de Groot on 05-02-16.
//  Copyright © 2016 WDGWV. All rights reserved.
//

import Foundation

public let PHPTest = PHPFrameworkTests() ;

public class PHPFrameworkTests {
	let E: String = php.getcwd()
	let PASS: String = "Tend"
	let FAIL: String = "FAIL"
	
	public init() {}
	
	/**
	 Our internal test function.

	 - Paramter Tin: test input 1
	 - Parameter Tend: test input 2
	 */
	public func Test(Tin: Any = "Tin", _ Tend: Any = "Tend", _ deb: Bool = false) -> String {
		var _retVal: String = String()
		
		switch (String(Tin.dynamicType)) {
		
		case "__NSCFNumber", "Int":
			_retVal = String(Tin) == String(Tend) ? "✅" : "❌"
			break
		
		case "__NSCFBoolean", "Bool":
			_retVal = Tin as! Bool == Tend as! Bool ? "✅" : "❌"
			break
		
		case "_SwiftDeferredNSArray", "Array<String>":
			_retVal = (Tin as! Array<String>) == (Tend as! Array<String>) ? "✅" : "❌"
			break
		
		case "Array<Int>":
			_retVal = (Tin as! Array<Int>) == (Tend as! Array<Int>) ? "✅" : "❌"
			break
		
		case "_NSContiguousString", "String", "NSString":
			_retVal = String(Tin) == String(Tend) ? "✅" : "❌"
			break
		
		case "_NativeDictionaryStorageOwner<String, Array<String>>":
			_retVal = "❌ DICT"
			break
		
		default:
			_retVal = "❌ \(String(Tin.dynamicType))"
			break
		}
		
		if (deb) {
			return "\(_retVal) I1=\"\(Tin)\" I2=\"\(Tend)\""
		}
		
		return _retVal
	}
	
	public func All(asDict: Bool = true) -> Any {
		if (asDict) {
			let tempOb: Dictionary<String, Any> = [
				"Array": ArrayFunctions(),
				"Base": PHPBase(),
				"Constants (1/2)": PHPConstants(),
				"Constants (2/2)": PHPConstantsDictionary(),
				"Date Time": DateTime(),
				"Directory": Directory(),
				"File System": FileSystem(),
				"String": StringFunctions(),
				"Variable": VariableFunctions()
			]
			
			return tempOb
		} else {
			var tempOb: String = ""
			
			tempOb = tempOb.stringByAppendingString("Array:\n")
			for (key, object) in PHPTest.ArrayFunctions() {
				tempOb = tempOb.stringByAppendingString("    \(key) = \(object)\n")
			}
			
			tempOb = tempOb.stringByAppendingString("\nBase:\n")
			for (key, object) in PHPTest.PHPBase() {
				tempOb = tempOb.stringByAppendingString("    \(key) = \(object)\n")
			}
			
			tempOb = tempOb.stringByAppendingString("\nConstants (1/2):\n")
			for (key, object) in PHPTest.PHPConstants() {
				tempOb = tempOb.stringByAppendingString("    \(key) = \(object)\n")
			}
			
			tempOb = tempOb.stringByAppendingString("\nConstants (2/2):\n")
			for (key, object) in PHPTest.PHPConstantsDictionary() {
				tempOb = tempOb.stringByAppendingString("    \(key) = \(object)\n")
			}
			
			tempOb = tempOb.stringByAppendingString("\nDate Time:\n")
			for (key, object) in PHPTest.DateTime() {
				tempOb = tempOb.stringByAppendingString("    \(key) = \(object)\n")
			}
			
			tempOb = tempOb.stringByAppendingString("\nDirectory:\n")
			for (key, object) in PHPTest.Directory() {
				tempOb = tempOb.stringByAppendingString("    \(key) = \(object)\n")
			}
			
			tempOb = tempOb.stringByAppendingString("\nFile System:\n")
			for (key, object) in PHPTest.FileSystem() {
				tempOb = tempOb.stringByAppendingString("    \(key) = \(object)\n")
			}
			
			tempOb = tempOb.stringByAppendingString("\nStrings:\n")
			for (key, object) in PHPTest.StringFunctions() {
				tempOb = tempOb.stringByAppendingString("    \(key) = \(object)\n")
			}
			
			tempOb = tempOb.stringByAppendingString("\nVariables:\n")
			for (key, object) in PHPTest.VariableFunctions() {
				tempOb = tempOb.stringByAppendingString("    \(key) = \(object)\n")
			}
			return tempOb
		}
	}
	
	public func ArrayFunctions() -> Dictionary<String, Any> {
		let tempDict: Dictionary<String, Any> = [
			"val1": true,
			"val2": false
		]
		
		return tempDict
	}
	
	public func VariableFunctions() -> Dictionary<String, Any> {
		let tempDict: Dictionary<String, Any> = [
			"val1": true,
			"val2": false
		]
		
		return tempDict
	}
	
	public func FileSystem() -> Dictionary<String, Any> {
		let tempDict: Dictionary<String, Any> = [
			"val1": true,
			"val2": false
		]
		
		return tempDict
	}
	
	public func PHPConstants() -> Dictionary<String, Any> {
		let tempDict: Dictionary<String, Any> = [
			"Constants": self.Test(PASS)
		]
		
		return tempDict
	}
	
	public func PHPConstantsDictionary() -> Dictionary<String, Any> {
		let tempDict: Dictionary<String, Any> = [
			"Constants": self.Test(PASS)
		]
		
		return tempDict
	}
	
	public func DateTime() -> Dictionary<String, Any> {
		let tempDict: Dictionary<String, Any> = [
			"val1": true,
			"val2": false
		]
		
		return tempDict
	}
}