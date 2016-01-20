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
 global php variable **(Simulator version)**
 *with debugging enabled*

 - Returns: the php framework
 */
public let php = PHPFramework(true)
#else
/**
 global php variable **(Production version)**
 *with debugging disabled*

 - Returns: the php framework
 */
public let php = PHPFramework(false)
#endif

/**
 global php debug variable
 */
public var isDebug: Bool = false

/**
 PHPFramework

 A Swift framework inspired by some PHP Functions.
 */
public class PHPFramework {
	/**
	 PHPFramework version
	 */
	public let version: String = String(PHPFrameworkVersionNumber)
	/**
	 PHPFramework name
	 */
	public let product: String = "PHP.Framework"
	/**
	 PHPFramework loaded?
	 */
	private var isLoaded: Bool = false
	
	/**
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
	
	// @available( *, unavailable, message = "This function is not yet done")
}