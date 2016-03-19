//
//  uucoding.swift
//  PHPFramework
//
//  Created by Wesley de Groot on 02-03-16.
//  Copyright © 2016 WDGWV. All rights reserved.
//

import Foundation

public class uucoding {
    
    private init() { }
    
    //#define ENC(c) ((c) ? ((c) & 077) + ' ': '`')
    private func _enc(char: String? = "") -> String {
        if (char != "") {
            let calc = Int(char!)! & 077
            return String("\(calc) ")
        } else {
            return "`"
        }
    }
    
    private func _encode(str: String) {
        /* 1 (up to) 45 character line */
        
        
    }
    
    
    public func encode(str: String) {
        
    }
    
    public func decode(str: String) {
        
    }
    
}