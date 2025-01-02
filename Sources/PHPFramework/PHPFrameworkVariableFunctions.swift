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
 File:    PHPFrameworkVariableFunctions.swift
 Created: 21-JAN-2016
 Creator: Wesley de Groot | g: @wdg | t: @wesdegroot
 Issue:   #5 (Variable Functions)
 Prefix:  PFV
 ---------------------------------------------------
 */

import Foundation

/**
 PHPFramework

 A Swift framework inspired by some PHP Functions.
 */
extension PHPFramework {

	/**
	 Get the boolean value of a variable

	 - Parameter testVar: Any Variable

	 - Returns: Bool
	 */
	public func boolval(_ testVar: Any) -> Any {
		var _ret: Bool

		if getClass(testVar) == "String" {
			switch (testVar as! String).lowercased() {
			case "yes", "true", "ok":
				_ret = true
				default:
				_ret = false
			}
		} else if getClass(testVar) == "Int" {
			if testVar as! Int == 1 {
				_ret = true
			} else {
				_ret = false
			}
		} else {
			_ret = false
		}

		return _ret
	}

	/**
	 **Not supported** Dumps a string representation of an internal zend value to output

	 - Parameter testVar: Any Variable

	 - Returns: Bool
	 */
	public func debug_zval_dump(_ testVar: Any) {
		print(testVar)
	}

	/**
	 Alias of floatval

	 - Parameter testVar: Any Variable

	 - Returns: Bool
	 */
	public func doubleval(_ testVar: Any) -> Int {
		return floatval(testVar)
	}

	/**
	 Determine whether a variable is empty

	 - Parameter testVar: Any Variable

	 - Returns: Bool
	 */
	public func empty(_ testVar: Any) -> Any {
		if getClass(testVar) == "String" {
			if testVar as! String == "" {
				return true
			} else {
				return false
			}
		} else {
			return false
		}
	}

	/**
	 Get float value of a variable\
	 *alias of intval*

	 - Parameter testVar: Any Variable

	 - Returns: Bool
	 */
	public func floatval(_ testVar: Any) -> Int {
		return self.intval(testVar)
	}

	/**
	 Returns an array of all defined variables

	 - Returns: PHPAllConstants: Dictionary<String, Any>
	 */
    @MainActor public func get_defined_vars() -> [String: Any] {
		return PHPAllConstants
	}

	/**
	 Returns the resource type

	 - Parameter testVar: Any Variable

	 - Returns: String the resource type
	 */
	public func get_resource_type(_ testVar: Any) -> String {
		return getClass(testVar)
	}

	/**
	 Get the type of a variable

	 - Parameter testVar: Any Variable

	 - Returns: Bool
	 */
	public func gettype(_ testVar: Any) -> String {
		return getClass(testVar)
	}

	/**
	 **NOT SUPPORTED** Import GET/POST/Cookie variables into the global scope
	 - Parameter testVar: Any Variable
	 */
	public func import_request_variables(_ testVar: Any) {}

	/**
	 Get the integer value of a variable

	 - Parameter testVar: Any Variable

	 - Returns: Int
	 */
	public func intval(_ testVar: Any) -> Int {
        let num = String(testVar as! String).toInt()
		if num != nil {
			return num!
		} else {
			return 0
		}
	}

	/**
	 Finds whether a variable is an array

	 - Parameter testVar: Any Variable

	 - Returns: Bool
	 */
	public func is_array(_ testVar: Any) -> Bool {
		return (getClass(testVar) == "Array") ? true : false
	}

	/**
	 Finds out whether a variable is a boolean

	 - Parameter testVar: Any Variable

	 - Returns: Bool
	 */
	public func is_bool(_ testVar: AnyObject) -> Bool {
		return (getClass(testVar) == "Bool") ? true : false
	}

	/**
	 **Not supported** Verify that the contents of a variable can be called as a function

	 - Parameter testVar: Any Variable

	 - Returns: Bool
	 */
	public func is_callable(_ testVar: Any) -> Bool {
		return false
	}

	/**
	 Alias of is_float

	 - Parameter testVar: Any Variable

	 - Returns: Bool
	 */
	public func is_double(_ testVar: Any) -> Bool {
		return is_float(testVar)
	}

	/**
	 Finds whether the type of a variable is float

	 - Parameter testVar: Any Variable

	 - Returns: Bool
	 */
	public func is_float(_ testVar: Any) -> Bool {
		return (getClass(testVar) == "Double") ? true : false
	}

	/**
	 Find whether the type of a variable is integer

	 - Parameter testVar: Any Variable

	 - Returns: Bool
	 */
	public func is_int(_ testVar: Any) -> Bool {
		return (getClass(testVar) == "Int") ? true : false
	}

	/**
	 Alias of is_int

	 - Parameter testVar: Any Variable

	 - Returns: Bool
	 */
	public func is_integer(_ testVar: Any) -> Bool {
		return is_int(testVar)
	}

	/**
	 Alias of is_int

	 - Parameter testVar: Any Variable

	 - Returns: Bool
	 */
	public func is_long(_ testVar: Any) -> Bool {
		return is_int(testVar)
	}

	/**
	 Finds whether a variable is NULL

	 - Parameter testVar: Any Variable

	 - Returns: Bool
	 */
	public func is_null(_ testVar: Any?) -> Bool {
		return (testVar == nil || String(testVar as? String ?? NULL) == NULL) ? true : false
	}

	/**
	 Finds whether a variable is a number or a numeric string

	 - Parameter testVar: Any Variable

	 - Returns: Bool
	 */
	public func is_numeric(_ testVar: Any) -> Bool {
		let num = String(testVar as? Int ?? 0).toInt()
		if num != nil {
			return true
		} else {
			return false
		}
	}

	/**
	 Finds whether a variable is an object

	 - Parameter testVar: Any Variable

	 - Returns: Bool
	 */
	public func is_object(_ testVar: Any) -> Bool {
		return false
	}

	/**
	 Alias of is_float

	 - Parameter testVar: Any Variable

	 - Returns: Bool
	 */
	public func is_real(_ testVar: Any) -> Bool {
		return self.is_float(testVar)
	}

	/**
	 Finds whether a variable is a resource

	 - Parameter testVar: Any Variable/Object

	 - Returns: false (*not supported*)
	 */
	public func is_resource(_ testVar: Any) -> Bool {
		return false
	}

	/**
	 Finds whether a variable is a scalar\
	 *Scalar variables are those containing an integer, float, string or boolean. Types array, object and resource are not scalar.*

	 - Parameter testVar: Any Variable

	 - Returns: Bool
	 */
	public func is_scalar(_ testVar: Any) -> Bool {
		return (self.is_string(testVar) || self.is_int(testVar) || self.is_float(testVar)) ? true : false
	}

	/**
	 Find whether the type of a variable is string

	 - Parameter testVar: Any Variable

	 - Returns: Bool
	 */
	public func is_string(_ testVar: Any) -> Bool {
		return (!self.is_null(testVar) && !self.is_int(testVar)) ? true : false
	}

	/**
	 Determine if a variable is set and is not NULL

	 - Parameter testVar: Any Variable

	 - Returns: Bool
	 */
	public func isset(_ testVar: Any) -> Bool {
		return self.is_null(testVar)
	}

	/**
	 Prints human-readable information about a variable

	 **Uses return(ob) and print(ob)!**

	 - Parameter ob: Expression
	 - Parameter letReturn: return?

	 - Returns: Any
	 */
	public func print_r(_ ob: Any, _ letReturn: Bool = false) -> Any {
		return var_dump(ob, letReturn)
	}

