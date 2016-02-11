//
//  PHPFrameworkDirectory.swift
//  PHPFramework
//
//  Created by Wesley de Groot on 24-01-16.
//  Copyright © 2016 WDGWV. All rights reserved.
//
//  Item: #7

import Foundation

/**
 PHPFramework

 A Swift framework inspired by some PHP Functions.
 */
extension PHPFramework {
	
	/**
	 **Dummy** Change directory

	 - Parameter dir: String
	 */
	public func chdir(dir: String) -> Void {}
	
	/**
	 **Dummy** Change the root directory

	 - Parameter dir: String
	 */
	public func chroot(dir: String) -> Void {}
	
	/**
	 **Dummy** Close directory handle

	 - Parameter dir: String
	 */
	public func closedir(dir: String) -> Void {}
	
	/**
	 Return an instance of the Directory class (**Not supported**)\
	 Maybe later this will be supported, it needs to become a own class, within the php class.

	 - Parameter dir: String

	 - Returns: false
	 */
	public func dir(dir: String) -> Bool {
		print("Not supported")
		return false
	}
	
	/**
	 Gets the current working directory

	 - Returns: Document directory
	 */
	public func getcwd() -> String {
		let documentDirectoryURL = try! NSFileManager().URLForDirectory(.DocumentDirectory, inDomain: .UserDomainMask, appropriateForURL: nil, create: true)
		return (documentDirectoryURL.relativePath != nil) ? documentDirectoryURL.relativePath! : "."
	}
	
	/**
	 Open directory handle

	 *Secretly a dummy, wich returns the directory url*

	 - Parameter dir: String

	 - Returns: directory url
	 */
	public func opendir(dir: String) -> String {
		return dir
	}
	
	/**
	 Read entry from directory handle

	 - Parameter dir: String

	 - Returns: a Array<String> of all the files
	 */
	public func readdir(dir: String) -> Array<String> {
		var _returnArray: Array<String> = Array<String>()
		
		// Will also loop trough subdirectory's :(
		// let filemanager: NSFileManager = NSFileManager()
		// if (filemanager.fileExistsAtPath(dir)) {
		// . let files = filemanager.enumeratorAtPath(dir)
		// . while let file = files?.nextObject() {
		// .  _returnArray.append(file as! String)
		// . }
		// } else {
		// . print("Error, path \(dir) does not exists")
		// }
		
		do {
			if let directoryUrls = try? NSFileManager.defaultManager().contentsOfDirectoryAtURL(NSURL(string: dir)!, includingPropertiesForKeys: nil, options: NSDirectoryEnumerationOptions.SkipsSubdirectoryDescendants) {
				for (var i = 0; i < directoryUrls.count; i++) {
					_returnArray.append(directoryUrls[i].lastPathComponent!)
				}
			}
			
		}
		
		return _returnArray
	}
	
	/**
	 **Dummy** Rewind directory handle

	 - Parameter dir: String
	 */
	public func rewinddir(dir: String) -> Void {}
	
	/**
	 List files and directories inside the specified path

	 - Parameter dir: String

	 - Returns: a Array<String> of all the files
	 */
	public func scandir(dir: String) -> Array<String> {
		return readdir(dir)
	}
}
