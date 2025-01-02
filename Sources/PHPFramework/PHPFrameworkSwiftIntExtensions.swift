//  _____    _    _   _____    ______                                           _
// |  __ \  | |  | | |  __ \  |  ____|                                         | |
// | |__) | | |__| | | |__) | | |__ _ __ __ _ _ __ ___   _____      _____  _ __| | __
// |  ___/  |  __  | |  ___/  |  __| '__/ _` | '_ ` _ \ / _ \ \ /\ / / _ \| '__| |/ /
// | |      | |  | | | |      | |  | | | (_| | | | | | |  __/\ V  V / (_) | |  |   <
// |_|      |_|  |_| |_|      |_|  |_|  \__,_|_| |_| |_|\___| \_/\_/ \___/|_|  |_|\_\
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