	/**
	 Generates a storable representation of a value

	 - Parameter testVar: Any Variable

	 - Returns: Bool
	 */
	public func serialize(_ serialize: Any) -> String {
		// We must support Strings and Arrays.
		// Example Array-in-Array (3 deep): [! SWIFT CALL THIS A DICTIONARY !]
		// php -r "echo serialize(array('x' => array('xx' => array('xxx', 'xxy', 'xxz'), 'xy' => array('xyx', 'xyy', 'xyz'), 'xz' => array('xzx', 'xzy', 'xzz')), 'y' => array('yx' => array('yxx', 'yxy', 'yxz'), 'yy' => array('yyx', 'yyy', 'yyz'), 'yz' => array('yzx', 'yzy', 'yzz')), 'z' => array('zx' => array('zxx', 'zxy', 'zxz'), 'zy' => array('zyx', 'zyy', 'zyz'), 'zz' => array('zzx', 'zzy', 'zzz'))));"
		// a:3:{s:1:"x";a:3:{s:2:"xx";a:3:{i:0;s:3:"xxx";i:1;s:3:"xxy";i:2;s:3:"xxz";}s:2:"xy";a:3:{i:0;s:3:"xyx";i:1;s:3:"xyy";i:2;s:3:"xyz";}s:2:"xz";a:3:{i:0;s:3:"xzx";i:1;s:3:"xzy";i:2;s:3:"xzz";}}s:1:"y";a:3:{s:2:"yx";a:3:{i:0;s:3:"yxx";i:1;s:3:"yxy";i:2;s:3:"yxz";}s:2:"yy";a:3:{i:0;s:3:"yyx";i:1;s:3:"yyy";i:2;s:3:"yyz";}s:2:"yz";a:3:{i:0;s:3:"yzx";i:1;s:3:"yzy";i:2;s:3:"yzz";}}s:1:"z";a:3:{s:2:"zx";a:3:{i:0;s:3:"zxx";i:1;s:3:"zxy";i:2;s:3:"zxz";}s:2:"zy";a:3:{i:0;s:3:"zyx";i:1;s:3:"zyy";i:2;s:3:"zyz";}s:2:"zz";a:3:{i:0;s:3:"zzx";i:1;s:3:"zzy";i:2;s:3:"zzz";}}}
		// Array: 3 subitems: {
		// ..String: 1: "x"
		// ..Array 3 subitems: {
		// ....String: 2 characters: "xx" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "xxx"
		// ......index:1; String: 3 characters: "xxy"
		// ......index:2; String: 3 characters: "xxz"
		// ....}
		// ....String: 2 characters: "xy" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "xyx"
		// ......index:1; String: 3 characters: "xyy"
		// ......index:2; String: 3 characters: "xyz"
		// ....}
		// ....String: 2 characters: "xz" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "xzx"
		// ......index:1; String: 3 characters: "xzy"
		// ......index:2; String: 3 characters: "xzz"
		// ....}
		// ..}
		// ..String: 1: "y"
		// ....Array 3 subitems: {
		// ....String: 2 characters: "yx" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "yxx"
		// ......index:1; String: 3 characters: "yxy"
		// ......index:2; String: 3 characters: "yxz"
		// ....}
		// ....String: 2 characters: "yy" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "yyx"
		// ......index:1; String: 3 characters: "yyy"
		// ......index:2; String: 3 characters: "yyz"
		// ....}
		// ....String: 2 characters: "yz" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "yzx"
		// ......index:1; String: 3 characters: "yzy"
		// ......index:2; String: 3 characters: "yzz"
		// ....}
		// ..}
		// ..String: 1: "z"
		// ....Array 3 subitems: {
		// ....String: 2 characters: "zx" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "zxx"
		// ......index:1; String: 3 characters: "zxy"
		// ......index:2; String: 3 characters: "zxz"
		// ....}
		// ....String: 2 characters: "zy" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "zyx"
		// ......index:1; String: 3 characters: "zyy"
		// ......index:2; String: 3 characters: "zyz"
		// ....}
		// ....String: 2 characters: "zz" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "zzx"
		// ......index:1; String: 3 characters: "zzy"
		// ......index:2; String: 3 characters: "zzz"
		// ....}
		// ..}
		// }
		//
		// Example Array:
		// php -r "echo serialize(array('x','y','z'));"
		// a:3:{i:0;s:1:"x";i:1;s:1:"y";i:2;s:1:"z";}
		// Array: 3 subitems:{
		// ..index:0; String: 1 Character: "x"
		// ..index:1; String: 1 Character: "y"
		// ..index:2; String: 1 Character: "z"
		// }
		//
		// Example String (Hoi, means Hi in dutch):
		// php -r "echo serialize('Hoi');"
		// s:3:"Hoi";
		// String: 3 Characters:"Hoi"
		//
		// Conclusion:
		// Basic idea:
		// If has a { } then it is a array
		// b:1;                                 // true
		// b:0;                                 // false
		// N;                                   // null
		// i:...;                               // intreger
		// d:...;                               // double
		// s:count:...;                         // string
		// a:count:{...};                       // array
		// O:countname:name:countitems:items;   // Object (we will not support that)

		// print(self.serializeDictionary([
		// "hello": ["cool": ["another", "dictionary"]],
		// "or": ["hello", "another", "array"],
		// "this": "is",
		// "a": true,
		// "test": 23
		// ]))

		return serializeType(serialize)
	}

