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
 File:    md5.swift
 Created: 29-FEB-2016
 Creator: Wesley de Groot | g: @wdg | t: @wesdegroot
 Issue:   N/A
 Prefix:  N/A
 ---------------------------------------------------
 */
// https://gist.github.com/wdg/5cf0f2187c7d31a931b7

import Foundation

func getHumanClassname(Ob: Any) -> String {
	var _ret: String
	
	switch (String(Ob.dynamicType)) {
	case "__NSCFNumber", "Int":
		_ret = "Int"
		break
	
	case "__NSCFBoolean", "Bool":
		_ret = "Bool"
		break
	
	case "Double":
		_ret = "Double"
		break
	
	case "_SwiftDeferredNSArray", "Array<String>", "Array<Int>":
		_ret = "Array"
		break
	
	case "__NSCFString", "_NSContiguousString", "String", "NSString":
		_ret = "String"
		break
	
	case "_NativeDictionaryStorageOwner<String, Array<String>>":
		_ret = "Dictionary"
		break
	
	case "protocol<>", "protocol<> -> Bool":
		_ret = "Protocol"
		break
	
	default:
		print("Did'nt found type!, please report it to: https://gist.github.com/wdg/5cf0f2187c7d31a931b7")
		print("Found: \(String(Ob.dynamicType))")
		_ret = "\(String(Ob.dynamicType))"
		break
	}
	
	return _ret
}


func getClass(Ob: Any) -> String {
	return getHumanClassname(Ob)
}