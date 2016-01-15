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
    // Hi Simulator
    // for usage like php.chr(64)
    public let php = PHPFramework(true)
#else
    // Hi Device
    // for usage like php.chr(64)
    public let php = PHPFramework(false)
#endif

/**
  Global usage for static constants
 */
// http://php.net/manual/en/string.constants.php
public let CRYPT_SALT_LENGTH:Int    = 0
public let CRYPT_STD_DES:Int        = 0
public let CRYPT_EXT_DES:Int        = 0
public let CRYPT_MD5:Int            = 0
public let CRYPT_BLOWFISH:Int       = 0
public let HTML_SPECIALCHARS:Int    = 0
public let HTML_ENTITIES:Int        = 0
public let ENT_COMPAT:Int           = 0
public let ENT_QUOTES:Int           = 0
public let ENT_NOQUOTES:Int         = 0
public let ENT_IGNORE:Int           = 0
public let ENT_SUBSTITUTE:Int       = 0
public let ENT_DISALLOWED:Int       = 0
public let ENT_HTML401:Int          = 0
public let ENT_XML1:Int             = 0
public let ENT_XHTML:Int            = 0
public let ENT_HTML5:Int            = 0
public let CHAR_MAX:Int             = 0
public let LC_CTYPE:Int             = 0
public let LC_NUMERIC:Int           = 0
public let LC_TIME:Int              = 0
public let LC_COLLATE:Int           = 0
public let LC_MONETARY:Int          = 0
public let LC_ALL:Int               = 0
public let LC_MESSAGES:Int          = 0
public let STR_PAD_LEFT:Int         = 0
public let STR_PAD_RIGHT:Int        = 0
public let STR_PAD_BOTH:Int         = 0

/**
  PHPFramework

  A Swift framework inspired by some PHP Functions.
*/
public class PHPFramework {
    public let version:String = String(PHPFrameworkVersionNumber)
    public let product:String = "PHP.Framework"
    public var isLoaded:Bool = false

    /**
     Init PHP
     
     - Parameter debug: Enable debug?
     */
    public init(_ debug:Bool = false) {
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
            
            isLoaded=true
        }
    }
    
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
        guard let newS:Int = Int(s) else {
            return "\(s)"
        }
        return String(UnicodeScalar(newS))
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
     Newline to Break
     
     - Parameter html: the string
     - Parameter isXML: is it XML (default: true)
     
     - Returns: the string with <br /> tags
     */
    public func nl2br(html: String, _ isXML:Bool=true) -> String {
        if (isXML) {
            return html.stringByReplacingOccurrencesOfString("\n", withString: "<br />\n")
        }else{
            return html.stringByReplacingOccurrencesOfString("\n", withString: "<br>\n")
        }
    }
    
    /**
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

    //TODO: FIX
    /**
     Append padding to a string
     
     - Parameter str: The string
     - Parameter toSize: Wich size
     - Parameter width: With what character
     - Parameter padding: (bool=true)
     
     - Returns: the string with padding
     */
    @available(*, unavailable, message="This function is not yet done") public func str_pad(string: String, toSize: Int, with:String="0", padding:Bool=true) -> String {
        var padded = string
        for _ in 0..<toSize - string.characters.count {
            padded = with + padded
        }
        return padded
    }
}