	/**
	 **Internal function** for serialize object (and get type) for php.serialize()

	 - Parameter objects: The object

	 - Returns: the serialized object
	 */
	private func serializeType(_ objects: Any) -> String {
		// We must support Strings and Arrays.
		// Example Array-in-Array (3 deep): [! SWIFT CALL THIS A DICTIONARY !]
		// php -r "echo serialize(array('x' => array('xx' => array('xxx', 'xxy', 'xxz'), 'xy' => array('xyx', 'xyy', 'xyz'), 'xz' => array('xzx', 'xzy', 'xzz')), 'y' => array('yx' => array('yxx', 'yxy', 'yxz'), 'yy' => array('yyx', 'yyy', 'yyz'), 'yz' => array('yzx', 'yzy', 'yzz')), 'z' => array('zx' => array('zxx', 'zxy', 'zxz'), 'zy' => array('zyx', 'zyy', 'zyz'), 'zz' => array('zzx', 'zzy', 'zzz'))));"
		// a:3:{s:1:"x";a:3:{s:2:"xx";a:3:{i:0;s:3:"xxx";i:1;s:3:"xxy";i:2;s:3:"xxz";}s:2:"xy";a:3:{i:0;s:3:"xyx";i:1;s:3:"xyy";i:2;s:3:"xyz";}s:2:"xz";a:3:{i:0;s:3:"xzx";i:1;s:3:"xzy";i:2;s:3:"xzz";}}s:1:"y";a:3:{s:2:"yx";a:3:{i:0;s:3:"yxx";i:1;s:3:"yxy";i:2;s:3:"yxz";}s:2:"yy";a:3:{i:0;s:3:"yyx";i:1;s:3:"yyy";i:2;s:3:"yyz";}s:2:"yz";a:3:{i:0;s:3:"yzx";i:1;s:3:"yzy";i:2;s:3:"yzz";}}s:1:"z";a:3:{s:2:"zx";a:3:{i:0;s:3:"zxx";i:1;s:3:"zxy";i:2;s:3:"zxz";}s:2:"zy";a:3:{i:0;s:3:"zyx";i:1;s:3:"zyy";i:2;s:3:"zyz";}s:2:"zz";a:3:{i:0;s:3:"zzx";i:1;s:3:"zzy";i:2;s:3:"zzz";}}}
		// Array: 3 subitems: {
		// ..String: 1: "x"
		// ..Array 3 subitems: {
		// ....String: 2 characters: "xx" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "xxx"
		// ......index:1; String: 3 characters: "xxy"
		// ......index:2; String: 3 characters: "xxz"
		// ....}
		// ....String: 2 characters: "xy" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "xyx"
		// ......index:1; String: 3 characters: "xyy"
		// ......index:2; String: 3 characters: "xyz"
		// ....}
		// ....String: 2 characters: "xz" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "xzx"
		// ......index:1; String: 3 characters: "xzy"
		// ......index:2; String: 3 characters: "xzz"
		// ....}
		// ..}
		// ..String: 1: "y"
		// ....Array 3 subitems: {
		// ....String: 2 characters: "yx" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "yxx"
		// ......index:1; String: 3 characters: "yxy"
		// ......index:2; String: 3 characters: "yxz"
		// ....}
		// ....String: 2 characters: "yy" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "yyx"
		// ......index:1; String: 3 characters: "yyy"
		// ......index:2; String: 3 characters: "yyz"
		// ....}
		// ....String: 2 characters: "yz" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "yzx"
		// ......index:1; String: 3 characters: "yzy"
		// ......index:2; String: 3 characters: "yzz"
		// ....}
		// ..}
		// ..String: 1: "z"
		// ....Array 3 subitems: {
		// ....String: 2 characters: "zx" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "zxx"
		// ......index:1; String: 3 characters: "zxy"
		// ......index:2; String: 3 characters: "zxz"
		// ....}
		// ....String: 2 characters: "zy" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "zyx"
		// ......index:1; String: 3 characters: "zyy"
		// ......index:2; String: 3 characters: "zyz"
		// ....}
		// ....String: 2 characters: "zz" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "zzx"
		// ......index:1; String: 3 characters: "zzy"
		// ......index:2; String: 3 characters: "zzz"
		// ....}
		// ..}
		// }
		//
		// Example Array:
		// php -r "echo serialize(array('x','y','z'));"
		// a:3:{i:0;s:1:"x";i:1;s:1:"y";i:2;s:1:"z";}
		// Array: 3 subitems:{
		// ..index:0; String: 1 Character: "x"
		// ..index:1; String: 1 Character: "y"
		// ..index:2; String: 1 Character: "z"
		// }
		//
		// Example String (Hoi, means Hi in dutch):
		// php -r "echo serialize('Hoi');"
		// s:3:"Hoi";
		// String: 3 Characters:"Hoi"
		//
		// Conclusion:
		// Basic idea:
		// If has a { } then it is a array
		// b:1;                                 // true
		// b:0;                                 // false
		// N;                                   // null
		// i:...;                               // intreger
		// d:...;                               // double
		// s:count:...;                         // string
		// a:count:{...};                       // array
		// O:countname:name:countitems:items;   // Object (we will not support that)

		// print(self.serializeDictionary([
		// "hello": ["cool": ["another", "dictionary"]],
		// "or": ["hello", "another", "array"],
		// "this": "is",
		// "a": true,
		// "test": 23
		// ]))

		let retValue = ""

//        switch (String(type(of: objects) as? String ?? "failed")) {
//        
//        case "__NSCFNumber":
//            retValue = self.serializeInts(objects as! Int)
//            break
//        
//        case "__NSCFBoolean":
//            retValue = self.serializeBools(objects as! Bool)
//            break
//        
//        case "_SwiftDeferredNSArray", "Array<String>":
//            retValue = self.serializeArray(objects as! Array<String>)
//            break
//        
//        case "_NSContiguousString":
//            retValue = self.serializeStrings(objects as! String)
//            break
//        
//        case "_NativeDictionaryStorageOwner<String, Array<String>>":
//            print("ALERT THIS DOES NOT WORK YET!")
//            retValue = self.serializeDictionary(objects as! Dictionary)
//            break
//        
//        default:
//            retValue = "UNKNOWN \(String(type(of: objects)))"
//            break
//        }
//        
		return retValue
	}

	/**
	 **Internal function** for serializing arrays for php.serialize()

	 - Parameter objects: The array

	 - Returns: the serialized array
	 */
	private func serializeArray(_ objects: [String]) -> String {
		// We must support Strings and Arrays.
		// Example Array-in-Array (3 deep): [! SWIFT CALL THIS A DICTIONARY !]
		// php -r "echo serialize(array('x' => array('xx' => array('xxx', 'xxy', 'xxz'), 'xy' => array('xyx', 'xyy', 'xyz'), 'xz' => array('xzx', 'xzy', 'xzz')), 'y' => array('yx' => array('yxx', 'yxy', 'yxz'), 'yy' => array('yyx', 'yyy', 'yyz'), 'yz' => array('yzx', 'yzy', 'yzz')), 'z' => array('zx' => array('zxx', 'zxy', 'zxz'), 'zy' => array('zyx', 'zyy', 'zyz'), 'zz' => array('zzx', 'zzy', 'zzz'))));"
		// a:3:{s:1:"x";a:3:{s:2:"xx";a:3:{i:0;s:3:"xxx";i:1;s:3:"xxy";i:2;s:3:"xxz";}s:2:"xy";a:3:{i:0;s:3:"xyx";i:1;s:3:"xyy";i:2;s:3:"xyz";}s:2:"xz";a:3:{i:0;s:3:"xzx";i:1;s:3:"xzy";i:2;s:3:"xzz";}}s:1:"y";a:3:{s:2:"yx";a:3:{i:0;s:3:"yxx";i:1;s:3:"yxy";i:2;s:3:"yxz";}s:2:"yy";a:3:{i:0;s:3:"yyx";i:1;s:3:"yyy";i:2;s:3:"yyz";}s:2:"yz";a:3:{i:0;s:3:"yzx";i:1;s:3:"yzy";i:2;s:3:"yzz";}}s:1:"z";a:3:{s:2:"zx";a:3:{i:0;s:3:"zxx";i:1;s:3:"zxy";i:2;s:3:"zxz";}s:2:"zy";a:3:{i:0;s:3:"zyx";i:1;s:3:"zyy";i:2;s:3:"zyz";}s:2:"zz";a:3:{i:0;s:3:"zzx";i:1;s:3:"zzy";i:2;s:3:"zzz";}}}
		// Array: 3 subitems: {
		// ..String: 1: "x"
		// ..Array 3 subitems: {
		// ....String: 2 characters: "xx" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "xxx"
		// ......index:1; String: 3 characters: "xxy"
		// ......index:2; String: 3 characters: "xxz"
		// ....}
		// ....String: 2 characters: "xy" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "xyx"
		// ......index:1; String: 3 characters: "xyy"
		// ......index:2; String: 3 characters: "xyz"
		// ....}
		// ....String: 2 characters: "xz" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "xzx"
		// ......index:1; String: 3 characters: "xzy"
		// ......index:2; String: 3 characters: "xzz"
		// ....}
		// ..}
		// ..String: 1: "y"
		// ....Array 3 subitems: {
		// ....String: 2 characters: "yx" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "yxx"
		// ......index:1; String: 3 characters: "yxy"
		// ......index:2; String: 3 characters: "yxz"
		// ....}
		// ....String: 2 characters: "yy" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "yyx"
		// ......index:1; String: 3 characters: "yyy"
		// ......index:2; String: 3 characters: "yyz"
		// ....}
		// ....String: 2 characters: "yz" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "yzx"
		// ......index:1; String: 3 characters: "yzy"
		// ......index:2; String: 3 characters: "yzz"
		// ....}
		// ..}
		// ..String: 1: "z"
		// ....Array 3 subitems: {
		// ....String: 2 characters: "zx" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "zxx"
		// ......index:1; String: 3 characters: "zxy"
		// ......index:2; String: 3 characters: "zxz"
		// ....}
		// ....String: 2 characters: "zy" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "zyx"
		// ......index:1; String: 3 characters: "zyy"
		// ......index:2; String: 3 characters: "zyz"
		// ....}
		// ....String: 2 characters: "zz" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "zzx"
		// ......index:1; String: 3 characters: "zzy"
		// ......index:2; String: 3 characters: "zzz"
		// ....}
		// ..}
		// }
		//
		// Example Array:
		// php -r "echo serialize(array('x','y','z'));"
		// a:3:{i:0;s:1:"x";i:1;s:1:"y";i:2;s:1:"z";}
		// Array: 3 subitems:{
		// ..index:0; String: 1 Character: "x"
		// ..index:1; String: 1 Character: "y"
		// ..index:2; String: 1 Character: "z"
		// }
		//
		// Example String (Hoi, means Hi in dutch):
		// php -r "echo serialize('Hoi');"
		// s:3:"Hoi";
		// String: 3 Characters:"Hoi"
		//
		// Conclusion:
		// Basic idea:
		// If has a { } then it is a array
		// b:1;                                 // true
		// b:0;                                 // false
		// N;                                   // null
		// i:...;                               // intreger
		// d:...;                               // double
		// s:count:...;                         // string
		// a:count:{...};                       // array
		// O:countname:name:countitems:items;   // Object (we will not support that)

		// print(self.serializeDictionary([
		// "hello": ["cool": ["another", "dictionary"]],
		// "or": ["hello", "another", "array"],
		// "this": "is",
		// "a": true,
		// "test": 23
		// ]))

		var retValue: String = "a:\(objects.count):{"

		for i in (0 ..< objects.count) {
			retValue = retValue + "i:\(i);"
			retValue = retValue + self.serializeStrings(objects[i])
		}

		retValue = retValue + "}"
		return retValue
	}

