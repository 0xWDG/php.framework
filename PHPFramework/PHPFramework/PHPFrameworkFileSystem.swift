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
 File:    PHPFrameworkFileSystem.swift
 Created: 21-JAN-2016
 Creator: Wesley de Groot | g: @wdg | t: @wesdegroot
 Issue:   #8 (File System Functions)
 Prefix:  PFFS
 ---------------------------------------------------
 */

import Foundation

/**
 PHPFramework

 A Swift framework inspired by some PHP Functions.
 */
extension PHPFramework {
	
	/**
	 Returns trailing name component of path (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func basename(fh: String) -> String {
		print("Not done")
		
		return "Not done"
	}
	
	/**
	 Changes file group (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func chgrp(fh: String) -> Bool {
		print("Not done")
		
		return false
	}
	
	/**
	 Changes file mode (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func chmod(fh: String) -> Bool {
		print("Not done")
		
		return false
	}
	
	/**
	 Changes file owner (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func chown(fh: String) -> Bool {
		print("Not done")
		
		return false
	}
	
	/**
	 Clears file status cache (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func clearstatcache(fh: String) -> Bool {
		print("Not done")
		
		return false
	}
	
	/**
	 Copies file (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func copy(fh: String) -> Bool {
		print("Not done")
		
		return false
	}
	
	/**
	 See unlink or unset (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func delete(fh: String) -> Bool {
		print("Not done")
		
		return false
	}
	
	/**
	 Returns a parent directory's path (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func dirname(fh: String) -> String {
		print("Not done")
		
		return "Not done"
	}
	
	/**
	 Returns available space on filesystem or disk partition (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func disk_free_space(fh: String) -> String {
		print("Not done")
		
		return "Not done"
	}
	
	/**
	 Returns the total size of a filesystem or disk partition (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func disk_total_space(fh: String) -> String {
		print("Not done")
		
		return "Not done"
	}
	
	/**
	 Alias of disk_free_space (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func diskfreespace(fh: String) -> String {
		print("Not done")
		
		return "Not done"
	}
	
	/**
	 Closes an open file pointer (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func fclose(fh: String) -> Bool {
		print("Not done")
		
		return false
	}
	
	/**
	 Tests for end-of-file on a file pointer (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func feof(fh: String) -> Bool {
		print("Not done")
		
		return false
	}
	
	/**
	 Flushes the output to a file (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func fflush(fh: String) -> Bool {
		print("Not done")
		
		return false
	}
	
	/**
	 Gets character from file pointer (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func fgetc(fh: String) -> String {
		print("Not done")
		
		return "Not done"
	}
	
	/**
	 Gets line from file pointer and parse for CSV fields (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func fgetcsv(fh: String) -> String {
		print("Not done")
		
		return "Not done"
	}
	
	/**
	 Gets line from file pointer (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func fgets(fh: String) -> String {
		print("Not done")
		
		return "Not done"
	}
	
	/**
	 Gets line from file pointer and strip HTML tags (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func fgetss(fh: String) -> String {
		print("Not done")
		
		return "Not done"
	}
	
	/**
	 Checks whether a file or directory exists (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func file_exists(fh: String) -> Bool {
		print("Not done")
		
		return false
	}
	
	/**
	 Reads entire file into a string (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func file_get_contents(fh: String) -> String {
		print("Not done")
		
		return "Not done"
	}
	
	/**
	 Write a string to a file (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func file_put_contents(fh: String) -> Bool {
		print("Not done")
		
		return false
	}
	
	/**
	 Reads entire file into an array (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func file(fh: String) -> String {
		print("Not done")
		
		return "Not done"
	}
	
	/**
	 Gets last access time of file (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func fileatime(fh: String) -> String {
		print("Not done")
		
		return "Not done"
	}
	
	/**
	 Gets inode change time of file (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func filectime(fh: String) -> String {
		print("Not done")
		
		return "Not done"
	}
	
	/**
	 Gets file group (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func filegroup(fh: String) -> String {
		print("Not done")
		
		return "Not done"
	}
	
	/**
	 Gets file inode (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func fileinode(fh: String) -> String {
		print("Not done")
		
		return "Not done"
	}
	
	/**
	 Gets file modification time (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func filemtime(fh: String) -> String {
		print("Not done")
		
		return "Not done"
	}
	
	/**
	 Gets file owner (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func fileowner(fh: String) -> String {
		print("Not done")
		
		return "Not done"
	}
	
	/**
	 Gets file permissions (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func fileperms(fh: String) -> String {
		print("Not done")
		
		return "Not done"
	}
	
	/**
	 Gets file size (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func filesize(fh: String) -> String {
		print("Not done")
		
		return "Not done"
	}
	
	/**
	 Gets file type (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func filetype(fh: String) -> String {
		print("Not done")
		
		return "Not done"
	}
	
	/**
	 Portable advisory file locking (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func flock(fh: String) -> Bool {
		print("Not done")
		
		return false
	}
	
	/**
	 Match filename against a pattern (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func fnmatch(fh: String) -> String {
		print("Not done")
		
		return "Not done"
	}
	
	/**
	 Opens file or URL (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func fopen(fh: String) -> String {
		print("Not done")
		
		return fh
	}
	
	/**
	 Output all remaining data on a file pointer (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func fpassthru(fh: String) -> Bool {
		print("Not done")
		
		return false
	}
	
	/**
	 Format line as CSV and write to file pointer (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func fputcsv(fh: String) -> Bool {
		print("Not done")
		
		return false
	}
	
	/**
	 Alias of fwrite (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func fputs(fh: String) -> Bool {
		print("Not done")
		
		return false
	}
	
	/**
	 Binary-safe file read (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func fread(fh: String) -> String {
		print("Not done")
		
		return "Not done"
	}
	
	/**
	 Parses input from a file according to a format (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func fscanf(fh: String) -> String {
		print("Not done")
		
		return "Not done"
	}
	
	/**
	 Seeks on a file pointer (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func fseek(fh: String) -> String {
		print("Not done")
		
		return "Not done"
	}
	
	/**
	 Gets information about a file using an open file pointer (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func fstat(fh: String) -> String {
		print("Not done")
		
		return "Not done"
	}
	
	/**
	 Returns the current position of the file read/write pointer (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func ftell(fh: String) -> String {
		print("Not done")
		
		return "Not done"
	}
	
	/**
	 Truncates a file to a given length (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func ftruncate(fh: String) -> Bool {
		print("Not done")
		
		return false
	}
	
	/**
	 Binary-safe file write (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func fwrite(fh: String) -> Bool {
		print("Not done")
		
		return false
	}
	
	/**
	 Find pathnames matching a pattern (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func glob(fh: String) -> String {
		print("Not done")
		
		return "Not done"
	}
	
	/**
	 Tells whether the filename is a directory (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func is_dir(fh: String) -> Bool {
		print("Not done")
		
		return false
	}
	
	/**
	 Tells whether the filename is executable (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func is_executable(fh: String) -> Bool {
		print("Not done")
		
		return false
	}
	
	/**
	 Tells whether the filename is a regular file (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func is_file(fh: String) -> Bool {
		print("Not done")
		
		return false
	}
	
	/**
	 Tells whether the filename is a symbolic link (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func is_link(fh: String) -> Bool {
		print("Not done")
		
		return false
	}
	
	/**
	 Tells whether a file exists and is readable (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func is_readable(fh: String) -> Bool {
		print("Not done")
		
		return false
	}
	
	/**
	 Tells whether the file was uploaded via HTTP POST (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func is_uploaded_file(fh: String) -> Bool {
		print("Not done")
		
		return false
	}
	
	/**
	 Tells whether the filename is writable (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func is_writeable(fh: String) -> Bool {
		print("Not done")
		
		return false
	}
	
	/**
	 Alias of is_writable (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func iswriteable(fh: String) -> Bool {
		print("Not done")
		
		return false
	}
	
	/**
	 Changes group ownership of symlink (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func lchgrp(fh: String) -> Bool {
		print("Not done")
		
		return false
	}
	
	/**
	 Changes user ownership of symlink (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func lchown(fh: String) -> Bool {
		print("Not done")
		
		return false
	}
	
	/**
	 Create a hard link (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func link(fh: String) -> Bool {
		print("Not done")
		
		return false
	}
	
	/**
	 Gets information about a link (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func linkinfo(fh: String) -> String {
		print("Not done")
		
		return "Not done"
	}
	
	/**
	 Gives information about a file or symbolic link (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func lstat(fh: String) -> String {
		print("Not done")
		
		return "Not done"
	}
	
	/**
	 Makes directory (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func mkdir(fh: String) -> Bool {
		print("Not done")
		
		return false
	}
	
	/**
	 **Unsupported** Moves an uploaded file to a new location

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func move_uploaded_file(fh: String) -> Bool {
		print("Not done")
		
		return false
	}
	
	/**
	 Parse a configuration file (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func parse_ini_file(fh: String) -> String {
		print("Not done")
		
		return "Not done"
	}
	
	/**
	 Parse a configuration string (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func parse_ini_string(fh: String) -> String {
		print("Not done")
		
		return "Not done"
	}
	
	/**
	 Returns information about a file path (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func pathinfo(fh: String) -> String {
		print("Not done")
		
		return "Not done"
	}
	
	/**
	 Closes process file pointer (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func pclose(fh: String) -> String {
		print("Not done")
		
		return "Not done"
	}
	
	/**
	 Opens process file pointer (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func popen(fh: String) -> String {
		print("Not done")
		
		return "Not done"
	}
	
	/**
	 Outputs a file (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func readfile(fh: String) -> String {
		print("Not done")
		
		return "Not done"
	}
	
	/**
	 Returns the target of a symbolic link (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func readlink(fh: String) -> Bool {
		print("Not done")
		
		return false
	}
	
	/**
	 Get realpath cache entries (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func realpath_cache_get(fh: String) -> Bool {
		print("Not done")
		
		return false
	}
	
	/**
	 Get realpath cache size (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func realpath_cache_size(fh: String) -> Bool {
		print("Not done")
		
		return false
	}
	
	/**
	 Returns canonicalized absolute pathname (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func realpath(fh: String) -> String {
		print("Not done")
		
		return "Not done"
	}
	
	/**
	 Renames a file or directory (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func rename(fh: String) -> Bool {
		print("Not done")
		
		return false
	}
	
	/**
	 Rewind the position of a file pointer (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func rewind(fh: String) -> Bool {
		print("Not done")
		
		return false
	}
	
	/**
	 Removes directory (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func rmdir(fh: String) -> Bool {
		print("Not done")
		
		return false
	}
	
	/**
	 **Unsupported** Alias of stream_set_write_buffer

	 - Parameter fh: Any...

	 - Returns: false
	 */
	public func set_file_buffer(fh: Any...) -> Bool {
		return false
	}
	
	/**
	 Gives information about a file (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func stat(fh: String) -> String {
		print("Not done")
		
		return "Not done"
	}
	
	/**
	 **Unsupported** Creates a symbolic link

	 - Parameter fh: String = ""
	 - Parameter f2: String = ""

	 - Returns: false
	 */
	public func symlink(fh: String? = "", _ f2: String? = "") -> Bool {
		return false
	}
	
	/**
	 Create file with unique file name (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func tempnam(fh: String) -> Bool {
		print("Not done")
		
		return false
	}
	
	/**
	 Creates a temporary file (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func tmpfile(fh: String) -> Bool {
		print("Not done")
		
		return false
	}
	
	/**
	 Sets access and modification time of file (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func touch(fh: String) -> Bool {
		print("Not done")
		
		return false
	}
	
	/**
	 Changes the current umask (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func umask(fh: String) -> String {
		print("Not done")
		
		return "Not done"
	}
	
	/**
	 Deletes a file (**Not done**)

	 - Parameter fh: String

	 - Returns: Any
	 */
	public func unlink(fh: String) -> Bool {
		print("Not done")
		
		return false
	}
	
}
