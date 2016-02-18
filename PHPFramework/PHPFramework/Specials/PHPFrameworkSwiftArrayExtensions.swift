//
//  PHPFrameworkSwiftArrayExtensions.swift
//  PHPFramework
//
//  Created by Wesley de Groot on 18-02-16.
//  Copyright © 2016 WDGWV. All rights reserved.
//

import Foundation

extension Array {
	mutating func shuffle()
	{
		for _ in 0..<10
		{
			sortInPlace {(_, _) in arc4random() < arc4random()}
		}
	}
}