	/**
	 **Internal function** for serializing Dictionary for php.serialize()

	 - Parameter objects: The Dictionary

	 - Returns: the serialized Dictionary
	 */
	private func serializeDictionary(_ objects: [String: AnyObject]) -> String {
		// We must support Strings and Arrays.
		// Example Array-in-Array (3 deep): [! SWIFT CALL THIS A DICTIONARY !]
		// php -r "echo serialize(array('x' => array('xx' => array('xxx', 'xxy', 'xxz'), 'xy' => array('xyx', 'xyy', 'xyz'), 'xz' => array('xzx', 'xzy', 'xzz')), 'y' => array('yx' => array('yxx', 'yxy', 'yxz'), 'yy' => array('yyx', 'yyy', 'yyz'), 'yz' => array('yzx', 'yzy', 'yzz')), 'z' => array('zx' => array('zxx', 'zxy', 'zxz'), 'zy' => array('zyx', 'zyy', 'zyz'), 'zz' => array('zzx', 'zzy', 'zzz'))));"
		// a:3:{s:1:"x";a:3:{s:2:"xx";a:3:{i:0;s:3:"xxx";i:1;s:3:"xxy";i:2;s:3:"xxz";}s:2:"xy";a:3:{i:0;s:3:"xyx";i:1;s:3:"xyy";i:2;s:3:"xyz";}s:2:"xz";a:3:{i:0;s:3:"xzx";i:1;s:3:"xzy";i:2;s:3:"xzz";}}s:1:"y";a:3:{s:2:"yx";a:3:{i:0;s:3:"yxx";i:1;s:3:"yxy";i:2;s:3:"yxz";}s:2:"yy";a:3:{i:0;s:3:"yyx";i:1;s:3:"yyy";i:2;s:3:"yyz";}s:2:"yz";a:3:{i:0;s:3:"yzx";i:1;s:3:"yzy";i:2;s:3:"yzz";}}s:1:"z";a:3:{s:2:"zx";a:3:{i:0;s:3:"zxx";i:1;s:3:"zxy";i:2;s:3:"zxz";}s:2:"zy";a:3:{i:0;s:3:"zyx";i:1;s:3:"zyy";i:2;s:3:"zyz";}s:2:"zz";a:3:{i:0;s:3:"zzx";i:1;s:3:"zzy";i:2;s:3:"zzz";}}}
		// Array: 3 subitems: {
		// ..String: 1: "x"
		// ..Array 3 subitems: {
		// ....String: 2 characters: "xx" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "xxx"
		// ......index:1; String: 3 characters: "xxy"
		// ......index:2; String: 3 characters: "xxz"
		// ....}
		// ....String: 2 characters: "xy" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "xyx"
		// ......index:1; String: 3 characters: "xyy"
		// ......index:2; String: 3 characters: "xyz"
		// ....}
		// ....String: 2 characters: "xz" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "xzx"
		// ......index:1; String: 3 characters: "xzy"
		// ......index:2; String: 3 characters: "xzz"
		// ....}
		// ..}
		// ..String: 1: "y"
		// ....Array 3 subitems: {
		// ....String: 2 characters: "yx" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "yxx"
		// ......index:1; String: 3 characters: "yxy"
		// ......index:2; String: 3 characters: "yxz"
		// ....}
		// ....String: 2 characters: "yy" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "yyx"
		// ......index:1; String: 3 characters: "yyy"
		// ......index:2; String: 3 characters: "yyz"
		// ....}
		// ....String: 2 characters: "yz" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "yzx"
		// ......index:1; String: 3 characters: "yzy"
		// ......index:2; String: 3 characters: "yzz"
		// ....}
		// ..}
		// ..String: 1: "z"
		// ....Array 3 subitems: {
		// ....String: 2 characters: "zx" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "zxx"
		// ......index:1; String: 3 characters: "zxy"
		// ......index:2; String: 3 characters: "zxz"
		// ....}
		// ....String: 2 characters: "zy" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "zyx"
		// ......index:1; String: 3 characters: "zyy"
		// ......index:2; String: 3 characters: "zyz"
		// ....}
		// ....String: 2 characters: "zz" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "zzx"
		// ......index:1; String: 3 characters: "zzy"
		// ......index:2; String: 3 characters: "zzz"
		// ....}
		// ..}
		// }
		//
		// Example Array:
		// php -r "echo serialize(array('x','y','z'));"
		// a:3:{i:0;s:1:"x";i:1;s:1:"y";i:2;s:1:"z";}
		// Array: 3 subitems:{
		// ..index:0; String: 1 Character: "x"
		// ..index:1; String: 1 Character: "y"
		// ..index:2; String: 1 Character: "z"
		// }
		//
		// Example String (Hoi, means Hi in dutch):
		// php -r "echo serialize('Hoi');"
		// s:3:"Hoi";
		// String: 3 Characters:"Hoi"
		//
		// Conclusion:
		// Basic idea:
		// If has a { } then it is a array
		// b:1;                                 // true
		// b:0;                                 // false
		// N;                                   // null
		// i:...;                               // intreger
		// d:...;                               // double
		// s:count:...;                         // string
		// a:count:{...};                       // array
		// O:countname:name:countitems:items;   // Object (we will not support that)

		// print(self.serializeDictionary([
		// "hello": ["cool": ["another", "dictionary"]],
		// "or": ["hello", "another", "array"],
		// "this": "is",
		// "a": true,
		// "test": 23
		// ]))

		var retValue = "a:\(objects.count):{"
		var count: Int = 0

		for (item, value) in objects {
			// if string then i!

//            if (String(type(of: value)) == "_NSContiguousString") {// if a string then count.
//                retValue = retValue + self.serializeInts(count)
//            }
			retValue = retValue + self.serializeStrings(item)
			retValue = retValue + self.serializeType(value)

			count += 1
		}

		retValue = retValue + "}"

		return retValue
	}

