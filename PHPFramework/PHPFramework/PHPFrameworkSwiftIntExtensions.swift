//
//  PHPFrameworkSwiftIntExtensions.swift
//  PHPFramework
//
//  Created by Wesley de Groot on 29-02-16.
//  Copyright © 2016 WDGWV. All rights reserved.
//

import Foundation

extension Int {
    func toString(x: Int) -> String {
        return String(format:"%2X", self)
    }
}