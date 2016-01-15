//
//  PHPFrameworkStringFunctions.swift
//  PHPFramework
//
//  Created by Wesley de Groot on 15-01-16.
//  Copyright © 2016 WDGWV. All rights reserved.
//

import Foundation

/**
 PHPFramework
 
 A Swift framework inspired by some PHP Functions.
 */
extension PHPFramework {
    /**
     Return ASCII value of character
     
     - Parameter s: the character
     
     - Returns: the ascii number of the character
     */
    public func ord(s: String) -> Int {
        return Int(String(s.unicodeScalars.first!.value))!
    }
    
    /**
     Return a specific character
     
     - Parameter s: the chr's number
     
     - Returns: the character as given in ascii
     */
    public func chr(s: Int) -> String {
        guard let newS:Int = Int(s) else {
            return "\(s)"
        }
        return String(UnicodeScalar(newS))
    }
    
    /**
     Set/get the various assert flags (Not done)
     
     - Parameter String: The input string
     
     - Returns: The input String
     */
    public func assert_options(str: String) -> String {
        print("Sorry this function is not supported yet!")
        return str
    }
    
    /**
     Quote string with slashes in a C style (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func addcslashes(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Quote string with slashes (not done)
     
     Returns a string with backslashes before characters that need to be escaped. These characters are single quote ('), double quote ("), backslash (\) and NUL (the NULL byte).
     
     - Parameter str: the string
     
     - Returns: the string with backslashes
     */
    public func addslashes(str: String!) -> String {
        return str.stringByReplacingOccurrencesOfString("\\", withString: "\\\\")
            .stringByReplacingOccurrencesOfString("'", withString: "\\'")
            .stringByReplacingOccurrencesOfString("\"", withString: "\\\"")
            .stringByReplacingOccurrencesOfString("\0", withString: "\\\0")
    }

    /**
     Convert binary data into hexadecimal representation (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func bin2hex(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Alias of rtrim (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func chop(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Return a specific character (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func chr(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Split a string into smaller chunks (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func chunk_split(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Convert from one Cyrillic character set to another (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func convert_cyr_string(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Decode a uuencoded string (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func convert_uudecode(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Uuencode a string (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func convert_uuencode(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Return information about characters used in a string (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func count_chars(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Calculates the crc32 polynomial of a string (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func crc32(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     One-way string hashing (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func crypt(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Output one or more strings (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func echo(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Split a string by string (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func explode(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Write a formatted string to a stream (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func fprintf(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Returns the translation table used by htmlspecialchars and htmlentities (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func get_html_translation_table(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Convert logical Hebrew text to visual text (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func hebrev(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Convert logical Hebrew text to visual text with newline conversion (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func hebrevc(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Decodes a hexadecimally encoded binary string (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func hex2bin(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Convert all HTML entities to their applicable characters (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func html_entity_decode(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Convert all applicable characters to HTML entities (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func htmlentities(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Convert special HTML entities back to characters (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func htmlspecialchars_decode(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Convert special characters to HTML entities (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func htmlspecialchars(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Join array elements with a string (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func implode(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Alias of implode (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func join(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Make a string's first character lowercase (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func lcfirst(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Calculate Levenshtein distance between two strings (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func levenshtein(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Get numeric formatting information (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func localeconv(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Strip whitespace (or other characters) from the beginning of a string (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func ltrim(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Calculates the md5 hash of a given file (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func md5_file(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Calculate the md5 hash of a string (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func md5(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Calculate the metaphone key of a string (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func metaphone(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Formats a number as a currency string (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func money_format(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Query language and locale information (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func nl_langinfo(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Inserts HTML line breaks before all newlines in a string (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func nl2br(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Format a number with grouped thousands (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func number_format(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Return ASCII value of character (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func ord(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Parses the string into variables (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func parse_str(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Output a string (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func print(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Output a formatted string (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func printf(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Convert a quoted-printable string to an 8 bit string (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func quoted_printable_decode(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Convert a 8 bit string to a quoted-printable string (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func quoted_printable_encode(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Quote meta characters (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func quotemeta(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Strip whitespace (or other characters) from the end of a string (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func rtrim(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Set locale information (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func setlocale(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Calculate the sha1 hash of a file (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func sha1_file(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Calculate the sha1 hash of a string (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func sha1(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Calculate the similarity between two strings (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func similar_text(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Calculate the soundex key of a string (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func soundex(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Return a formatted string (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func sprintf(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Parses input from a string according to a format (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func sscanf(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Parse a CSV string into an array (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func str_getcsv(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Case-insensitive version of str_replace. (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func str_ireplace(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Pad a string to a certain length with another string (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func str_pad(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Repeat a string (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func str_repeat(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Replace all occurrences of the search string with the replacement string (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func str_replace(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Perform the rot13 transform on a string (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func str_rot13(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Randomly shuffles a string (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func str_shuffle(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Convert a string to an array (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func str_split(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Return information about words used in a string (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func str_word_count(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Binary safe case-insensitive string comparison (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func strcasecmp(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Alias of strstr (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func strchr(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Binary safe string comparison (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func strcmp(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Locale based string comparison (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func strcoll(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Find length of initial segment not matching mask (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func strcspn(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Strip HTML and PHP tags from a string (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func strip_tags(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Un-quote string quoted with addcslashes (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func stripcslashes(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Find the position of the first occurrence of a case-insensitive substring in a string (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func stripos(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Un-quotes a quoted string (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func stripslashes(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Case-insensitive strstr (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func stristr(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Get string length (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func strlen(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Case insensitive string comparisons using a "natural order" algorithm (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func strnatcasecmp(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     String comparisons using a "natural order" algorithm (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func strnatcmp(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Binary safe case-insensitive string comparison of the first n characters (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func strncasecmp(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Binary safe string comparison of the first n characters (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func strncmp(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Search a string for any of a set of characters (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func strpbrk(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Find the position of the first occurrence of a substring in a string (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func strpos(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Find the last occurrence of a character in a string (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func strrchr(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Reverse a string (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func strrev(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Find the position of the last occurrence of a case-insensitive substring in a string (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func strripos(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Find the position of the last occurrence of a substring in a string (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func strrpos(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Finds the length of the initial segment of a string consisting entirely of characters contained within a given mask. (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func strspn(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Find the first occurrence of a string (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func strstr(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Tokenize string (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func strtok(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Make a string lowercase (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func strtolower(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Make a string uppercase (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func strtoupper(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Translate characters or replace substrings (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func strtr(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Binary safe comparison of two strings from an offset, up to length characters (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func substr_compare(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Count the number of substring occurrences (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func substr_count(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Replace text within a portion of a string (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func substr_replace(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Return part of a string (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func substr(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Strip whitespace (or other characters) from the beginning and end of a string (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func trim(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Make a string's first character uppercase (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func ucfirst(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Uppercase the first character of each word in a string (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func ucwords(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Write a formatted string to a stream (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func vfprintf(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Output a formatted string (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func vprintf(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Return a formatted string (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func vsprintf(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }
    
    /**
     Wraps a string to a given number of characters (not done)
     
     - Parameter str: The String
     
     - Returns: The String
     */
    public func wordwrap(str: String) -> String {
        print("Sorry this function is not done")
        
        return str
    }

}