	/**
	 **Internal function** for serializing objects for php.serialize()

	 - Parameter objects: The Objects

	 - Returns: the serialized object (*not supported*)
	 */
	private func serializeObjects(_ objects: Any) -> String {
		// We must support Strings and Arrays.
		// Example Array-in-Array (3 deep): [! SWIFT CALL THIS A DICTIONARY !]
		// php -r "echo serialize(array('x' => array('xx' => array('xxx', 'xxy', 'xxz'), 'xy' => array('xyx', 'xyy', 'xyz'), 'xz' => array('xzx', 'xzy', 'xzz')), 'y' => array('yx' => array('yxx', 'yxy', 'yxz'), 'yy' => array('yyx', 'yyy', 'yyz'), 'yz' => array('yzx', 'yzy', 'yzz')), 'z' => array('zx' => array('zxx', 'zxy', 'zxz'), 'zy' => array('zyx', 'zyy', 'zyz'), 'zz' => array('zzx', 'zzy', 'zzz'))));"
		// a:3:{s:1:"x";a:3:{s:2:"xx";a:3:{i:0;s:3:"xxx";i:1;s:3:"xxy";i:2;s:3:"xxz";}s:2:"xy";a:3:{i:0;s:3:"xyx";i:1;s:3:"xyy";i:2;s:3:"xyz";}s:2:"xz";a:3:{i:0;s:3:"xzx";i:1;s:3:"xzy";i:2;s:3:"xzz";}}s:1:"y";a:3:{s:2:"yx";a:3:{i:0;s:3:"yxx";i:1;s:3:"yxy";i:2;s:3:"yxz";}s:2:"yy";a:3:{i:0;s:3:"yyx";i:1;s:3:"yyy";i:2;s:3:"yyz";}s:2:"yz";a:3:{i:0;s:3:"yzx";i:1;s:3:"yzy";i:2;s:3:"yzz";}}s:1:"z";a:3:{s:2:"zx";a:3:{i:0;s:3:"zxx";i:1;s:3:"zxy";i:2;s:3:"zxz";}s:2:"zy";a:3:{i:0;s:3:"zyx";i:1;s:3:"zyy";i:2;s:3:"zyz";}s:2:"zz";a:3:{i:0;s:3:"zzx";i:1;s:3:"zzy";i:2;s:3:"zzz";}}}
		// Array: 3 subitems: {
		// ..String: 1: "x"
		// ..Array 3 subitems: {
		// ....String: 2 characters: "xx" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "xxx"
		// ......index:1; String: 3 characters: "xxy"
		// ......index:2; String: 3 characters: "xxz"
		// ....}
		// ....String: 2 characters: "xy" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "xyx"
		// ......index:1; String: 3 characters: "xyy"
		// ......index:2; String: 3 characters: "xyz"
		// ....}
		// ....String: 2 characters: "xz" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "xzx"
		// ......index:1; String: 3 characters: "xzy"
		// ......index:2; String: 3 characters: "xzz"
		// ....}
		// ..}
		// ..String: 1: "y"
		// ....Array 3 subitems: {
		// ....String: 2 characters: "yx" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "yxx"
		// ......index:1; String: 3 characters: "yxy"
		// ......index:2; String: 3 characters: "yxz"
		// ....}
		// ....String: 2 characters: "yy" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "yyx"
		// ......index:1; String: 3 characters: "yyy"
		// ......index:2; String: 3 characters: "yyz"
		// ....}
		// ....String: 2 characters: "yz" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "yzx"
		// ......index:1; String: 3 characters: "yzy"
		// ......index:2; String: 3 characters: "yzz"
		// ....}
		// ..}
		// ..String: 1: "z"
		// ....Array 3 subitems: {
		// ....String: 2 characters: "zx" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "zxx"
		// ......index:1; String: 3 characters: "zxy"
		// ......index:2; String: 3 characters: "zxz"
		// ....}
		// ....String: 2 characters: "zy" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "zyx"
		// ......index:1; String: 3 characters: "zyy"
		// ......index:2; String: 3 characters: "zyz"
		// ....}
		// ....String: 2 characters: "zz" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "zzx"
		// ......index:1; String: 3 characters: "zzy"
		// ......index:2; String: 3 characters: "zzz"
		// ....}
		// ..}
		// }
		//
		// Example Array:
		// php -r "echo serialize(array('x','y','z'));"
		// a:3:{i:0;s:1:"x";i:1;s:1:"y";i:2;s:1:"z";}
		// Array: 3 subitems:{
		// ..index:0; String: 1 Character: "x"
		// ..index:1; String: 1 Character: "y"
		// ..index:2; String: 1 Character: "z"
		// }
		//
		// Example String (Hoi, means Hi in dutch):
		// php -r "echo serialize('Hoi');"
		// s:3:"Hoi";
		// String: 3 Characters:"Hoi"
		//
		// Conclusion:
		// Basic idea:
		// If has a { } then it is a array
		// b:1;                                 // true
		// b:0;                                 // false
		// N;                                   // null
		// i:...;                               // intreger
		// d:...;                               // double
		// s:count:...;                         // string
		// a:count:{...};                       // array
		// O:countname:name:countitems:items;   // Object (we will not support that)

		// print(self.serializeDictionary([
		// "hello": ["cool": ["another", "dictionary"]],
		// "or": ["hello", "another", "array"],
		// "this": "is",
		// "a": true,
		// "test": 23
		// ]))

		return "O:13:\"NOT SUPPORTED\":1:{s:13:\"NOT SUPPORTED\"};"
	}

