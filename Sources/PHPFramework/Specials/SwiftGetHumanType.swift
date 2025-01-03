//
// PHP Framework
// PHPFramework is a collection of the most common PHP functions, implemented in Swift.
//
// https://github.com/0xWDG/PHPFramework
//
// File:    md5.swift
// Created: 18-FEB-2016
// Creator: Wesley de Groot | @0xWDG
// Issue:   N/A
// Prefix:  N/A
// https://gist.github.com/wdg/5cf0f2187c7d31a931b7

import Foundation

func getHumanClassname(_ Ob: Any) -> String {
	let _ret: String = "Failed"
//
//    switch (String(type(of: Ob))) {
//    case "__NSCFNumber", "Int":
//        _ret = "Int"
//        break
//
//    case "__NSCFBoolean", "Bool":
//        _ret = "Bool"
//        break
//
//    case "Double":
//        _ret = "Double"
//        break
//
//    case "_SwiftDeferredNSArray", "Array<String>", "Array<Int>":
//        _ret = "Array"
//        break
//
//    case "__NSCFString", "_NSContiguousString", "String", "NSString":
//        _ret = "String"
//        break
//
//    case "_NativeDictionaryStorageOwner<String, Array<String>>":
//        _ret = "Dictionary"
//        break
//
//    case "protocol<>", "protocol<> -> Bool":
//        _ret = "Protocol"
//        break
//
//    default:
//        print("Did'nt found type!, please report it to: https://gist.github.com/wdg/5cf0f2187c7d31a931b7")
//        print("Found: \(String(type(of: Ob)))")
//        _ret = "\(String(type(of: Ob)))"
//        break
//    }
//
	return _ret
}

func getClass(_ Ob: Any) -> String {
	return getHumanClassname(Ob)
}
