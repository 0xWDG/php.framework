//
//  File.swift
//  PHPFramework
//
//  Created by Wesley de Groot on 02-03-16.
//  Copyright © 2016 WDGWV. All rights reserved.
//

import XCTest
@testable import PHPFramework

class testgetHumanClassname : XCTestCase {
    
    func testGHCBool() {
        XCTAssert((getClass(false) == "Bool"), "Did'nt see a Bool")
        XCTAssert((getClass(true) == "Bool"), "Did'nt see a Bool")
    }
    
    func testGHCDouble() {
        let x:Double = 3.2
        
        XCTAssert((getClass(x) == "Double"), "Did'nt see a Double")
    }
    
    func testGHCInt() {
        let x:Int = 32
        
        XCTAssert((getClass(x) == "Int"), "Did'nt see a Int")
    }
    
    
    func testGHCString() {
        let x:String = "aBc"
        
        XCTAssert((getClass(x) == "String"), "Did'nt see a String")
    }
    
    func testGHCNSString() {
        let x:NSString = "aBc"
        
        XCTAssert((getClass(x) == "String"), "Did'nt see a String")
    }
    
}