	/**
	 **Internal function** for serializing bools for php.serialize()

	 - Parameter objects: The bool

	 - Returns: the serialized bool
	 */
	private func serializeBools(_ objects: Bool) -> String {
		// We must support Strings and Arrays.
		// Example Array-in-Array (3 deep): [! SWIFT CALL THIS A DICTIONARY !]
		// php -r "echo serialize(array('x' => array('xx' => array('xxx', 'xxy', 'xxz'), 'xy' => array('xyx', 'xyy', 'xyz'), 'xz' => array('xzx', 'xzy', 'xzz')), 'y' => array('yx' => array('yxx', 'yxy', 'yxz'), 'yy' => array('yyx', 'yyy', 'yyz'), 'yz' => array('yzx', 'yzy', 'yzz')), 'z' => array('zx' => array('zxx', 'zxy', 'zxz'), 'zy' => array('zyx', 'zyy', 'zyz'), 'zz' => array('zzx', 'zzy', 'zzz'))));"
		// a:3:{s:1:"x";a:3:{s:2:"xx";a:3:{i:0;s:3:"xxx";i:1;s:3:"xxy";i:2;s:3:"xxz";}s:2:"xy";a:3:{i:0;s:3:"xyx";i:1;s:3:"xyy";i:2;s:3:"xyz";}s:2:"xz";a:3:{i:0;s:3:"xzx";i:1;s:3:"xzy";i:2;s:3:"xzz";}}s:1:"y";a:3:{s:2:"yx";a:3:{i:0;s:3:"yxx";i:1;s:3:"yxy";i:2;s:3:"yxz";}s:2:"yy";a:3:{i:0;s:3:"yyx";i:1;s:3:"yyy";i:2;s:3:"yyz";}s:2:"yz";a:3:{i:0;s:3:"yzx";i:1;s:3:"yzy";i:2;s:3:"yzz";}}s:1:"z";a:3:{s:2:"zx";a:3:{i:0;s:3:"zxx";i:1;s:3:"zxy";i:2;s:3:"zxz";}s:2:"zy";a:3:{i:0;s:3:"zyx";i:1;s:3:"zyy";i:2;s:3:"zyz";}s:2:"zz";a:3:{i:0;s:3:"zzx";i:1;s:3:"zzy";i:2;s:3:"zzz";}}}
		// Array: 3 subitems: {
		// ..String: 1: "x"
		// ..Array 3 subitems: {
		// ....String: 2 characters: "xx" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "xxx"
		// ......index:1; String: 3 characters: "xxy"
		// ......index:2; String: 3 characters: "xxz"
		// ....}
		// ....String: 2 characters: "xy" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "xyx"
		// ......index:1; String: 3 characters: "xyy"
		// ......index:2; String: 3 characters: "xyz"
		// ....}
		// ....String: 2 characters: "xz" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "xzx"
		// ......index:1; String: 3 characters: "xzy"
		// ......index:2; String: 3 characters: "xzz"
		// ....}
		// ..}
		// ..String: 1: "y"
		// ....Array 3 subitems: {
		// ....String: 2 characters: "yx" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "yxx"
		// ......index:1; String: 3 characters: "yxy"
		// ......index:2; String: 3 characters: "yxz"
		// ....}
		// ....String: 2 characters: "yy" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "yyx"
		// ......index:1; String: 3 characters: "yyy"
		// ......index:2; String: 3 characters: "yyz"
		// ....}
		// ....String: 2 characters: "yz" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "yzx"
		// ......index:1; String: 3 characters: "yzy"
		// ......index:2; String: 3 characters: "yzz"
		// ....}
		// ..}
		// ..String: 1: "z"
		// ....Array 3 subitems: {
		// ....String: 2 characters: "zx" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "zxx"
		// ......index:1; String: 3 characters: "zxy"
		// ......index:2; String: 3 characters: "zxz"
		// ....}
		// ....String: 2 characters: "zy" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "zyx"
		// ......index:1; String: 3 characters: "zyy"
		// ......index:2; String: 3 characters: "zyz"
		// ....}
		// ....String: 2 characters: "zz" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "zzx"
		// ......index:1; String: 3 characters: "zzy"
		// ......index:2; String: 3 characters: "zzz"
		// ....}
		// ..}
		// }
		//
		// Example Array:
		// php -r "echo serialize(array('x','y','z'));"
		// a:3:{i:0;s:1:"x";i:1;s:1:"y";i:2;s:1:"z";}
		// Array: 3 subitems:{
		// ..index:0; String: 1 Character: "x"
		// ..index:1; String: 1 Character: "y"
		// ..index:2; String: 1 Character: "z"
		// }
		//
		// Example String (Hoi, means Hi in dutch):
		// php -r "echo serialize('Hoi');"
		// s:3:"Hoi";
		// String: 3 Characters:"Hoi"
		//
		// Conclusion:
		// Basic idea:
		// If has a { } then it is a array
		// b:1;                                 // true
		// b:0;                                 // false
		// N;                                   // null
		// i:...;                               // intreger
		// d:...;                               // double
		// s:count:...;                         // string
		// a:count:{...};                       // array
		// O:countname:name:countitems:items;   // Object (we will not support that)

		// print(self.serializeDictionary([
		// "hello": ["cool": ["another", "dictionary"]],
		// "or": ["hello", "another", "array"],
		// "this": "is",
		// "a": true,
		// "test": 23
		// ]))

		return (objects) ? "b:1;" : "b:0;"
	}

	/**
	 **Internal function** for serializing ints for php.serialize()

	 - Parameter objects: The int

	 - Returns: the serialized int
	 */
	private func serializeInts(_ objects: Int) -> String {
		// We must support Strings and Arrays.
		// Example Array-in-Array (3 deep): [! SWIFT CALL THIS A DICTIONARY !]
		// php -r "echo serialize(array('x' => array('xx' => array('xxx', 'xxy', 'xxz'), 'xy' => array('xyx', 'xyy', 'xyz'), 'xz' => array('xzx', 'xzy', 'xzz')), 'y' => array('yx' => array('yxx', 'yxy', 'yxz'), 'yy' => array('yyx', 'yyy', 'yyz'), 'yz' => array('yzx', 'yzy', 'yzz')), 'z' => array('zx' => array('zxx', 'zxy', 'zxz'), 'zy' => array('zyx', 'zyy', 'zyz'), 'zz' => array('zzx', 'zzy', 'zzz'))));"
		// a:3:{s:1:"x";a:3:{s:2:"xx";a:3:{i:0;s:3:"xxx";i:1;s:3:"xxy";i:2;s:3:"xxz";}s:2:"xy";a:3:{i:0;s:3:"xyx";i:1;s:3:"xyy";i:2;s:3:"xyz";}s:2:"xz";a:3:{i:0;s:3:"xzx";i:1;s:3:"xzy";i:2;s:3:"xzz";}}s:1:"y";a:3:{s:2:"yx";a:3:{i:0;s:3:"yxx";i:1;s:3:"yxy";i:2;s:3:"yxz";}s:2:"yy";a:3:{i:0;s:3:"yyx";i:1;s:3:"yyy";i:2;s:3:"yyz";}s:2:"yz";a:3:{i:0;s:3:"yzx";i:1;s:3:"yzy";i:2;s:3:"yzz";}}s:1:"z";a:3:{s:2:"zx";a:3:{i:0;s:3:"zxx";i:1;s:3:"zxy";i:2;s:3:"zxz";}s:2:"zy";a:3:{i:0;s:3:"zyx";i:1;s:3:"zyy";i:2;s:3:"zyz";}s:2:"zz";a:3:{i:0;s:3:"zzx";i:1;s:3:"zzy";i:2;s:3:"zzz";}}}
		// Array: 3 subitems: {
		// ..String: 1: "x"
		// ..Array 3 subitems: {
		// ....String: 2 characters: "xx" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "xxx"
		// ......index:1; String: 3 characters: "xxy"
		// ......index:2; String: 3 characters: "xxz"
		// ....}
		// ....String: 2 characters: "xy" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "xyx"
		// ......index:1; String: 3 characters: "xyy"
		// ......index:2; String: 3 characters: "xyz"
		// ....}
		// ....String: 2 characters: "xz" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "xzx"
		// ......index:1; String: 3 characters: "xzy"
		// ......index:2; String: 3 characters: "xzz"
		// ....}
		// ..}
		// ..String: 1: "y"
		// ....Array 3 subitems: {
		// ....String: 2 characters: "yx" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "yxx"
		// ......index:1; String: 3 characters: "yxy"
		// ......index:2; String: 3 characters: "yxz"
		// ....}
		// ....String: 2 characters: "yy" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "yyx"
		// ......index:1; String: 3 characters: "yyy"
		// ......index:2; String: 3 characters: "yyz"
		// ....}
		// ....String: 2 characters: "yz" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "yzx"
		// ......index:1; String: 3 characters: "yzy"
		// ......index:2; String: 3 characters: "yzz"
		// ....}
		// ..}
		// ..String: 1: "z"
		// ....Array 3 subitems: {
		// ....String: 2 characters: "zx" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "zxx"
		// ......index:1; String: 3 characters: "zxy"
		// ......index:2; String: 3 characters: "zxz"
		// ....}
		// ....String: 2 characters: "zy" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "zyx"
		// ......index:1; String: 3 characters: "zyy"
		// ......index:2; String: 3 characters: "zyz"
		// ....}
		// ....String: 2 characters: "zz" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "zzx"
		// ......index:1; String: 3 characters: "zzy"
		// ......index:2; String: 3 characters: "zzz"
		// ....}
		// ..}
		// }
		//
		// Example Array:
		// php -r "echo serialize(array('x','y','z'));"
		// a:3:{i:0;s:1:"x";i:1;s:1:"y";i:2;s:1:"z";}
		// Array: 3 subitems:{
		// ..index:0; String: 1 Character: "x"
		// ..index:1; String: 1 Character: "y"
		// ..index:2; String: 1 Character: "z"
		// }
		//
		// Example String (Hoi, means Hi in dutch):
		// php -r "echo serialize('Hoi');"
		// s:3:"Hoi";
		// String: 3 Characters:"Hoi"
		//
		// Conclusion:
		// Basic idea:
		// If has a { } then it is a array
		// b:1;                                 // true
		// b:0;                                 // false
		// N;                                   // null
		// i:...;                               // intreger
		// d:...;                               // double
		// s:count:...;                         // string
		// a:count:{...};                       // array
		// O:countname:name:countitems:items;   // Object (we will not support that)

		// print(self.serializeDictionary([
		// "hello": ["cool": ["another", "dictionary"]],
		// "or": ["hello", "another", "array"],
		// "this": "is",
		// "a": true,
		// "test": 23
		// ]))

		return "i:\(objects);"
	}

