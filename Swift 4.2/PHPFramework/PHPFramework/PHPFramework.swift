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
 File:    PHPFramework.swift
 Created: 15-JAN-2016
 Creator: Wesley de Groot | g: @wdg | t: @wesdegroot
 Issue:   N/A
 ---------------------------------------------------
 */

import Foundation
//import CommonCrypto

// if Simulator then Debugmode = on
#if targetEnvironment(simulator)
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
var PFIisDebug: Bool = false

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
	private var PFIisLoaded: Bool = false

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
		if (!PFIisLoaded) {
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
			PFIisDebug = debug
			PFIisLoaded = true
		}
	}

	/**
	 Encode a string using Base64

	 - Parameter s: the plain string

	 - Returns: the encoded string
	 */
	public func base64_encode(_ s: String) -> String {
		guard let plainData = (s as NSString).data(using: String.Encoding.utf8.rawValue) else {
			fatalError()
		}

        let base64String = plainData.base64EncodedString(options: NSData.Base64EncodingOptions(rawValue: 0))
		return base64String
	}

	/**
	 Decode a string using Base64

	 - Parameter s: the encoded string

	 - Returns: the decoded string
	 */
	public func base64_decode(_ s: String) -> String {
        if let decodedData = Data(base64Encoded: s, options: .ignoreUnknownCharacters) {

            let decodedString = NSString(data: decodedData, encoding: String.Encoding.utf8.rawValue)

            return String(decodedString ?? "Failed")
		}
		return "Failed"
	}

	/**
	 Binary to Decimal

	 - Parameter str: the binary

	 - Returns: the decimal String
	 */
	public func bindec(_ str: String) -> String {
		return String(strtoul(str, nil, 2))
	}

	/**
	 Decimal to Binary

	 - Parameter str: the decimal

	 - Returns: the binary string
	 */
	public func decbin(_ str: Int) -> String {
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
	public func str_pad(_ string: String, toSize: Int, with: String = "0", padding: Bool = true) -> String {
		var padded = string
		for _ in 0 ..< toSize - string.count {
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
	public func noop(_ ob: Any ...) -> Void { }
	// @available( *, unavailable, message = "This function is not yet done")

	/**
	 **PHP.Framework** \
	 *PHP In Swift*

	 Our internal test function.

	 - Paramter Tin: test input 1
	 - Parameter Tend: test input 2
	 */
	public func _Test(_ Tin: String, _ Tend: String) -> Bool {
		let _test = (Tin == Tend) ? "✅" : "❌"
		let _func = (Tin == Tend) ? "==" : "!="
		print("Test #\(_PHP_TestCount) \(_test): \"\(Tin)\" \(_func) \"\(Tend)\"")

		_PHP_TestCount += 1
		return Tin == Tend
	}
}
