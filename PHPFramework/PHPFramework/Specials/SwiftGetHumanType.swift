//
//  SwiftGetHumanType.swift
//  PHPFramework
//
//  Created by Wesley de Groot on 02-03-16.
//  Copyright © 2016 WDGWV. All rights reserved.
//

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
	
	case "_SwiftDeferredNSArray", "Array<String>", "Array<Int>":
		_ret = "Array"
		break
	
	case "__NSCFString", "_NSContiguousString", "String", "NSString":
		_ret = "String"
		break
	
	case "_NativeDictionaryStorageOwner<String, Array<String>>":
		_ret = "Dictionary"
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