	/**
	 **Internal function** for serializing doubles for php.serialize()

	 - Parameter objects: The double

	 - Returns: the serialized double
	 */
	private func serializeDoubles(_ objects: Double) -> String {
		// We must support Strings and Arrays.
		// Example Array-in-Array (3 deep): [! SWIFT CALL THIS A DICTIONARY !]
		// php -r "echo serialize(array('x' => array('xx' => array('xxx', 'xxy', 'xxz'), 'xy' => array('xyx', 'xyy', 'xyz'), 'xz' => array('xzx', 'xzy', 'xzz')), 'y' => array('yx' => array('yxx', 'yxy', 'yxz'), 'yy' => array('yyx', 'yyy', 'yyz'), 'yz' => array('yzx', 'yzy', 'yzz')), 'z' => array('zx' => array('zxx', 'zxy', 'zxz'), 'zy' => array('zyx', 'zyy', 'zyz'), 'zz' => array('zzx', 'zzy', 'zzz'))));"
		// a:3:{s:1:"x";a:3:{s:2:"xx";a:3:{i:0;s:3:"xxx";i:1;s:3:"xxy";i:2;s:3:"xxz";}s:2:"xy";a:3:{i:0;s:3:"xyx";i:1;s:3:"xyy";i:2;s:3:"xyz";}s:2:"xz";a:3:{i:0;s:3:"xzx";i:1;s:3:"xzy";i:2;s:3:"xzz";}}s:1:"y";a:3:{s:2:"yx";a:3:{i:0;s:3:"yxx";i:1;s:3:"yxy";i:2;s:3:"yxz";}s:2:"yy";a:3:{i:0;s:3:"yyx";i:1;s:3:"yyy";i:2;s:3:"yyz";}s:2:"yz";a:3:{i:0;s:3:"yzx";i:1;s:3:"yzy";i:2;s:3:"yzz";}}s:1:"z";a:3:{s:2:"zx";a:3:{i:0;s:3:"zxx";i:1;s:3:"zxy";i:2;s:3:"zxz";}s:2:"zy";a:3:{i:0;s:3:"zyx";i:1;s:3:"zyy";i:2;s:3:"zyz";}s:2:"zz";a:3:{i:0;s:3:"zzx";i:1;s:3:"zzy";i:2;s:3:"zzz";}}}
		// Array: 3 subitems: {
		// ..String: 1: "x"
		// ..Array 3 subitems: {
		// ....String: 2 characters: "xx" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "xxx"
		// ......index:1; String: 3 characters: "xxy"
		// ......index:2; String: 3 characters: "xxz"
		// ....}
		// ....String: 2 characters: "xy" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "xyx"
		// ......index:1; String: 3 characters: "xyy"
		// ......index:2; String: 3 characters: "xyz"
		// ....}
		// ....String: 2 characters: "xz" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "xzx"
		// ......index:1; String: 3 characters: "xzy"
		// ......index:2; String: 3 characters: "xzz"
		// ....}
		// ..}
		// ..String: 1: "y"
		// ....Array 3 subitems: {
		// ....String: 2 characters: "yx" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "yxx"
		// ......index:1; String: 3 characters: "yxy"
		// ......index:2; String: 3 characters: "yxz"
		// ....}
		// ....String: 2 characters: "yy" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "yyx"
		// ......index:1; String: 3 characters: "yyy"
		// ......index:2; String: 3 characters: "yyz"
		// ....}
		// ....String: 2 characters: "yz" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "yzx"
		// ......index:1; String: 3 characters: "yzy"
		// ......index:2; String: 3 characters: "yzz"
		// ....}
		// ..}
		// ..String: 1: "z"
		// ....Array 3 subitems: {
		// ....String: 2 characters: "zx" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "zxx"
		// ......index:1; String: 3 characters: "zxy"
		// ......index:2; String: 3 characters: "zxz"
		// ....}
		// ....String: 2 characters: "zy" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "zyx"
		// ......index:1; String: 3 characters: "zyy"
		// ......index:2; String: 3 characters: "zyz"
		// ....}
		// ....String: 2 characters: "zz" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "zzx"
		// ......index:1; String: 3 characters: "zzy"
		// ......index:2; String: 3 characters: "zzz"
		// ....}
		// ..}
		// }
		//
		// Example Array:
		// php -r "echo serialize(array('x','y','z'));"
		// a:3:{i:0;s:1:"x";i:1;s:1:"y";i:2;s:1:"z";}
		// Array: 3 subitems:{
		// ..index:0; String: 1 Character: "x"
		// ..index:1; String: 1 Character: "y"
		// ..index:2; String: 1 Character: "z"
		// }
		//
		// Example String (Hoi, means Hi in dutch):
		// php -r "echo serialize('Hoi');"
		// s:3:"Hoi";
		// String: 3 Characters:"Hoi"
		//
		// Conclusion:
		// Basic idea:
		// If has a { } then it is a array
		// b:1;                                 // true
		// b:0;                                 // false
		// N;                                   // null
		// i:...;                               // intreger
		// d:...;                               // double
		// s:count:...;                         // string
		// a:count:{...};                       // array
		// O:countname:name:countitems:items;   // Object (we will not support that)

		// print(self.serializeDictionary([
		// "hello": ["cool": ["another", "dictionary"]],
		// "or": ["hello", "another", "array"],
		// "this": "is",
		// "a": true,
		// "test": 23
		// ]))

		return "d:\(objects);"
	}

