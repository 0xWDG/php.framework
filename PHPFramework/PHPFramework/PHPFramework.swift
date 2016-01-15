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