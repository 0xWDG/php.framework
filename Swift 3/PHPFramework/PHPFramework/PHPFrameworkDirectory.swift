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
 File:    PHPFrameworkDirectory.swift
 Created: 24-JAN-2016
 Creator: Wesley de Groot | g: @wdg | t: @wesdegroot
 Issue:   #7 (Directory Functions)
 Prefix:  PFD
 ---------------------------------------------------
 */

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
	public func chdir(_ dir: String) -> Void {}
	
	/**
	 **Dummy** Change the root directory

	 - Parameter dir: String
	 */
	public func chroot(_ dir: String) -> Void {}
	
	/**
	 **Dummy** Close directory handle

	 - Parameter dir: String
	 */
	public func closedir(_ dir: String) -> Void {}
	
	/**
	 Return an instance of the Directory class (**Not supported**)\
	 Maybe later this will be supported, it needs to become a own class, within the php class.

	 - Parameter dir: String

	 - Returns: false
	 */
	public func dir(_ dir: String) -> Bool {
		print("Not supported")
		return false
	}
	
	/**
	 Gets the current working directory

	 - Returns: Document directory
	 */
	public func getcwd() -> String {
		let documentDirectoryURL = try! FileManager().urlForDirectory(.documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
		return (documentDirectoryURL.relativePath != nil) ? documentDirectoryURL.relativePath! : "."
	}
	
	/**
	 Open directory handle

	 *Secretly a dummy, wich returns the directory url*

	 - Parameter dir: String

	 - Returns: directory url
	 */
	public func opendir(_ dir: String) -> String {
		return dir
	}
	
	/**
	 Read entry from directory handle

	 - Parameter dir: String

	 - Returns: a Array<String> of all the files
	 */
	public func readdir(_ dir: String) -> Array<String> {
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
			if let directoryUrls = try? FileManager.default().contentsOfDirectory(at: URL(string: dir)!, includingPropertiesForKeys: nil, options: FileManager.DirectoryEnumerationOptions.skipsSubdirectoryDescendants) {
				for i in (0 ..< directoryUrls.count) {
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
	public func rewinddir(_ dir: String) -> Void {}
	
	/**
	 List files and directories inside the specified path

	 - Parameter dir: String

	 - Returns: a Array<String> of all the files
	 */
	public func scandir(_ dir: String) -> Array<String> {
		return readdir(dir)
	}
}