	/**
	 **Internal function** for serializing strings for php.serialize()

	 - Parameter objects: The string

	 - Returns: the serialized string
	 */
	private func serializeStrings(_ objects: String) -> String {
		// We must support Strings and Arrays.
		// Example Array-in-Array (3 deep): [! SWIFT CALL THIS A DICTIONARY !]
		// php -r "echo serialize(array('x' => array('xx' => array('xxx', 'xxy', 'xxz'), 'xy' => array('xyx', 'xyy', 'xyz'), 'xz' => array('xzx', 'xzy', 'xzz')), 'y' => array('yx' => array('yxx', 'yxy', 'yxz'), 'yy' => array('yyx', 'yyy', 'yyz'), 'yz' => array('yzx', 'yzy', 'yzz')), 'z' => array('zx' => array('zxx', 'zxy', 'zxz'), 'zy' => array('zyx', 'zyy', 'zyz'), 'zz' => array('zzx', 'zzy', 'zzz'))));"
		// a:3:{s:1:"x";a:3:{s:2:"xx";a:3:{i:0;s:3:"xxx";i:1;s:3:"xxy";i:2;s:3:"xxz";}s:2:"xy";a:3:{i:0;s:3:"xyx";i:1;s:3:"xyy";i:2;s:3:"xyz";}s:2:"xz";a:3:{i:0;s:3:"xzx";i:1;s:3:"xzy";i:2;s:3:"xzz";}}s:1:"y";a:3:{s:2:"yx";a:3:{i:0;s:3:"yxx";i:1;s:3:"yxy";i:2;s:3:"yxz";}s:2:"yy";a:3:{i:0;s:3:"yyx";i:1;s:3:"yyy";i:2;s:3:"yyz";}s:2:"yz";a:3:{i:0;s:3:"yzx";i:1;s:3:"yzy";i:2;s:3:"yzz";}}s:1:"z";a:3:{s:2:"zx";a:3:{i:0;s:3:"zxx";i:1;s:3:"zxy";i:2;s:3:"zxz";}s:2:"zy";a:3:{i:0;s:3:"zyx";i:1;s:3:"zyy";i:2;s:3:"zyz";}s:2:"zz";a:3:{i:0;s:3:"zzx";i:1;s:3:"zzy";i:2;s:3:"zzz";}}}
		// Array: 3 subitems: {
		// ..String: 1: "x"
		// ..Array 3 subitems: {
		// ....String: 2 characters: "xx" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "xxx"
		// ......index:1; String: 3 characters: "xxy"
		// ......index:2; String: 3 characters: "xxz"
		// ....}
		// ....String: 2 characters: "xy" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "xyx"
		// ......index:1; String: 3 characters: "xyy"
		// ......index:2; String: 3 characters: "xyz"
		// ....}
		// ....String: 2 characters: "xz" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "xzx"
		// ......index:1; String: 3 characters: "xzy"
		// ......index:2; String: 3 characters: "xzz"
		// ....}
		// ..}
		// ..String: 1: "y"
		// ....Array 3 subitems: {
		// ....String: 2 characters: "yx" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "yxx"
		// ......index:1; String: 3 characters: "yxy"
		// ......index:2; String: 3 characters: "yxz"
		// ....}
		// ....String: 2 characters: "yy" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "yyx"
		// ......index:1; String: 3 characters: "yyy"
		// ......index:2; String: 3 characters: "yyz"
		// ....}
		// ....String: 2 characters: "yz" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "yzx"
		// ......index:1; String: 3 characters: "yzy"
		// ......index:2; String: 3 characters: "yzz"
		// ....}
		// ..}
		// ..String: 1: "z"
		// ....Array 3 subitems: {
		// ....String: 2 characters: "zx" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "zxx"
		// ......index:1; String: 3 characters: "zxy"
		// ......index:2; String: 3 characters: "zxz"
		// ....}
		// ....String: 2 characters: "zy" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "zyx"
		// ......index:1; String: 3 characters: "zyy"
		// ......index:2; String: 3 characters: "zyz"
		// ....}
		// ....String: 2 characters: "zz" (note the no index)
		// ....Array: 3 subitems: {
		// ......index:0; String: 3 characters: "zzx"
		// ......index:1; String: 3 characters: "zzy"
		// ......index:2; String: 3 characters: "zzz"
		// ....}
		// ..}
		// }
		//
		// Example Array:
		// php -r "echo serialize(array('x','y','z'));"
		// a:3:{i:0;s:1:"x";i:1;s:1:"y";i:2;s:1:"z";}
		// Array: 3 subitems:{
		// ..index:0; String: 1 Character: "x"
		// ..index:1; String: 1 Character: "y"
		// ..index:2; String: 1 Character: "z"
		// }
		//
		// Example String (Hoi, means Hi in dutch):
		// php -r "echo serialize('Hoi');"
		// s:3:"Hoi";
		// String: 3 Characters:"Hoi"
		//
		// Conclusion:
		// Basic idea:
		// If has a { } then it is a array
		// b:1;                                 // true
		// b:0;                                 // false
		// N;                                   // null
		// i:...;                               // intreger
		// d:...;                               // double
		// s:count:...;                         // string
		// a:count:{...};                       // array
		// O:countname:name:countitems:items;   // Object (we will not support that)

		// print(self.serializeDictionary([
		// "hello": ["cool": ["another", "dictionary"]],
		// "or": ["hello", "another", "array"],
		// "this": "is",
		// "a": true,
		// "test": 23
		// ]))

		return "s:\(objects.count):\"\(objects)\";"
	}

	/**
	 Set the type of a variable

	 - Parameter testVar: Any Variable

	 - Returns: Bool
	 */
	public func settype(_ testVar: inout Any, type: String) {
		print("Not Yet Supported")

		switch type {
		case "string":
            testVar = String(testVar as? String ?? NULL)
			case "array":
			testVar = Array(arrayLiteral: testVar)
			case "float", "integer", "int":
			testVar = self.intval(testVar)
			case "bool", "boolean":
			testVar = self.boolval(testVar)
			case "null":
			testVar = NULL

		default:
			break
		}
	}

	/**
	 Get string value of a variable

	 - Parameter ob: Any Variable

	 - Returns: String
	 */
	public func strval(_ testVar: Any) -> String {
		return String(testVar as? String ?? NULL)
	}

	/**
	 **Not supported (yet)** Creates a PHP value from a stored representation

	 - Parameter testVar: Any Variable

	 - Returns: Bool
	 */
	public func unserialize(_ testVar: Any) -> Any {
		print("Not Yet Supported")

		return false
	}

	/**
	 Unset a given variable (**Unsupported**)

	 - Parameter testVar: Any Variable
	 */
	public func unset(_ testVar: Any) {
		print("Not Supported")
	}

	/**
	 Dumps information about a variable

	 **Uses return(ob) and print(ob)!**

	 - Parameter ob: Expression
	 - Parameter letReturn: return?

	 - Returns: Any
	 */
	public func var_dump(_ ob: Any, _ letReturn: Bool = false) -> Any {
		if letReturn {
			return "\(ob)"
		} else {
			print(ob)
		}
		return ""
	}

	/**
	 Outputs or returns a parsable string representation of a variable

	 **Uses return(ob) and print(ob)!**

	 - Parameter ob: Expression
	 - Parameter letReturn: return?

	 - Returns: Any
	 */
	public func var_export(_ ob: Any, _ letReturn: Bool = false) -> Any {
		// mixed var_export ( mixed $expression [, bool $return = false ] )
		return var_dump(ob, letReturn)
	}
}
