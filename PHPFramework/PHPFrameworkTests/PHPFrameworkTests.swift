//
//  PHPFrameworkTests.swift
//  PHPFrameworkTests
//
//  Created by Wesley de Groot on 15-01-16.
//  Copyright © 2016 WDGWV. All rights reserved.
//

import XCTest
@testable import PHPFramework

/**
 **PHP.Framework** \
 *PHP In Swift*
 
 Test class
 
 With this class you can run tests for PHP.Framework.
 
 Use `PHPTest.Test(val1, val2)` Or
 
 Please see a `.swift` file for more information about how it works
 
 */
class PHPFrameworkTests: XCTestCase {
    
    let E: String = php.getcwd()
    let PASS: String = "Tend"
    let FAIL: String = "FAIL"
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
//    func testBier() {
//        XCTAssertFalse(false)
//        let date = NSDate()
//        XCTAssertEqual(date, date)
////        print("HI")
//        
//        php.echo("123")
//    }
    
    /**
     Our internal test function.
     
     - Paramter Tin: test input 1
     - Parameter Tend: test input 2
     - Parameter deb: debug (default: false)
     */
    internal func Test(Tin: Any = "Tin", _ Tend: Any = "Tend", _ deb: Bool = false) -> String {
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
}
