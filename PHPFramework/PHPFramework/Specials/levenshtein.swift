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
 File:    levenshtein.swift
 Created: 16-FEB-2016
 Creator: Wesley de Groot | g: @wdg | t: @wesdegroot
 Issue:   #1 (String Functions)
 Prefix:  N/A
 ---------------------------------------------------
 */

import Foundation

/**
 **PHP.Framework** \
 *PHP In Swift*

 Levenshtein calculator class
 */
public class calculateLevenshtein {
	/**
	 Does nothing spectacular
	 */
	public init() {
	}
	
	/**
	 Internal function min.

	 - Parameter numbers: Int...

	 - Returns: Int
	 */
	internal func min(numbers: Int...) -> Int {
		return numbers.reduce(numbers[0], combine: {$0 < $1 ? $0 : $1})
	}
	
	/**
	 Internal class Array2D\
	 *create a 2 dimensional array*
	 */
	internal class Array2D {
		var cols: Int, rows: Int
		var matrix: [Int]
		
		init(cols: Int, rows: Int) {
			self.cols = cols
			self.rows = rows
			matrix = Array(count: cols * rows, repeatedValue: 0)
		}
		
		subscript(col: Int, row: Int) -> Int {
			get {
				return matrix[cols * row + col]
			}
			set {
				matrix[cols * row + col] = newValue
			}
		}
		
		func colCount() -> Int {
			return self.cols
		}
		
		func rowCount() -> Int {
			return self.rows
		}
	}
	
	/**
	 Calculate Levenshtein distance between two strings

	 - Parameter aStr: The First String
	 - Parameter bStr: The Second String

	 - Returns: The String
	 */
	public func calc(aStr: String, _ bStr: String) -> Int {
		let a = Array(aStr.utf16)
		let b = Array(bStr.utf16)
		
		var dist = Array2D(cols: a.count + 1, rows: b.count + 1)
		
		if (self.lsNoop(dist)) {
			dist = Array2D(cols: a.count + 1, rows: b.count + 1)
		}
		
		for i in 1...a.count {
			dist[i, 0] = i
		}
		
		for j in 1...b.count {
			dist[0, j] = j
		}
		
		for i in 1...a.count {
			for j in 1...b.count {
				if a[i - 1] == b[j - 1] {
					dist[i, j] = dist[i - 1, j - 1] // noop
				} else {
					dist[i, j] = min(
						dist[i - 1, j] + 1, // deletion
						dist[i, j - 1] + 1, // insertion
						dist[i - 1, j - 1] + 1 // substitution
					)
				}
			}
		}
		
		return dist[a.count, b.count]
	}
	
	/**
	 Does nothing spectacular

	 - Parameter x: Any.
	 */
	func lsNoop(x: Any...) -> Bool {return false}
}
