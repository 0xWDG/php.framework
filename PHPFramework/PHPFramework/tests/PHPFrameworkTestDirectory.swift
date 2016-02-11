//
//  PHPFrameworkTestDirectory.swift
//  PHPFramework
//
//  Created by Wesley de Groot on 05-02-16.
//  Copyright © 2016 WDGWV. All rights reserved.
//

import Foundation

extension PHPFrameworkTests {
	public func Directory() -> Dictionary<String, Any> {
		php.chdir(E)
		php.chroot(E)
		php.closedir(E)
		php.rewinddir(E)
		
		let tempDict: Dictionary<String, Any> = [
			"chdir": self.Test(PASS),
			"chroot": self.Test(PASS),
			"closedir": self.Test(PASS),
			"dir": "NOT SUPPORTED",
			"getcwd": self.Test(php.getcwd(), E),
			"opendir": self.Test(php.opendir(E), E), // Dynamic
			"readdir": self.Test(PASS),
			"rewinddir": self.Test(PASS),
			"scandir": self.Test(PASS)
		]
		
		return tempDict
	}
}