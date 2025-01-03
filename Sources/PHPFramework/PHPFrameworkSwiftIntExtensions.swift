//
// PHP Framework
// PHPFramework is a collection of the most common PHP functions, implemented in Swift.
//
// https://github.com/0xWDG/PHPFramework
//
// File:    PHPFrameworkSwiftIntExtensions.swift
// Created: 29-FEB-2016
// Creator: Wesley de Groot | @0xWDG
// Issue:   N/A
// Prefix:  N/A

import Foundation

extension Int {
    func toString(_ x: Int) -> String {
        return String(format: "%2X", self)
    }

    static var range: CountableClosedRange<Int> {
        return Int.min...Int.max-1
    }
}
