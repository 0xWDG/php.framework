//
//  PHPFramework.swift
//  PHPFramework
//
//  Created by Wesley de Groot on 15-01-16.
//  Copyright © 2016 WDGWV. All rights reserved.
//

import Foundation

// if Simulator then Debugmode = on
#if (arch(i386) || arch(x86_64)) && (os(iOS) || os(watchOS) || os(tvOS))
/**
 **PHP.Framework** \
 *PHP In Swift*\
 global php variable **(Simulator version)**
 *with debugging enabled*

 - Returns: the php framework
 */
public let php = PHPFramework(true)
#else
/**
 **PHP.Framework** \
 *PHP In Swift*
 global php variable **(Production version)**
 *with debugging disabled*

 - Returns: the php framework
 */
public let php = PHPFramework(false)
#endif

/**
 **PHP.Framework** \
 *PHP In Swift*
 global php debug variable
 */
public var isDebug: Bool = false

/**
 **PHP.Framework** \
 *PHP In Swift*

 A Swift framework inspired by some PHP Functions.
 */
public class PHPFramework {
	
	/**
	 **PHP.Framework** \
	 *PHP In Swift*

	 PHPFramework version
	 */
	public let version: String = String(PHPFrameworkVersionNumber)
	
	/**
	 **PHP.Framework** \
	 *PHP In Swift*

	 PHPFramework name
	 */
	public let product: String = "PHP.Framework"
	
	/**
	 **PHP.Framework** \
	 *PHP In Swift*

	 PHPFramework loaded?
	 */
	private var isLoaded: Bool = false
	
	/**
	 PHPFramework test function count
	 */
	private var _PHP_TestCount: Int = 1
	
	/**
	 **PHP.Framework** \
	 *PHP In Swift*

	 Init PHP

	 - Parameter debug: Enable debug?
	 */
	public init(_ debug: Bool = false) {
		if (!isLoaded) {
			if (debug) {
				print("\(product) \(version) loaded")
				#if os(iOS)
				print("Hello iOS")
				#elseif os(OSX)
				print("Hello OS X")
				#elseif os(watchOS)
				print("Hello  Watch")
				#elseif os(tvOS)
				print("Hello  TV")
				#endif
			}
			isDebug = debug
			isLoaded = true
		}
	}
	
	/**
	 Encode a string using Base64

	 - Parameter s: the plain string

	 - Returns: the encoded string
	 */
	public func base64_encode(s: String) -> String {
		guard let plainData = (s as NSString).dataUsingEncoding(NSUTF8StringEncoding) else {
			fatalError()
		}
		
		let base64String = plainData.base64EncodedStringWithOptions(NSDataBase64EncodingOptions(rawValue: 0))
		return base64String
		
	}
	
	/**
	 Decode a string using Base64

	 - Parameter s: the encoded string

	 - Returns: the decoded string
	 */
	public func base64_decode(s: String) -> String {
		if let decodedData = NSData(base64EncodedString: s, options: NSDataBase64DecodingOptions(rawValue: 0)),
		let decodedString = NSString(data: decodedData, encoding: NSUTF8StringEncoding) {
			return decodedString as String
		}
		return "Failed"
	}
	
	/**
	 Binary to Decimal

	 - Parameter str: the binary

	 - Returns: the decimal String
	 */
	public func bindec(let str : String) -> String {
		return String(strtoul(str, nil, 2))
	}
	
	/**
	 Decimal to Binary

	 - Parameter str: the decimal

	 - Returns: the binary string
	 */
	public func decbin(let str : Int) -> String {
		return String(str, radix: 2)
	}
	
	/**
	 Append padding to a string (Not done)

	 - Parameter str: The string
	 - Parameter toSize: Wich size
	 - Parameter width: With what character
	 - Parameter padding: (bool=true)

	 - Returns: the string with padding
	 */
	public func str_pad(string: String, toSize: Int, with: String = "0", padding: Bool = true) -> String {
		var padded = string
		for _ in 0..<toSize - string.characters.count {
			padded = with + padded
		}
		return padded
	}
	
	/**
	 **PHP.Framework** \
	 *PHP In Swift*

	 Noop, does actually nothing, but i hate erros like\
	 this is never used...

	 - Parameter ob: Any!
	 */
	public func noop(ob: Any...) -> Void {}
	// @available( *, unavailable, message = "This function is not yet done")
	
	/**
	 **PHP.Framework** \
	 *PHP In Swift*

	 Our internal test function.

	 - Paramter Tin: test input 1
	 - Parameter Tend: test input 2
	 */
	public func _Test(Tin: String, _ Tend: String) -> Bool {
		let _test = (Tin == Tend) ? "✅" : "❌"
		let _func = (Tin == Tend) ? "==" : "!="
		print("Test #\(_PHP_TestCount) \(_test): \"\(Tin)\" \(_func) \"\(Tend)\"")
		
		_PHP_TestCount++
		return Tin == Tend
	}
}