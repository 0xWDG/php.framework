//  _____    _    _   _____    ______                                           _
// |  __ \  | |  | | |  __ \  |  ____|                                         | |
// | |__) | | |__| | | |__) | | |__ _ __ __ _ _ __ ___   _____      _____  _ __| | __
// |  ___/  |  __  | |  ___/  |  __| '__/ _` | '_ ` _ \ / _ \ \ /\ / / _ \| '__| |/ /
// | |      | |  | | | |      | |  | | | (_| | | | | | |  __/\ V  V / (_) | |  |   <
// |_|      |_|  |_| |_|      |_|  |_|  \__,_|_| |_| |_|\___| \_/\_/ \___/|_|  |_|\_\
//
// File:    PHPFrameworkPHPConstants.swift
// Created: 17-JAN-2016
// Creator: Wesley de Groot | @0xWDG
// Issue:   #3 (Predefined Constants)
// Prefix:  N/A

import Foundation

/// Global usage for PHP's static constants
public let E_ERROR: Int = 1

/// Global usage for PHP's static constants
public let E_RECOVERABLE_ERROR: Int = 4096

/// Global usage for PHP's static constants
public let E_WARNING: Int = 2

/// Global usage for PHP's static constants
public let E_PARSE: Int = 4

/// Global usage for PHP's static constants
public let E_NOTICE: Int = 8

/// Global usage for PHP's static constants
public let E_STRICT: Int = 2048

/// Global usage for PHP's static constants
public let E_DEPRECATED: Int = 8192

/// Global usage for PHP's static constants
public let E_CORE_ERROR: Int = 16

/// Global usage for PHP's static constants
public let E_CORE_WARNING: Int = 32

/// Global usage for PHP's static constants
public let E_COMPILE_ERROR: Int = 64

/// Global usage for PHP's static constants
public let E_COMPILE_WARNING: Int = 128

/// Global usage for PHP's static constants
public let E_USER_ERROR: Int = 256

/// Global usage for PHP's static constants
public let E_USER_WARNING: Int = 512

/// Global usage for PHP's static constants
public let E_USER_NOTICE: Int = 1024

/// Global usage for PHP's static constants
public let E_USER_DEPRECATED: Int = 16384

/// Global usage for PHP's static constants
public let E_ALL: Int = 32767

/// Global usage for PHP's static constants
public let DEBUG_BACKTRACE_PROVIDE_OBJECT: Int = 1

/// Global usage for PHP's static constants
public let DEBUG_BACKTRACE_IGNORE_ARGS: Int = 2

/// Global usage for PHP's static constants
public let ZEND_THREAD_SAFE: String = "-"

/// Global usage for PHP's static constants
public let ZEND_DEBUG_BUILD: String = "-"

/// Global usage for PHP's static constants
public let NULL: String = "\0"

/// Global usage for PHP's static constants
public let PHP_VERSION: String = "7.0.0"

/// Global usage for PHP's static constants
public let PHP_MAJOR_VERSION: Int = 7

/// Global usage for PHP's static constants
public let PHP_MINOR_VERSION: Int = 0

/// Global usage for PHP's static constants
public let PHP_RELEASE_VERSION: Int = 0

/// Global usage for PHP's static constants
public let PHP_EXTRA_VERSION: String = ""

/// Global usage for PHP's static constants
public let PHP_VERSION_ID: Int = 70000

/// Global usage for PHP's static constants
public let PHP_ZTS: Int = 0

/// Global usage for PHP's static constants
public let PHP_DEBUG: Int = 0

/// Global usage for PHP's static constants
public let PHP_OS: String = "Darwin" // Always

/// Global usage for PHP's static constants
public let PHP_SAPI: String = "cli"

/// Global usage for PHP's static constants
public let DEFAULT_INCLUDE_PATH: String = "."

/// Global usage for PHP's static constants
public let PEAR_INSTALL_DIR: String = "."

/// Global usage for PHP's static constants
public let PEAR_EXTENSION_DIR: String = "."

/// Global usage for PHP's static constants
public let PHP_EXTENSION_DIR: String = "."

/// Global usage for PHP's static constants
public let PHP_PREFIX: String = "."

/// Global usage for PHP's static constants
public let PHP_BINDIR: String = "."

/// Global usage for PHP's static constants
public let PHP_MANDIR: String = "."

/// Global usage for PHP's static constants
public let PHP_LIBDIR: String = "."

/// Global usage for PHP's static constants
public let PHP_DATADIR: String = "."

/// Global usage for PHP's static constants
public let PHP_SYSCONFDIR: String = "."

/// Global usage for PHP's static constants
public let PHP_LOCALSTATEDIR: String = "."

/// Global usage for PHP's static constants
public let PHP_CONFIG_FILE_PATH: String = "."

/// Global usage for PHP's static constants
public let PHP_CONFIG_FILE_SCAN_DIR: String = "."

/// Global usage for PHP's static constants
public let PHP_SHLIB_SUFFIX: String = "so"

/// Global usage for PHP's static constants
public let PHP_EOL: String = "\r\n"

/// Global usage for PHP's static constants
public let PHP_MAXPATHLEN: Int = 1024

/// Global usage for PHP's static constants
public let PHP_INT_MAX: Int64 = 9223372036854775807

/// Global usage for PHP's static constants
public let PHP_INT_MIN: Int64 = -9223372036854775808

/// Global usage for PHP's static constants
public let PHP_INT_SIZE: Int = 8

/// Global usage for PHP's static constants
public let PHP_BINARY: String = "."

/// Global usage for PHP's static constants
public let PHP_OUTPUT_HANDLER_START: Int = 1

/// Global usage for PHP's static constants
public let PHP_OUTPUT_HANDLER_WRITE: Int = 0

/// Global usage for PHP's static constants
public let PHP_OUTPUT_HANDLER_FLUSH: Int = 4

/// Global usage for PHP's static constants
public let PHP_OUTPUT_HANDLER_CLEAN: Int = 2

/// Global usage for PHP's static constants
public let PHP_OUTPUT_HANDLER_FINAL: Int = 8

/// Global usage for PHP's static constants
public let PHP_OUTPUT_HANDLER_CONT: Int = 0

/// Global usage for PHP's static constants
public let PHP_OUTPUT_HANDLER_END: Int = 8

/// Global usage for PHP's static constants
public let PHP_OUTPUT_HANDLER_CLEANABLE: Int = 16

/// Global usage for PHP's static constants
public let PHP_OUTPUT_HANDLER_FLUSHABLE: Int = 32

/// Global usage for PHP's static constants
public let PHP_OUTPUT_HANDLER_REMOVABLE: Int = 64

/// Global usage for PHP's static constants
public let PHP_OUTPUT_HANDLER_STDFLAGS: Int = 112

/// Global usage for PHP's static constants
public let PHP_OUTPUT_HANDLER_STARTED: Int = 4096

/// Global usage for PHP's static constants
public let PHP_OUTPUT_HANDLER_DISABLED: Int = 8192

/// Global usage for PHP's static constants
public let UPLOAD_ERR_OK: Int = 0

/// Global usage for PHP's static constants
public let UPLOAD_ERR_INI_SIZE: Int = 1

/// Global usage for PHP's static constants
public let UPLOAD_ERR_FORM_SIZE: Int = 2

/// Global usage for PHP's static constants
public let UPLOAD_ERR_PARTIAL: Int = 3

/// Global usage for PHP's static constants
public let UPLOAD_ERR_NO_FILE: Int = 4

/// Global usage for PHP's static constants
public let UPLOAD_ERR_NO_TMP_DIR: Int = 6

/// Global usage for PHP's static constants
public let UPLOAD_ERR_CANT_WRITE: Int = 7

/// Global usage for PHP's static constants
public let UPLOAD_ERR_EXTENSION: Int = 8

/// Global usage for PHP's static constants
public let DATE_ATOM: String = "Y-m-d\tH:i:sP"

/// Global usage for PHP's static constants
public let DATE_COOKIE: String = "l, d-M-Y H:i:s T"

/// Global usage for PHP's static constants
public let DATE_ISO8601: String = "Y-m-d\tH:i:sO"

/// Global usage for PHP's static constants
public let DATE_RFC822: String = "D, d M y H:i:s O"

/// Global usage for PHP's static constants
public let DATE_RFC850: String = "l, d-M-y H:i:s T"

/// Global usage for PHP's static constants
public let DATE_RFC1036: String = "D, d M y H:i:s O"

/// Global usage for PHP's static constants
public let DATE_RFC1123: String = "D, d M Y H:i:s O"

/// Global usage for PHP's static constants
public let DATE_RFC2822: String = "D, d M Y H:i:s O"

/// Global usage for PHP's static constants
public let DATE_RFC3339: String = "Y-m-d\tH:i:sP"

/// Global usage for PHP's static constants
public let DATE_RFC3339_EXTENDED: String = "Y-m-d\tH:i:s.vP"

/// Global usage for PHP's static constants
public let DATE_RSS: String = "D, d M Y H:i:s O"

/// Global usage for PHP's static constants
public let DATE_W3C: String = "Y-m-d\tH:i:sP"

/// Global usage for PHP's static constants
public let SUNFUNCS_RET_TIMESTAMP: Int = 0

/// Global usage for PHP's static constants
public let SUNFUNCS_RET_STRING: Int = 1

/// Global usage for PHP's static constants
public let SUNFUNCS_RET_DOUBLE: Int = 2

/// Global usage for PHP's static constants
public let LIBXML_VERSION: Int = 20903

/// Global usage for PHP's static constants
public let LIBXML_DOTTED_VERSION: String = "2.9.3"

/// Global usage for PHP's static constants
public let LIBXML_LOADED_VERSION: Int = 20903

/// Global usage for PHP's static constants
public let LIBXML_NOENT: Int = 2

/// Global usage for PHP's static constants
public let LIBXML_DTDLOAD: Int = 4

/// Global usage for PHP's static constants
public let LIBXML_DTDATTR: Int = 8

/// Global usage for PHP's static constants
public let LIBXML_DTDVALID: Int = 16

/// Global usage for PHP's static constants
public let LIBXML_NOERROR: Int = 32

/// Global usage for PHP's static constants
public let LIBXML_NOWARNING: Int = 64

/// Global usage for PHP's static constants
public let LIBXML_NOBLANKS: Int = 256

/// Global usage for PHP's static constants
public let LIBXML_XINCLUDE: Int = 1024

/// Global usage for PHP's static constants
public let LIBXML_NSCLEAN: Int = 8192

/// Global usage for PHP's static constants
public let LIBXML_NOCDATA: Int = 16384

/// Global usage for PHP's static constants
public let LIBXML_NONET: Int = 2048

/// Global usage for PHP's static constants
public let LIBXML_PEDANTIC: Int = 128

/// Global usage for PHP's static constants
public let LIBXML_COMPACT: Int = 65536

/// Global usage for PHP's static constants
public let LIBXML_NOXMLDECL: Int = 2

/// Global usage for PHP's static constants
public let LIBXML_PARSEHUGE: Int = 524288

/// Global usage for PHP's static constants
public let LIBXML_BIGLINES: Int = 4194304

/// Global usage for PHP's static constants
public let LIBXML_NOEMPTYTAG: Int = 4

/// Global usage for PHP's static constants
public let LIBXML_SCHEMA_CREATE: Int = 1

/// Global usage for PHP's static constants
public let LIBXML_HTML_NOIMPLIED: Int = 8192

/// Global usage for PHP's static constants
public let LIBXML_HTML_NODEFDTD: Int = 4

/// Global usage for PHP's static constants
public let LIBXML_ERR_NONE: Int = 0

/// Global usage for PHP's static constants
public let LIBXML_ERR_WARNING: Int = 1

/// Global usage for PHP's static constants
public let LIBXML_ERR_ERROR: Int = 2

/// Global usage for PHP's static constants
public let LIBXML_ERR_FATAL: Int = 3

/// Global usage for PHP's static constants
public let OPENSSL_VERSION_TEXT: String = "OpenSSL 1.0.2d 9 Jul 2015"

/// Global usage for PHP's static constants
public let OPENSSL_VERSION_NUMBER: Int = 268443727

/// Global usage for PHP's static constants
public let X509_PURPOSE_SSL_CLIENT: Int = 1

/// Global usage for PHP's static constants
public let X509_PURPOSE_SSL_SERVER: Int = 2

/// Global usage for PHP's static constants
public let X509_PURPOSE_NS_SSL_SERVER: Int = 3

/// Global usage for PHP's static constants
public let X509_PURPOSE_SMIME_SIGN: Int = 4

/// Global usage for PHP's static constants
public let X509_PURPOSE_SMIME_ENCRYPT: Int = 5

/// Global usage for PHP's static constants
public let X509_PURPOSE_CRL_SIGN: Int = 6

/// Global usage for PHP's static constants
public let X509_PURPOSE_ANY: Int = 7

/// Global usage for PHP's static constants
public let OPENSSL_ALGO_SHA1: Int = 1

/// Global usage for PHP's static constants
public let OPENSSL_ALGO_MD5: Int = 2

/// Global usage for PHP's static constants
public let OPENSSL_ALGO_MD4: Int = 3

/// Global usage for PHP's static constants
public let OPENSSL_ALGO_DSS1: Int = 5

/// Global usage for PHP's static constants
public let OPENSSL_ALGO_SHA224: Int = 6

/// Global usage for PHP's static constants
public let OPENSSL_ALGO_SHA256: Int = 7

/// Global usage for PHP's static constants
public let OPENSSL_ALGO_SHA384: Int = 8

/// Global usage for PHP's static constants
public let OPENSSL_ALGO_SHA512: Int = 9

/// Global usage for PHP's static constants
public let OPENSSL_ALGO_RMD160: Int = 10

/// Global usage for PHP's static constants
public let PKCS7_DETACHED: Int = 64

/// Global usage for PHP's static constants
public let PKCS7_TEXT: Int = 1

/// Global usage for PHP's static constants
public let PKCS7_NOINTERN: Int = 16

/// Global usage for PHP's static constants
public let PKCS7_NOVERIFY: Int = 32

/// Global usage for PHP's static constants
public let PKCS7_NOCHAIN: Int = 8

/// Global usage for PHP's static constants
public let PKCS7_NOCERTS: Int = 2

/// Global usage for PHP's static constants
public let PKCS7_NOATTR: Int = 256

/// Global usage for PHP's static constants
public let PKCS7_BINARY: Int = 128

/// Global usage for PHP's static constants
public let PKCS7_NOSIGS: Int = 4

/// Global usage for PHP's static constants
public let OPENSSL_PKCS1_PADDING: Int = 1

/// Global usage for PHP's static constants
public let OPENSSL_SSLV23_PADDING: Int = 2

/// Global usage for PHP's static constants
public let OPENSSL_NO_PADDING: Int = 3

/// Global usage for PHP's static constants
public let OPENSSL_PKCS1_OAEP_PADDING: Int = 4

/// Global usage for PHP's static constants
public let OPENSSL_DEFAULT_STREAM_CIPHERS: String = "ECDHE-RSA-AES128-GCM-SHA256:ECDHE-ECDSA-AES128-GCM-SHA256:ECDHE-RSA-AES256-GCM-SHA384:ECDHE-ECDSA-AES256-GCM-SHA384:DHE-RSA-AES128-GCM-SHA256:DHE-DSS-AES128-GCM-SHA256:kEDH+AESGCM:ECDHE-RSA-AES128-SHA256:ECDHE-ECDSA-AES128-SHA256:ECDHE-RSA-AES128-SHA:ECDHE-ECDSA-AES128-SHA:ECDHE-RSA-AES256-SHA384:ECDHE-ECDSA-AES256-SHA384:ECDHE-RSA-AES256-SHA:ECDHE-ECDSA-AES256-SHA:DHE-RSA-AES128-SHA256:DHE-RSA-AES128-SHA:DHE-DSS-AES128-SHA256:DHE-RSA-AES256-SHA256:DHE-DSS-AES256-SHA:DHE-RSA-AES256-SHA:AES128-GCM-SHA256:AES256-GCM-SHA384:AES128:AES256:HIGH:!SSLv2:!aNULL:!eNULL:!EXPORT:!DES:!MD5:!RC4:!ADH"

/// Global usage for PHP's static constants
public let OPENSSL_CIPHER_RC2_40: Int = 0

/// Global usage for PHP's static constants
public let OPENSSL_CIPHER_RC2_128: Int = 1

/// Global usage for PHP's static constants
public let OPENSSL_CIPHER_RC2_64: Int = 2

/// Global usage for PHP's static constants
public let OPENSSL_CIPHER_DES: Int = 3

/// Global usage for PHP's static constants
public let OPENSSL_CIPHER_3DES: Int = 4

/// Global usage for PHP's static constants
public let OPENSSL_CIPHER_AES_128_CBC: Int = 5

/// Global usage for PHP's static constants
public let OPENSSL_CIPHER_AES_192_CBC: Int = 6

/// Global usage for PHP's static constants
public let OPENSSL_CIPHER_AES_256_CBC: Int = 7

/// Global usage for PHP's static constants
public let OPENSSL_KEYTYPE_RSA: Int = 0

/// Global usage for PHP's static constants
public let OPENSSL_KEYTYPE_DSA: Int = 1

/// Global usage for PHP's static constants
public let OPENSSL_KEYTYPE_DH: Int = 2

/// Global usage for PHP's static constants
public let OPENSSL_KEYTYPE_EC: Int = 3

/// Global usage for PHP's static constants
public let OPENSSL_RAW_DATA: Int = 1

/// Global usage for PHP's static constants
public let OPENSSL_ZERO_PADDING: Int = 2

/// Global usage for PHP's static constants
public let OPENSSL_TLSEXT_SERVER_NAME: Int = 1

/// Global usage for PHP's static constants
public let PREG_PATTERN_ORDER: Int = 1

/// Global usage for PHP's static constants
public let PREG_SET_ORDER: Int = 2

/// Global usage for PHP's static constants
public let PREG_OFFSET_CAPTURE: Int = 256

/// Global usage for PHP's static constants
public let PREG_SPLIT_NO_EMPTY: Int = 1

/// Global usage for PHP's static constants
public let PREG_SPLIT_DELIM_CAPTURE: Int = 2

/// Global usage for PHP's static constants
public let PREG_SPLIT_OFFSET_CAPTURE: Int = 4

/// Global usage for PHP's static constants
public let PREG_GREP_INVERT: Int = 1

/// Global usage for PHP's static constants
public let PREG_NO_ERROR: Int = 0

/// Global usage for PHP's static constants
public let PREG_INTERNAL_ERROR: Int = 1

/// Global usage for PHP's static constants
public let PREG_BACKTRACK_LIMIT_ERROR: Int = 2

/// Global usage for PHP's static constants
public let PREG_RECURSION_LIMIT_ERROR: Int = 3

/// Global usage for PHP's static constants
public let PREG_BAD_UTF8_ERROR: Int = 4

/// Global usage for PHP's static constants
public let PREG_BAD_UTF8_OFFSET_ERROR: Int = 5

/// Global usage for PHP's static constants
public let PREG_JIT_STACKLIMIT_ERROR: Int = 6

/// Global usage for PHP's static constants
public let PCRE_VERSION: String = "8.37 2015-04-28"

/// Global usage for PHP's static constants
public let SQLITE3_ASSOC: Int = 1

/// Global usage for PHP's static constants
public let SQLITE3_NUM: Int = 2

/// Global usage for PHP's static constants
public let SQLITE3_BOTH: Int = 3

/// Global usage for PHP's static constants
public let SQLITE3_INTEGER: Int = 1

/// Global usage for PHP's static constants
public let SQLITE3_FLOAT: Int = 2

/// Global usage for PHP's static constants
public let SQLITE3_TEXT: Int = 3

/// Global usage for PHP's static constants
public let SQLITE3_BLOB: Int = 4

/// Global usage for PHP's static constants
public let SQLITE3_NULL: Int = 5

/// Global usage for PHP's static constants
public let SQLITE3_OPEN_READONLY: Int = 1

/// Global usage for PHP's static constants
public let SQLITE3_OPEN_READWRITE: Int = 2

/// Global usage for PHP's static constants
public let SQLITE3_OPEN_CREATE: Int = 4

/// Global usage for PHP's static constants
public let FORCE_GZIP: Int = 31

/// Global usage for PHP's static constants
public let FORCE_DEFLATE: Int = 15

/// Global usage for PHP's static constants
public let ZLIB_ENCODING_RAW: Int = -15

/// Global usage for PHP's static constants
public let ZLIB_ENCODING_GZIP: Int = 31

/// Global usage for PHP's static constants
public let ZLIB_ENCODING_DEFLATE: Int = 15

/// Global usage for PHP's static constants
public let ZLIB_NO_FLUSH: Int = 0

/// Global usage for PHP's static constants
public let ZLIB_PARTIAL_FLUSH: Int = 1

/// Global usage for PHP's static constants
public let ZLIB_SYNC_FLUSH: Int = 2

/// Global usage for PHP's static constants
public let ZLIB_FULL_FLUSH: Int = 3

/// Global usage for PHP's static constants
public let ZLIB_BLOCK: Int = 5

/// Global usage for PHP's static constants
public let ZLIB_FINISH: Int = 4

/// Global usage for PHP's static constants
public let ZLIB_FILTERED: Int = 1

/// Global usage for PHP's static constants
public let ZLIB_HUFFMAN_ONLY: Int = 2

/// Global usage for PHP's static constants
public let ZLIB_RLE: Int = 3

/// Global usage for PHP's static constants
public let ZLIB_FIXED: Int = 4

/// Global usage for PHP's static constants
public let ZLIB_DEFAULT_STRATEGY: Int = 0

/// Global usage for PHP's static constants
public let ZLIB_VERSION: String = "1.2.5"

/// Global usage for PHP's static constants
public let ZLIB_VERNUM: Int = 4688

/// Global usage for PHP's static constants
public let CAL_GREGORIAN: Int = 0

/// Global usage for PHP's static constants
public let CAL_JULIAN: Int = 1

/// Global usage for PHP's static constants
public let CAL_JEWISH: Int = 2

/// Global usage for PHP's static constants
public let CAL_FRENCH: Int = 3

/// Global usage for PHP's static constants
public let CAL_NUM_CALS: Int = 4

/// Global usage for PHP's static constants
public let CAL_DOW_DAYNO: Int = 0

/// Global usage for PHP's static constants
public let CAL_DOW_SHORT: Int = 2

/// Global usage for PHP's static constants
public let CAL_DOW_LONG: Int = 1

/// Global usage for PHP's static constants
public let CAL_MONTH_GREGORIAN_SHORT: Int = 0

/// Global usage for PHP's static constants
public let CAL_MONTH_GREGORIAN_LONG: Int = 1

/// Global usage for PHP's static constants
public let CAL_MONTH_JULIAN_SHORT: Int = 2

/// Global usage for PHP's static constants
public let CAL_MONTH_JULIAN_LONG: Int = 3

/// Global usage for PHP's static constants
public let CAL_MONTH_JEWISH: Int = 4

/// Global usage for PHP's static constants
public let CAL_MONTH_FRENCH: Int = 5

/// Global usage for PHP's static constants
public let CAL_EASTER_DEFAULT: Int = 0

/// Global usage for PHP's static constants
public let CAL_EASTER_ROMAN: Int = 1

/// Global usage for PHP's static constants
public let CAL_EASTER_ALWAYS_GREGORIAN: Int = 2

/// Global usage for PHP's static constants
public let CAL_EASTER_ALWAYS_JULIAN: Int = 3

/// Global usage for PHP's static constants
public let CAL_JEWISH_ADD_ALAFIM_GERESH: Int = 2

/// Global usage for PHP's static constants
public let CAL_JEWISH_ADD_ALAFIM: Int = 4

/// Global usage for PHP's static constants
public let CAL_JEWISH_ADD_GERESHAYIM: Int = 8

/// Global usage for PHP's static constants
public let CURLOPT_AUTOREFERER: Int = 58

/// Global usage for PHP's static constants
public let CURLOPT_BINARYTRANSFER: Int = 19914

/// Global usage for PHP's static constants
public let CURLOPT_BUFFERSIZE: Int = 98

/// Global usage for PHP's static constants
public let CURLOPT_CAINFO: Int = 10065

/// Global usage for PHP's static constants
public let CURLOPT_CAPATH: Int = 10097

/// Global usage for PHP's static constants
public let CURLOPT_CONNECTTIMEOUT: Int = 78

/// Global usage for PHP's static constants
public let CURLOPT_COOKIE: Int = 10022

/// Global usage for PHP's static constants
public let CURLOPT_COOKIEFILE: Int = 10031

/// Global usage for PHP's static constants
public let CURLOPT_COOKIEJAR: Int = 10082

/// Global usage for PHP's static constants
public let CURLOPT_COOKIESESSION: Int = 96

/// Global usage for PHP's static constants
public let CURLOPT_CRLF: Int = 27

/// Global usage for PHP's static constants
public let CURLOPT_CUSTOMREQUEST: Int = 10036

/// Global usage for PHP's static constants
public let CURLOPT_DNS_CACHE_TIMEOUT: Int = 92

/// Global usage for PHP's static constants
public let CURLOPT_DNS_USE_GLOBAL_CACHE: Int = 91

/// Global usage for PHP's static constants
public let CURLOPT_EGDSOCKET: Int = 10077

/// Global usage for PHP's static constants
public let CURLOPT_ENCODING: Int = 10102

/// Global usage for PHP's static constants
public let CURLOPT_FAILONERROR: Int = 45

/// Global usage for PHP's static constants
public let CURLOPT_FILE: Int = 10001

/// Global usage for PHP's static constants
public let CURLOPT_FILETIME: Int = 69

/// Global usage for PHP's static constants
public let CURLOPT_FOLLOWLOCATION: Int = 52

/// Global usage for PHP's static constants
public let CURLOPT_FORBID_REUSE: Int = 75

/// Global usage for PHP's static constants
public let CURLOPT_FRESH_CONNECT: Int = 74

/// Global usage for PHP's static constants
public let CURLOPT_FTPAPPEND: Int = 50

/// Global usage for PHP's static constants
public let CURLOPT_FTPLISTONLY: Int = 48

/// Global usage for PHP's static constants
public let CURLOPT_FTPPORT: Int = 10017

/// Global usage for PHP's static constants
public let CURLOPT_FTP_USE_EPRT: Int = 106

/// Global usage for PHP's static constants
public let CURLOPT_FTP_USE_EPSV: Int = 85

/// Global usage for PHP's static constants
public let CURLOPT_HEADER: Int = 42

/// Global usage for PHP's static constants
public let CURLOPT_HEADERFUNCTION: Int = 20079

/// Global usage for PHP's static constants
public let CURLOPT_HTTP200ALIASES: Int = 10104

/// Global usage for PHP's static constants
public let CURLOPT_HTTPGET: Int = 80

/// Global usage for PHP's static constants
public let CURLOPT_HTTPHEADER: Int = 10023

/// Global usage for PHP's static constants
public let CURLOPT_HTTPPROXYTUNNEL: Int = 61

/// Global usage for PHP's static constants
public let CURLOPT_HTTP_VERSION: Int = 84

/// Global usage for PHP's static constants
public let CURLOPT_INFILE: Int = 10009

/// Global usage for PHP's static constants
public let CURLOPT_INFILESIZE: Int = 14

/// Global usage for PHP's static constants
public let CURLOPT_INTERFACE: Int = 10062

/// Global usage for PHP's static constants
public let CURLOPT_KRB4LEVEL: Int = 10063

/// Global usage for PHP's static constants
public let CURLOPT_LOW_SPEED_LIMIT: Int = 19

/// Global usage for PHP's static constants
public let CURLOPT_LOW_SPEED_TIME: Int = 20

/// Global usage for PHP's static constants
public let CURLOPT_MAXCONNECTS: Int = 71

/// Global usage for PHP's static constants
public let CURLOPT_MAXREDIRS: Int = 68

/// Global usage for PHP's static constants
public let CURLOPT_NETRC: Int = 51

/// Global usage for PHP's static constants
public let CURLOPT_NOBODY: Int = 44

/// Global usage for PHP's static constants
public let CURLOPT_NOPROGRESS: Int = 43

/// Global usage for PHP's static constants
public let CURLOPT_NOSIGNAL: Int = 99

/// Global usage for PHP's static constants
public let CURLOPT_PORT: Int = 3

/// Global usage for PHP's static constants
public let CURLOPT_POST: Int = 47

/// Global usage for PHP's static constants
public let CURLOPT_POSTFIELDS: Int = 10015

/// Global usage for PHP's static constants
public let CURLOPT_POSTQUOTE: Int = 10039

/// Global usage for PHP's static constants
public let CURLOPT_PREQUOTE: Int = 10093

/// Global usage for PHP's static constants
public let CURLOPT_PRIVATE: Int = 10103

/// Global usage for PHP's static constants
public let CURLOPT_PROGRESSFUNCTION: Int = 20056

/// Global usage for PHP's static constants
public let CURLOPT_PROXY: Int = 10004

/// Global usage for PHP's static constants
public let CURLOPT_PROXYPORT: Int = 59

/// Global usage for PHP's static constants
public let CURLOPT_PROXYTYPE: Int = 101

/// Global usage for PHP's static constants
public let CURLOPT_PROXYUSERPWD: Int = 10006

/// Global usage for PHP's static constants
public let CURLOPT_PUT: Int = 54

/// Global usage for PHP's static constants
public let CURLOPT_QUOTE: Int = 10028

/// Global usage for PHP's static constants
public let CURLOPT_RANDOM_FILE: Int = 10076

/// Global usage for PHP's static constants
public let CURLOPT_RANGE: Int = 10007

/// Global usage for PHP's static constants
public let CURLOPT_READDATA: Int = 10009

/// Global usage for PHP's static constants
public let CURLOPT_READFUNCTION: Int = 20012

/// Global usage for PHP's static constants
public let CURLOPT_REFERER: Int = 10016

/// Global usage for PHP's static constants
public let CURLOPT_RESUME_FROM: Int = 21

/// Global usage for PHP's static constants
public let CURLOPT_RETURNTRANSFER: Int = 19913

/// Global usage for PHP's static constants
public let CURLOPT_SHARE: Int = 10100

/// Global usage for PHP's static constants
public let CURLOPT_SSLCERT: Int = 10025

/// Global usage for PHP's static constants
public let CURLOPT_SSLCERTPASSWD: Int = 10026

/// Global usage for PHP's static constants
public let CURLOPT_SSLCERTTYPE: Int = 10086

/// Global usage for PHP's static constants
public let CURLOPT_SSLENGINE: Int = 10089

/// Global usage for PHP's static constants
public let CURLOPT_SSLENGINE_DEFAULT: Int = 90

/// Global usage for PHP's static constants
public let CURLOPT_SSLKEY: Int = 10087

/// Global usage for PHP's static constants
public let CURLOPT_SSLKEYPASSWD: Int = 10026

/// Global usage for PHP's static constants
public let CURLOPT_SSLKEYTYPE: Int = 10088

/// Global usage for PHP's static constants
public let CURLOPT_SSLVERSION: Int = 32

/// Global usage for PHP's static constants
public let CURLOPT_SSL_CIPHER_LIST: Int = 10083

/// Global usage for PHP's static constants
public let CURLOPT_SSL_VERIFYHOST: Int = 81

/// Global usage for PHP's static constants
public let CURLOPT_SSL_VERIFYPEER: Int = 64

/// Global usage for PHP's static constants
public let CURLOPT_STDERR: Int = 10037

/// Global usage for PHP's static constants
public let CURLOPT_TELNETOPTIONS: Int = 10070

/// Global usage for PHP's static constants
public let CURLOPT_TIMECONDITION: Int = 33

/// Global usage for PHP's static constants
public let CURLOPT_TIMEOUT: Int = 13

/// Global usage for PHP's static constants
public let CURLOPT_TIMEVALUE: Int = 34

/// Global usage for PHP's static constants
public let CURLOPT_TRANSFERTEXT: Int = 53

/// Global usage for PHP's static constants
public let CURLOPT_UNRESTRICTED_AUTH: Int = 105

/// Global usage for PHP's static constants
public let CURLOPT_UPLOAD: Int = 46

/// Global usage for PHP's static constants
public let CURLOPT_URL: Int = 10002

/// Global usage for PHP's static constants
public let CURLOPT_USERAGENT: Int = 10018

/// Global usage for PHP's static constants
public let CURLOPT_USERPWD: Int = 10005

/// Global usage for PHP's static constants
public let CURLOPT_VERBOSE: Int = 41

/// Global usage for PHP's static constants
public let CURLOPT_WRITEFUNCTION: Int = 20011

/// Global usage for PHP's static constants
public let CURLOPT_WRITEHEADER: Int = 10029

/// Global usage for PHP's static constants
public let CURLE_ABORTED_BY_CALLBACK: Int = 42

/// Global usage for PHP's static constants
public let CURLE_BAD_CALLING_ORDER: Int = 44

/// Global usage for PHP's static constants
public let CURLE_BAD_CONTENT_ENCODING: Int = 61

/// Global usage for PHP's static constants
public let CURLE_BAD_DOWNLOAD_RESUME: Int = 36

/// Global usage for PHP's static constants
public let CURLE_BAD_FUNCTION_ARGUMENT: Int = 43

/// Global usage for PHP's static constants
public let CURLE_BAD_PASSWORD_ENTERED: Int = 46

/// Global usage for PHP's static constants
public let CURLE_COULDNT_CONNECT: Int = 7

/// Global usage for PHP's static constants
public let CURLE_COULDNT_RESOLVE_HOST: Int = 6

/// Global usage for PHP's static constants
public let CURLE_COULDNT_RESOLVE_PROXY: Int = 5

/// Global usage for PHP's static constants
public let CURLE_FAILED_INIT: Int = 2

/// Global usage for PHP's static constants
public let CURLE_FILE_COULDNT_READ_FILE: Int = 37

/// Global usage for PHP's static constants
public let CURLE_FTP_ACCESS_DENIED: Int = 9

/// Global usage for PHP's static constants
public let CURLE_FTP_BAD_DOWNLOAD_RESUME: Int = 36

/// Global usage for PHP's static constants
public let CURLE_FTP_CANT_GET_HOST: Int = 15

/// Global usage for PHP's static constants
public let CURLE_FTP_CANT_RECONNECT: Int = 16

/// Global usage for PHP's static constants
public let CURLE_FTP_COULDNT_GET_SIZE: Int = 32

/// Global usage for PHP's static constants
public let CURLE_FTP_COULDNT_RETR_FILE: Int = 19

/// Global usage for PHP's static constants
public let CURLE_FTP_COULDNT_SET_ASCII: Int = 29

/// Global usage for PHP's static constants
public let CURLE_FTP_COULDNT_SET_BINARY: Int = 17

/// Global usage for PHP's static constants
public let CURLE_FTP_COULDNT_STOR_FILE: Int = 25

/// Global usage for PHP's static constants
public let CURLE_FTP_COULDNT_USE_REST: Int = 31

/// Global usage for PHP's static constants
public let CURLE_FTP_PARTIAL_FILE: Int = 18

/// Global usage for PHP's static constants
public let CURLE_FTP_PORT_FAILED: Int = 30

/// Global usage for PHP's static constants
public let CURLE_FTP_QUOTE_ERROR: Int = 21

/// Global usage for PHP's static constants
public let CURLE_FTP_USER_PASSWORD_INCORRECT: Int = 10

/// Global usage for PHP's static constants
public let CURLE_FTP_WEIRD_227_FORMAT: Int = 14

/// Global usage for PHP's static constants
public let CURLE_FTP_WEIRD_PASS_REPLY: Int = 11

/// Global usage for PHP's static constants
public let CURLE_FTP_WEIRD_PASV_REPLY: Int = 13

/// Global usage for PHP's static constants
public let CURLE_FTP_WEIRD_SERVER_REPLY: Int = 8

/// Global usage for PHP's static constants
public let CURLE_FTP_WEIRD_USER_REPLY: Int = 12

/// Global usage for PHP's static constants
public let CURLE_FTP_WRITE_ERROR: Int = 20

/// Global usage for PHP's static constants
public let CURLE_FUNCTION_NOT_FOUND: Int = 41

/// Global usage for PHP's static constants
public let CURLE_GOT_NOTHING: Int = 52

/// Global usage for PHP's static constants
public let CURLE_HTTP_NOT_FOUND: Int = 22

/// Global usage for PHP's static constants
public let CURLE_HTTP_PORT_FAILED: Int = 45

/// Global usage for PHP's static constants
public let CURLE_HTTP_POST_ERROR: Int = 34

/// Global usage for PHP's static constants
public let CURLE_HTTP_RANGE_ERROR: Int = 33

/// Global usage for PHP's static constants
public let CURLE_HTTP_RETURNED_ERROR: Int = 22

/// Global usage for PHP's static constants
public let CURLE_LDAP_CANNOT_BIND: Int = 38

/// Global usage for PHP's static constants
public let CURLE_LDAP_SEARCH_FAILED: Int = 39

/// Global usage for PHP's static constants
public let CURLE_LIBRARY_NOT_FOUND: Int = 40

/// Global usage for PHP's static constants
public let CURLE_MALFORMAT_USER: Int = 24

/// Global usage for PHP's static constants
public let CURLE_OBSOLETE: Int = 50

/// Global usage for PHP's static constants
public let CURLE_OK: Int = 0

/// Global usage for PHP's static constants
public let CURLE_OPERATION_TIMEDOUT: Int = 28

/// Global usage for PHP's static constants
public let CURLE_OPERATION_TIMEOUTED: Int = 28

/// Global usage for PHP's static constants
public let CURLE_OUT_OF_MEMORY: Int = 27

/// Global usage for PHP's static constants
public let CURLE_PARTIAL_FILE: Int = 18

/// Global usage for PHP's static constants
public let CURLE_READ_ERROR: Int = 26

/// Global usage for PHP's static constants
public let CURLE_RECV_ERROR: Int = 56

/// Global usage for PHP's static constants
public let CURLE_SEND_ERROR: Int = 55

/// Global usage for PHP's static constants
public let CURLE_SHARE_IN_USE: Int = 57

/// Global usage for PHP's static constants
public let CURLE_SSL_CACERT: Int = 60

/// Global usage for PHP's static constants
public let CURLE_SSL_CERTPROBLEM: Int = 58

/// Global usage for PHP's static constants
public let CURLE_SSL_CIPHER: Int = 59

/// Global usage for PHP's static constants
public let CURLE_SSL_CONNECT_ERROR: Int = 35

/// Global usage for PHP's static constants
public let CURLE_SSL_ENGINE_NOTFOUND: Int = 53

/// Global usage for PHP's static constants
public let CURLE_SSL_ENGINE_SETFAILED: Int = 54

/// Global usage for PHP's static constants
public let CURLE_SSL_PEER_CERTIFICATE: Int = 51

/// Global usage for PHP's static constants
public let CURLE_TELNET_OPTION_SYNTAX: Int = 49

/// Global usage for PHP's static constants
public let CURLE_TOO_MANY_REDIRECTS: Int = 47

/// Global usage for PHP's static constants
public let CURLE_UNKNOWN_TELNET_OPTION: Int = 48

/// Global usage for PHP's static constants
public let CURLE_UNSUPPORTED_PROTOCOL: Int = 1

/// Global usage for PHP's static constants
public let CURLE_URL_MALFORMAT: Int = 3

/// Global usage for PHP's static constants
public let CURLE_URL_MALFORMAT_USER: Int = 4

/// Global usage for PHP's static constants
public let CURLE_WRITE_ERROR: Int = 23

/// Global usage for PHP's static constants
public let CURLINFO_CONNECT_TIME: Int = 3145733

/// Global usage for PHP's static constants
public let CURLINFO_CONTENT_LENGTH_DOWNLOAD: Int = 3145743

/// Global usage for PHP's static constants
public let CURLINFO_CONTENT_LENGTH_UPLOAD: Int = 3145744

/// Global usage for PHP's static constants
public let CURLINFO_CONTENT_TYPE: Int = 1048594

/// Global usage for PHP's static constants
public let CURLINFO_EFFECTIVE_URL: Int = 1048577

/// Global usage for PHP's static constants
public let CURLINFO_FILETIME: Int = 2097166

/// Global usage for PHP's static constants
public let CURLINFO_HEADER_OUT: Int = 2

/// Global usage for PHP's static constants
public let CURLINFO_HEADER_SIZE: Int = 2097163

/// Global usage for PHP's static constants
public let CURLINFO_HTTP_CODE: Int = 2097154

/// Global usage for PHP's static constants
public let CURLINFO_LASTONE: Int = 43

/// Global usage for PHP's static constants
public let CURLINFO_NAMELOOKUP_TIME: Int = 3145732

/// Global usage for PHP's static constants
public let CURLINFO_PRETRANSFER_TIME: Int = 3145734

/// Global usage for PHP's static constants
public let CURLINFO_PRIVATE: Int = 1048597

/// Global usage for PHP's static constants
public let CURLINFO_REDIRECT_COUNT: Int = 2097172

/// Global usage for PHP's static constants
public let CURLINFO_REDIRECT_TIME: Int = 3145747

/// Global usage for PHP's static constants
public let CURLINFO_REQUEST_SIZE: Int = 2097164

/// Global usage for PHP's static constants
public let CURLINFO_SIZE_DOWNLOAD: Int = 3145736

/// Global usage for PHP's static constants
public let CURLINFO_SIZE_UPLOAD: Int = 3145735

/// Global usage for PHP's static constants
public let CURLINFO_SPEED_DOWNLOAD: Int = 3145737

/// Global usage for PHP's static constants
public let CURLINFO_SPEED_UPLOAD: Int = 3145738

/// Global usage for PHP's static constants
public let CURLINFO_SSL_VERIFYRESULT: Int = 2097165

/// Global usage for PHP's static constants
public let CURLINFO_STARTTRANSFER_TIME: Int = 3145745

/// Global usage for PHP's static constants
public let CURLINFO_TOTAL_TIME: Int = 3145731

/// Global usage for PHP's static constants
public let CURLMSG_DONE: Int = 1

/// Global usage for PHP's static constants
public let CURLVERSION_NOW: Int = 3

/// Global usage for PHP's static constants
public let CURLM_BAD_EASY_HANDLE: Int = 2

/// Global usage for PHP's static constants
public let CURLM_BAD_HANDLE: Int = 1

/// Global usage for PHP's static constants
public let CURLM_CALL_MULTI_PERFORM: Int = -1

/// Global usage for PHP's static constants
public let CURLM_INTERNAL_ERROR: Int = 4

/// Global usage for PHP's static constants
public let CURLM_OK: Int = 0

/// Global usage for PHP's static constants
public let CURLM_OUT_OF_MEMORY: Int = 3

/// Global usage for PHP's static constants
public let CURLPROXY_HTTP: Int = 0

/// Global usage for PHP's static constants
public let CURLPROXY_SOCKS4: Int = 4

/// Global usage for PHP's static constants
public let CURLPROXY_SOCKS5: Int = 5

/// Global usage for PHP's static constants
public let CURLPROXY_SOCKS4A: Int = 6

/// Global usage for PHP's static constants
public let CURLPROXY_SOCKS5_HOSTNAME: Int = 7

/// Global usage for PHP's static constants
public let CURLSHOPT_NONE: Int = 0

/// Global usage for PHP's static constants
public let CURLSHOPT_SHARE: Int = 1

/// Global usage for PHP's static constants
public let CURLSHOPT_UNSHARE: Int = 2

/// Global usage for PHP's static constants
public let CURL_HTTP_VERSION_1_0: Int = 1

/// Global usage for PHP's static constants
public let CURL_HTTP_VERSION_1_1: Int = 2

/// Global usage for PHP's static constants
public let CURL_HTTP_VERSION_2_0: Int = 3

/// Global usage for PHP's static constants
public let CURL_HTTP_VERSION_NONE: Int = 0

/// Global usage for PHP's static constants
public let CURL_LOCK_DATA_COOKIE: Int = 2

/// Global usage for PHP's static constants
public let CURL_LOCK_DATA_DNS: Int = 3

/// Global usage for PHP's static constants
public let CURL_LOCK_DATA_SSL_SESSION: Int = 4

/// Global usage for PHP's static constants
public let CURL_NETRC_IGNORED: Int = 0

/// Global usage for PHP's static constants
public let CURL_NETRC_OPTIONAL: Int = 1

/// Global usage for PHP's static constants
public let CURL_NETRC_REQUIRED: Int = 2

/// Global usage for PHP's static constants
public let CURL_SSLVERSION_DEFAULT: Int = 0

/// Global usage for PHP's static constants
public let CURL_SSLVERSION_SSLv2: Int = 2

/// Global usage for PHP's static constants
public let CURL_SSLVERSION_SSLv3: Int = 3

/// Global usage for PHP's static constants
public let CURL_SSLVERSION_TLSv1: Int = 1

/// Global usage for PHP's static constants
public let CURL_TIMECOND_IFMODSINCE: Int = 1

/// Global usage for PHP's static constants
public let CURL_TIMECOND_IFUNMODSINCE: Int = 2

/// Global usage for PHP's static constants
public let CURL_TIMECOND_LASTMOD: Int = 3

/// Global usage for PHP's static constants
public let CURL_TIMECOND_NONE: Int = 0

/// Global usage for PHP's static constants
public let CURL_VERSION_IPV6: Int = 1

/// Global usage for PHP's static constants
public let CURL_VERSION_KERBEROS4: Int = 2

/// Global usage for PHP's static constants
public let CURL_VERSION_LIBZ: Int = 8

/// Global usage for PHP's static constants
public let CURL_VERSION_SSL: Int = 4

/// Global usage for PHP's static constants
public let CURL_VERSION_HTTP2: Int = 65536

/// Global usage for PHP's static constants
public let CURLOPT_HTTPAUTH: Int = 107

/// Global usage for PHP's static constants
public let CURLAUTH_ANY: Int = -17

/// Global usage for PHP's static constants
public let CURLAUTH_ANYSAFE: Int = -18

/// Global usage for PHP's static constants
public let CURLAUTH_BASIC: Int = 1

/// Global usage for PHP's static constants
public let CURLAUTH_DIGEST: Int = 2

/// Global usage for PHP's static constants
public let CURLAUTH_GSSNEGOTIATE: Int = 4

/// Global usage for PHP's static constants
public let CURLAUTH_NONE: Int = 0

/// Global usage for PHP's static constants
public let CURLAUTH_NTLM: Int = 8

/// Global usage for PHP's static constants
public let CURLINFO_HTTP_CONNECTCODE: Int = 2097174

/// Global usage for PHP's static constants
public let CURLOPT_FTP_CREATE_MISSING_DIRS: Int = 110

/// Global usage for PHP's static constants
public let CURLOPT_PROXYAUTH: Int = 111

/// Global usage for PHP's static constants
public let CURLE_FILESIZE_EXCEEDED: Int = 63

/// Global usage for PHP's static constants
public let CURLE_LDAP_INVALID_URL: Int = 62

/// Global usage for PHP's static constants
public let CURLINFO_HTTPAUTH_AVAIL: Int = 2097175

/// Global usage for PHP's static constants
public let CURLINFO_RESPONSE_CODE: Int = 2097154

/// Global usage for PHP's static constants
public let CURLINFO_PROXYAUTH_AVAIL: Int = 2097176

/// Global usage for PHP's static constants
public let CURLOPT_FTP_RESPONSE_TIMEOUT: Int = 112

/// Global usage for PHP's static constants
public let CURLOPT_IPRESOLVE: Int = 113

/// Global usage for PHP's static constants
public let CURLOPT_MAXFILESIZE: Int = 114

/// Global usage for PHP's static constants
public let CURL_IPRESOLVE_V4: Int = 1

/// Global usage for PHP's static constants
public let CURL_IPRESOLVE_V6: Int = 2

/// Global usage for PHP's static constants
public let CURL_IPRESOLVE_WHATEVER: Int = 0

/// Global usage for PHP's static constants
public let CURLE_FTP_SSL_FAILED: Int = 64

/// Global usage for PHP's static constants
public let CURLFTPSSL_ALL: Int = 3

/// Global usage for PHP's static constants
public let CURLFTPSSL_CONTROL: Int = 2

/// Global usage for PHP's static constants
public let CURLFTPSSL_NONE: Int = 0

/// Global usage for PHP's static constants
public let CURLFTPSSL_TRY: Int = 1

/// Global usage for PHP's static constants
public let CURLOPT_FTP_SSL: Int = 119

/// Global usage for PHP's static constants
public let CURLOPT_NETRC_FILE: Int = 10118

/// Global usage for PHP's static constants
public let CURLFTPAUTH_DEFAULT: Int = 0

/// Global usage for PHP's static constants
public let CURLFTPAUTH_SSL: Int = 1

/// Global usage for PHP's static constants
public let CURLFTPAUTH_TLS: Int = 2

/// Global usage for PHP's static constants
public let CURLOPT_FTPSSLAUTH: Int = 129

/// Global usage for PHP's static constants
public let CURLOPT_FTP_ACCOUNT: Int = 10134

/// Global usage for PHP's static constants
public let CURLOPT_TCP_NODELAY: Int = 121

/// Global usage for PHP's static constants
public let CURLINFO_OS_ERRNO: Int = 2097177

/// Global usage for PHP's static constants
public let CURLINFO_NUM_CONNECTS: Int = 2097178

/// Global usage for PHP's static constants
public let CURLINFO_SSL_ENGINES: Int = 4194331

/// Global usage for PHP's static constants
public let CURLINFO_COOKIELIST: Int = 4194332

/// Global usage for PHP's static constants
public let CURLOPT_COOKIELIST: Int = 10135

/// Global usage for PHP's static constants
public let CURLOPT_IGNORE_CONTENT_LENGTH: Int = 136

/// Global usage for PHP's static constants
public let CURLOPT_FTP_SKIP_PASV_IP: Int = 137

/// Global usage for PHP's static constants
public let CURLOPT_FTP_FILEMETHOD: Int = 138

/// Global usage for PHP's static constants
public let CURLOPT_CONNECT_ONLY: Int = 141

/// Global usage for PHP's static constants
public let CURLOPT_LOCALPORT: Int = 139

/// Global usage for PHP's static constants
public let CURLOPT_LOCALPORTRANGE: Int = 140

/// Global usage for PHP's static constants
public let CURLFTPMETHOD_MULTICWD: Int = 1

/// Global usage for PHP's static constants
public let CURLFTPMETHOD_NOCWD: Int = 2

/// Global usage for PHP's static constants
public let CURLFTPMETHOD_SINGLECWD: Int = 3

/// Global usage for PHP's static constants
public let CURLINFO_FTP_ENTRY_PATH: Int = 1048606

/// Global usage for PHP's static constants
public let CURLOPT_FTP_ALTERNATIVE_TO_USER: Int = 10147

/// Global usage for PHP's static constants
public let CURLOPT_MAX_RECV_SPEED_LARGE: Int = 30146

/// Global usage for PHP's static constants
public let CURLOPT_MAX_SEND_SPEED_LARGE: Int = 30145

/// Global usage for PHP's static constants
public let CURLOPT_SSL_SESSIONID_CACHE: Int = 150

/// Global usage for PHP's static constants
public let CURLMOPT_PIPELINING: Int = 3

/// Global usage for PHP's static constants
public let CURLE_SSH: Int = 79

/// Global usage for PHP's static constants
public let CURLOPT_FTP_SSL_CCC: Int = 154

/// Global usage for PHP's static constants
public let CURLOPT_SSH_AUTH_TYPES: Int = 151

/// Global usage for PHP's static constants
public let CURLOPT_SSH_PRIVATE_KEYFILE: Int = 10153

/// Global usage for PHP's static constants
public let CURLOPT_SSH_PUBLIC_KEYFILE: Int = 10152

/// Global usage for PHP's static constants
public let CURLFTPSSL_CCC_ACTIVE: Int = 2

/// Global usage for PHP's static constants
public let CURLFTPSSL_CCC_NONE: Int = 0

/// Global usage for PHP's static constants
public let CURLFTPSSL_CCC_PASSIVE: Int = 1

/// Global usage for PHP's static constants
public let CURLOPT_CONNECTTIMEOUT_MS: Int = 156

/// Global usage for PHP's static constants
public let CURLOPT_HTTP_CONTENT_DECODING: Int = 158

/// Global usage for PHP's static constants
public let CURLOPT_HTTP_TRANSFER_DECODING: Int = 157

/// Global usage for PHP's static constants
public let CURLOPT_TIMEOUT_MS: Int = 155

/// Global usage for PHP's static constants
public let CURLMOPT_MAXCONNECTS: Int = 6

/// Global usage for PHP's static constants
public let CURLOPT_KRBLEVEL: Int = 10063

/// Global usage for PHP's static constants
public let CURLOPT_NEW_DIRECTORY_PERMS: Int = 160

/// Global usage for PHP's static constants
public let CURLOPT_NEW_FILE_PERMS: Int = 159

/// Global usage for PHP's static constants
public let CURLOPT_APPEND: Int = 50

/// Global usage for PHP's static constants
public let CURLOPT_DIRLISTONLY: Int = 48

/// Global usage for PHP's static constants
public let CURLOPT_USE_SSL: Int = 119

/// Global usage for PHP's static constants
public let CURLUSESSL_ALL: Int = 3

/// Global usage for PHP's static constants
public let CURLUSESSL_CONTROL: Int = 2

/// Global usage for PHP's static constants
public let CURLUSESSL_NONE: Int = 0

/// Global usage for PHP's static constants
public let CURLUSESSL_TRY: Int = 1

/// Global usage for PHP's static constants
public let CURLOPT_SSH_HOST_PUBLIC_KEY_MD5: Int = 10162

/// Global usage for PHP's static constants
public let CURLOPT_PROXY_TRANSFER_MODE: Int = 166

/// Global usage for PHP's static constants
public let CURLPAUSE_ALL: Int = 5

/// Global usage for PHP's static constants
public let CURLPAUSE_CONT: Int = 0

/// Global usage for PHP's static constants
public let CURLPAUSE_RECV: Int = 1

/// Global usage for PHP's static constants
public let CURLPAUSE_RECV_CONT: Int = 0

/// Global usage for PHP's static constants
public let CURLPAUSE_SEND: Int = 4

/// Global usage for PHP's static constants
public let CURLPAUSE_SEND_CONT: Int = 0

/// Global usage for PHP's static constants
public let CURL_READFUNC_PAUSE: Int = 268435457

/// Global usage for PHP's static constants
public let CURL_WRITEFUNC_PAUSE: Int = 268435457

/// Global usage for PHP's static constants
public let CURLINFO_REDIRECT_URL: Int = 1048607

/// Global usage for PHP's static constants
public let CURLINFO_APPCONNECT_TIME: Int = 3145761

/// Global usage for PHP's static constants
public let CURLINFO_PRIMARY_IP: Int = 1048608

/// Global usage for PHP's static constants
public let CURLOPT_ADDRESS_SCOPE: Int = 171

/// Global usage for PHP's static constants
public let CURLOPT_CRLFILE: Int = 10169

/// Global usage for PHP's static constants
public let CURLOPT_ISSUERCERT: Int = 10170

/// Global usage for PHP's static constants
public let CURLOPT_KEYPASSWD: Int = 10026

/// Global usage for PHP's static constants
public let CURLSSH_AUTH_ANY: Int = -1

/// Global usage for PHP's static constants
public let CURLSSH_AUTH_DEFAULT: Int = -1

/// Global usage for PHP's static constants
public let CURLSSH_AUTH_HOST: Int = 4

/// Global usage for PHP's static constants
public let CURLSSH_AUTH_KEYBOARD: Int = 8

/// Global usage for PHP's static constants
public let CURLSSH_AUTH_NONE: Int = 0

/// Global usage for PHP's static constants
public let CURLSSH_AUTH_PASSWORD: Int = 2

/// Global usage for PHP's static constants
public let CURLSSH_AUTH_PUBLICKEY: Int = 1

/// Global usage for PHP's static constants
public let CURLINFO_CERTINFO: Int = 4194338

/// Global usage for PHP's static constants
public let CURLOPT_CERTINFO: Int = 172

/// Global usage for PHP's static constants
public let CURLOPT_PASSWORD: Int = 10174

/// Global usage for PHP's static constants
public let CURLOPT_POSTREDIR: Int = 161

/// Global usage for PHP's static constants
public let CURLOPT_PROXYPASSWORD: Int = 10176

/// Global usage for PHP's static constants
public let CURLOPT_PROXYUSERNAME: Int = 10175

/// Global usage for PHP's static constants
public let CURLOPT_USERNAME: Int = 10173

/// Global usage for PHP's static constants
public let CURLAUTH_DIGEST_IE: Int = 16

/// Global usage for PHP's static constants
public let CURLINFO_CONDITION_UNMET: Int = 2097187

/// Global usage for PHP's static constants
public let CURLOPT_NOPROXY: Int = 10177

/// Global usage for PHP's static constants
public let CURLOPT_PROTOCOLS: Int = 181

/// Global usage for PHP's static constants
public let CURLOPT_REDIR_PROTOCOLS: Int = 182

/// Global usage for PHP's static constants
public let CURLOPT_SOCKS5_GSSAPI_NEC: Int = 180

/// Global usage for PHP's static constants
public let CURLOPT_SOCKS5_GSSAPI_SERVICE: Int = 10179

/// Global usage for PHP's static constants
public let CURLOPT_TFTP_BLKSIZE: Int = 178

/// Global usage for PHP's static constants
public let CURLPROTO_ALL: Int = -1

/// Global usage for PHP's static constants
public let CURLPROTO_DICT: Int = 512

/// Global usage for PHP's static constants
public let CURLPROTO_FILE: Int = 1024

/// Global usage for PHP's static constants
public let CURLPROTO_FTP: Int = 4

/// Global usage for PHP's static constants
public let CURLPROTO_FTPS: Int = 8

/// Global usage for PHP's static constants
public let CURLPROTO_HTTP: Int = 1

/// Global usage for PHP's static constants
public let CURLPROTO_HTTPS: Int = 2

/// Global usage for PHP's static constants
public let CURLPROTO_LDAP: Int = 128

/// Global usage for PHP's static constants
public let CURLPROTO_LDAPS: Int = 256

/// Global usage for PHP's static constants
public let CURLPROTO_SCP: Int = 16

/// Global usage for PHP's static constants
public let CURLPROTO_SFTP: Int = 32

/// Global usage for PHP's static constants
public let CURLPROTO_TELNET: Int = 64

/// Global usage for PHP's static constants
public let CURLPROTO_TFTP: Int = 2048

/// Global usage for PHP's static constants
public let CURLOPT_SSH_KNOWNHOSTS: Int = 10183

/// Global usage for PHP's static constants
public let CURLINFO_RTSP_CLIENT_CSEQ: Int = 2097189

/// Global usage for PHP's static constants
public let CURLINFO_RTSP_CSEQ_RECV: Int = 2097191

/// Global usage for PHP's static constants
public let CURLINFO_RTSP_SERVER_CSEQ: Int = 2097190

/// Global usage for PHP's static constants
public let CURLINFO_RTSP_SESSION_ID: Int = 1048612

/// Global usage for PHP's static constants
public let CURLOPT_FTP_USE_PRET: Int = 188

/// Global usage for PHP's static constants
public let CURLOPT_MAIL_FROM: Int = 10186

/// Global usage for PHP's static constants
public let CURLOPT_MAIL_RCPT: Int = 10187

/// Global usage for PHP's static constants
public let CURLOPT_RTSP_CLIENT_CSEQ: Int = 193

/// Global usage for PHP's static constants
public let CURLOPT_RTSP_REQUEST: Int = 189

/// Global usage for PHP's static constants
public let CURLOPT_RTSP_SERVER_CSEQ: Int = 194

/// Global usage for PHP's static constants
public let CURLOPT_RTSP_SESSION_ID: Int = 10190

/// Global usage for PHP's static constants
public let CURLOPT_RTSP_STREAM_URI: Int = 10191

/// Global usage for PHP's static constants
public let CURLOPT_RTSP_TRANSPORT: Int = 10192

/// Global usage for PHP's static constants
public let CURLPROTO_IMAP: Int = 4096

/// Global usage for PHP's static constants
public let CURLPROTO_IMAPS: Int = 8192

/// Global usage for PHP's static constants
public let CURLPROTO_POP3: Int = 16384

/// Global usage for PHP's static constants
public let CURLPROTO_POP3S: Int = 32768

/// Global usage for PHP's static constants
public let CURLPROTO_RTSP: Int = 262144

/// Global usage for PHP's static constants
public let CURLPROTO_SMTP: Int = 65536

/// Global usage for PHP's static constants
public let CURLPROTO_SMTPS: Int = 131072

/// Global usage for PHP's static constants
public let CURL_RTSPREQ_ANNOUNCE: Int = 3

/// Global usage for PHP's static constants
public let CURL_RTSPREQ_DESCRIBE: Int = 2

/// Global usage for PHP's static constants
public let CURL_RTSPREQ_GET_PARAMETER: Int = 8

/// Global usage for PHP's static constants
public let CURL_RTSPREQ_OPTIONS: Int = 1

/// Global usage for PHP's static constants
public let CURL_RTSPREQ_PAUSE: Int = 6

/// Global usage for PHP's static constants
public let CURL_RTSPREQ_PLAY: Int = 5

/// Global usage for PHP's static constants
public let CURL_RTSPREQ_RECEIVE: Int = 11

/// Global usage for PHP's static constants
public let CURL_RTSPREQ_RECORD: Int = 10

/// Global usage for PHP's static constants
public let CURL_RTSPREQ_SETUP: Int = 4

/// Global usage for PHP's static constants
public let CURL_RTSPREQ_SET_PARAMETER: Int = 9

/// Global usage for PHP's static constants
public let CURL_RTSPREQ_TEARDOWN: Int = 7

/// Global usage for PHP's static constants
public let CURLINFO_LOCAL_IP: Int = 1048617

/// Global usage for PHP's static constants
public let CURLINFO_LOCAL_PORT: Int = 2097194

/// Global usage for PHP's static constants
public let CURLINFO_PRIMARY_PORT: Int = 2097192

/// Global usage for PHP's static constants
public let CURLOPT_FNMATCH_FUNCTION: Int = 20200

/// Global usage for PHP's static constants
public let CURLOPT_WILDCARDMATCH: Int = 197

/// Global usage for PHP's static constants
public let CURLPROTO_RTMP: Int = 524288

/// Global usage for PHP's static constants
public let CURLPROTO_RTMPE: Int = 2097152

/// Global usage for PHP's static constants
public let CURLPROTO_RTMPS: Int = 8388608

/// Global usage for PHP's static constants
public let CURLPROTO_RTMPT: Int = 1048576

/// Global usage for PHP's static constants
public let CURLPROTO_RTMPTE: Int = 4194304

/// Global usage for PHP's static constants
public let CURLPROTO_RTMPTS: Int = 16777216

/// Global usage for PHP's static constants
public let CURL_FNMATCHFUNC_FAIL: Int = 2

/// Global usage for PHP's static constants
public let CURL_FNMATCHFUNC_MATCH: Int = 0

/// Global usage for PHP's static constants
public let CURL_FNMATCHFUNC_NOMATCH: Int = 1

/// Global usage for PHP's static constants
public let CURLPROTO_GOPHER: Int = 33554432

/// Global usage for PHP's static constants
public let CURLAUTH_ONLY: Int64 = 2147483648

/// Global usage for PHP's static constants
public let CURLOPT_RESOLVE: Int = 10203

/// Global usage for PHP's static constants
public let CURLOPT_TLSAUTH_PASSWORD: Int = 10205

/// Global usage for PHP's static constants
public let CURLOPT_TLSAUTH_TYPE: Int = 10206

/// Global usage for PHP's static constants
public let CURLOPT_TLSAUTH_USERNAME: Int = 10204

/// Global usage for PHP's static constants
public let CURL_TLSAUTH_SRP: Int = 1

/// Global usage for PHP's static constants
public let CURLOPT_ACCEPT_ENCODING: Int = 10102

/// Global usage for PHP's static constants
public let CURLOPT_TRANSFER_ENCODING: Int = 207

/// Global usage for PHP's static constants
public let CURLGSSAPI_DELEGATION_FLAG: Int = 2

/// Global usage for PHP's static constants
public let CURLGSSAPI_DELEGATION_POLICY_FLAG: Int = 1

/// Global usage for PHP's static constants
public let CURLOPT_GSSAPI_DELEGATION: Int = 210

/// Global usage for PHP's static constants
public let CURLOPT_ACCEPTTIMEOUT_MS: Int = 212

/// Global usage for PHP's static constants
public let CURLOPT_DNS_SERVERS: Int = 10211

/// Global usage for PHP's static constants
public let CURLOPT_MAIL_AUTH: Int = 10217

/// Global usage for PHP's static constants
public let CURLOPT_SSL_OPTIONS: Int = 216

/// Global usage for PHP's static constants
public let CURLOPT_TCP_KEEPALIVE: Int = 213

/// Global usage for PHP's static constants
public let CURLOPT_TCP_KEEPIDLE: Int = 214

/// Global usage for PHP's static constants
public let CURLOPT_TCP_KEEPINTVL: Int = 215

/// Global usage for PHP's static constants
public let CURLSSLOPT_ALLOW_BEAST: Int = 1

/// Global usage for PHP's static constants
public let CURL_SSLVERSION_TLSv1_0: Int = 4

/// Global usage for PHP's static constants
public let CURL_SSLVERSION_TLSv1_1: Int = 5

/// Global usage for PHP's static constants
public let CURL_SSLVERSION_TLSv1_2: Int = 6

/// Global usage for PHP's static constants
public let CURLPIPE_NOTHING: Int = 0

/// Global usage for PHP's static constants
public let CURLPIPE_HTTP1: Int = 1

/// Global usage for PHP's static constants
public let CURLPIPE_MULTIPLEX: Int = 2

/// Global usage for PHP's static constants
public let CURLOPT_SAFE_UPLOAD: Int = -1

/// Global usage for PHP's static constants
public let XML_ELEMENT_NODE: Int = 1

/// Global usage for PHP's static constants
public let XML_ATTRIBUTE_NODE: Int = 2

/// Global usage for PHP's static constants
public let XML_TEXT_NODE: Int = 3

/// Global usage for PHP's static constants
public let XML_CDATA_SECTION_NODE: Int = 4

/// Global usage for PHP's static constants
public let XML_ENTITY_REF_NODE: Int = 5

/// Global usage for PHP's static constants
public let XML_ENTITY_NODE: Int = 6

/// Global usage for PHP's static constants
public let XML_PI_NODE: Int = 7

/// Global usage for PHP's static constants
public let XML_COMMENT_NODE: Int = 8

/// Global usage for PHP's static constants
public let XML_DOCUMENT_NODE: Int = 9

/// Global usage for PHP's static constants
public let XML_DOCUMENT_TYPE_NODE: Int = 10

/// Global usage for PHP's static constants
public let XML_DOCUMENT_FRAG_NODE: Int = 11

/// Global usage for PHP's static constants
public let XML_NOTATION_NODE: Int = 12

/// Global usage for PHP's static constants
public let XML_HTML_DOCUMENT_NODE: Int = 13

/// Global usage for PHP's static constants
public let XML_DTD_NODE: Int = 14

/// Global usage for PHP's static constants
public let XML_ELEMENT_DECL_NODE: Int = 15

/// Global usage for PHP's static constants
public let XML_ATTRIBUTE_DECL_NODE: Int = 16

/// Global usage for PHP's static constants
public let XML_ENTITY_DECL_NODE: Int = 17

/// Global usage for PHP's static constants
public let XML_NAMESPACE_DECL_NODE: Int = 18

/// Global usage for PHP's static constants
public let XML_LOCAL_NAMESPACE: Int = 18

/// Global usage for PHP's static constants
public let XML_ATTRIBUTE_CDATA: Int = 1

/// Global usage for PHP's static constants
public let XML_ATTRIBUTE_ID: Int = 2

/// Global usage for PHP's static constants
public let XML_ATTRIBUTE_IDREF: Int = 3

/// Global usage for PHP's static constants
public let XML_ATTRIBUTE_IDREFS: Int = 4

/// Global usage for PHP's static constants
public let XML_ATTRIBUTE_ENTITY: Int = 6

/// Global usage for PHP's static constants
public let XML_ATTRIBUTE_NMTOKEN: Int = 7

/// Global usage for PHP's static constants
public let XML_ATTRIBUTE_NMTOKENS: Int = 8

/// Global usage for PHP's static constants
public let XML_ATTRIBUTE_ENUMERATION: Int = 9

/// Global usage for PHP's static constants
public let XML_ATTRIBUTE_NOTATION: Int = 10

/// Global usage for PHP's static constants
public let DOM_PHP_ERR: Int = 0

/// Global usage for PHP's static constants
public let DOM_INDEX_SIZE_ERR: Int = 1

/// Global usage for PHP's static constants
public let DOMSTRING_SIZE_ERR: Int = 2

/// Global usage for PHP's static constants
public let DOM_HIERARCHY_REQUEST_ERR: Int = 3

/// Global usage for PHP's static constants
public let DOM_WRONG_DOCUMENT_ERR: Int = 4

/// Global usage for PHP's static constants
public let DOM_INVALID_CHARACTER_ERR: Int = 5

/// Global usage for PHP's static constants
public let DOM_NO_DATA_ALLOWED_ERR: Int = 6

/// Global usage for PHP's static constants
public let DOM_NO_MODIFICATION_ALLOWED_ERR: Int = 7

/// Global usage for PHP's static constants
public let DOM_NOT_FOUND_ERR: Int = 8

/// Global usage for PHP's static constants
public let DOM_NOT_SUPPORTED_ERR: Int = 9

/// Global usage for PHP's static constants
public let DOM_INUSE_ATTRIBUTE_ERR: Int = 10

/// Global usage for PHP's static constants
public let DOM_INVALID_STATE_ERR: Int = 11

/// Global usage for PHP's static constants
public let DOM_SYNTAX_ERR: Int = 12

/// Global usage for PHP's static constants
public let DOM_INVALID_MODIFICATION_ERR: Int = 13

/// Global usage for PHP's static constants
public let DOM_NAMESPACE_ERR: Int = 14

/// Global usage for PHP's static constants
public let DOM_INVALID_ACCESS_ERR: Int = 15

/// Global usage for PHP's static constants
public let DOM_VALIDATION_ERR: Int = 16

/// Global usage for PHP's static constants
public let HASH_HMAC: Int = 1

/// Global usage for PHP's static constants
public let MHASH_CRC32: Int = 0

/// Global usage for PHP's static constants
public let MHASH_MD5: Int = 1

/// Global usage for PHP's static constants
public let MHASH_SHA1: Int = 2

/// Global usage for PHP's static constants
public let MHASH_HAVAL256: Int = 3

/// Global usage for PHP's static constants
public let MHASH_RIPEMD160: Int = 5

/// Global usage for PHP's static constants
public let MHASH_TIGER: Int = 7

/// Global usage for PHP's static constants
public let MHASH_GOST: Int = 8

/// Global usage for PHP's static constants
public let MHASH_CRC32B: Int = 9

/// Global usage for PHP's static constants
public let MHASH_HAVAL224: Int = 10

/// Global usage for PHP's static constants
public let MHASH_HAVAL192: Int = 11

/// Global usage for PHP's static constants
public let MHASH_HAVAL160: Int = 12

/// Global usage for PHP's static constants
public let MHASH_HAVAL128: Int = 13

/// Global usage for PHP's static constants
public let MHASH_TIGER128: Int = 14

/// Global usage for PHP's static constants
public let MHASH_TIGER160: Int = 15

/// Global usage for PHP's static constants
public let MHASH_MD4: Int = 16

/// Global usage for PHP's static constants
public let MHASH_SHA256: Int = 17

/// Global usage for PHP's static constants
public let MHASH_ADLER32: Int = 18

/// Global usage for PHP's static constants
public let MHASH_SHA224: Int = 19

/// Global usage for PHP's static constants
public let MHASH_SHA512: Int = 20

/// Global usage for PHP's static constants
public let MHASH_SHA384: Int = 21

/// Global usage for PHP's static constants
public let MHASH_WHIRLPOOL: Int = 22

/// Global usage for PHP's static constants
public let MHASH_RIPEMD128: Int = 23

/// Global usage for PHP's static constants
public let MHASH_RIPEMD256: Int = 24

/// Global usage for PHP's static constants
public let MHASH_RIPEMD320: Int = 25

/// Global usage for PHP's static constants
public let MHASH_SNEFRU256: Int = 27

/// Global usage for PHP's static constants
public let MHASH_MD2: Int = 28

/// Global usage for PHP's static constants
public let MHASH_FNV132: Int = 29

/// Global usage for PHP's static constants
public let MHASH_FNV1A32: Int = 30

/// Global usage for PHP's static constants
public let MHASH_FNV164: Int = 31

/// Global usage for PHP's static constants
public let MHASH_FNV1A64: Int = 32

/// Global usage for PHP's static constants
public let MHASH_JOAAT: Int = 33

/// Global usage for PHP's static constants
public let FILEINFO_NONE: Int = 0

/// Global usage for PHP's static constants
public let FILEINFO_SYMLINK: Int = 2

/// Global usage for PHP's static constants
public let FILEINFO_MIME: Int = 1040

/// Global usage for PHP's static constants
public let FILEINFO_MIME_TYPE: Int = 16

/// Global usage for PHP's static constants
public let FILEINFO_MIME_ENCODING: Int = 1024

/// Global usage for PHP's static constants
public let FILEINFO_DEVICES: Int = 8

/// Global usage for PHP's static constants
public let FILEINFO_CONTINUE: Int = 32

/// Global usage for PHP's static constants
public let FILEINFO_PRESERVE_ATIME: Int = 128

/// Global usage for PHP's static constants
public let FILEINFO_RAW: Int = 256

/// Global usage for PHP's static constants
public let INPUT_POST: Int = 0

/// Global usage for PHP's static constants
public let INPUT_GET: Int = 1

/// Global usage for PHP's static constants
public let INPUT_COOKIE: Int = 2

/// Global usage for PHP's static constants
public let INPUT_ENV: Int = 4

/// Global usage for PHP's static constants
public let INPUT_SERVER: Int = 5

/// Global usage for PHP's static constants
public let INPUT_SESSION: Int = 6

/// Global usage for PHP's static constants
public let INPUT_REQUEST: Int = 99

/// Global usage for PHP's static constants
public let FILTER_FLAG_NONE: Int = 0

/// Global usage for PHP's static constants
public let FILTER_REQUIRE_SCALAR: Int = 33554432

/// Global usage for PHP's static constants
public let FILTER_REQUIRE_ARRAY: Int = 16777216

/// Global usage for PHP's static constants
public let FILTER_FORCE_ARRAY: Int = 67108864

/// Global usage for PHP's static constants
public let FILTER_NULL_ON_FAILURE: Int = 134217728

/// Global usage for PHP's static constants
public let FILTER_VALIDATE_INT: Int = 257

/// Global usage for PHP's static constants
public let FILTER_VALIDATE_BOOLEAN: Int = 258

/// Global usage for PHP's static constants
public let FILTER_VALIDATE_FLOAT: Int = 259

/// Global usage for PHP's static constants
public let FILTER_VALIDATE_REGEXP: Int = 272

/// Global usage for PHP's static constants
public let FILTER_VALIDATE_DOMAIN: Int = 277

/// Global usage for PHP's static constants
public let FILTER_VALIDATE_URL: Int = 273

/// Global usage for PHP's static constants
public let FILTER_VALIDATE_EMAIL: Int = 274

/// Global usage for PHP's static constants
public let FILTER_VALIDATE_IP: Int = 275

/// Global usage for PHP's static constants
public let FILTER_VALIDATE_MAC: Int = 276

/// Global usage for PHP's static constants
public let FILTER_DEFAULT: Int = 516

/// Global usage for PHP's static constants
public let FILTER_UNSAFE_RAW: Int = 516

/// Global usage for PHP's static constants
public let FILTER_SANITIZE_STRING: Int = 513

/// Global usage for PHP's static constants
public let FILTER_SANITIZE_STRIPPED: Int = 513

/// Global usage for PHP's static constants
public let FILTER_SANITIZE_ENCODED: Int = 514

/// Global usage for PHP's static constants
public let FILTER_SANITIZE_SPECIAL_CHARS: Int = 515

/// Global usage for PHP's static constants
public let FILTER_SANITIZE_FULL_SPECIAL_CHARS: Int = 522

/// Global usage for PHP's static constants
public let FILTER_SANITIZE_EMAIL: Int = 517

/// Global usage for PHP's static constants
public let FILTER_SANITIZE_URL: Int = 518

/// Global usage for PHP's static constants
public let FILTER_SANITIZE_NUMBER_INT: Int = 519

/// Global usage for PHP's static constants
public let FILTER_SANITIZE_NUMBER_FLOAT: Int = 520

/// Global usage for PHP's static constants
public let FILTER_SANITIZE_MAGIC_QUOTES: Int = 521

/// Global usage for PHP's static constants
public let FILTER_CALLBACK: Int = 1024

/// Global usage for PHP's static constants
public let FILTER_FLAG_ALLOW_OCTAL: Int = 1

/// Global usage for PHP's static constants
public let FILTER_FLAG_ALLOW_HEX: Int = 2

/// Global usage for PHP's static constants
public let FILTER_FLAG_STRIP_LOW: Int = 4

/// Global usage for PHP's static constants
public let FILTER_FLAG_STRIP_HIGH: Int = 8

/// Global usage for PHP's static constants
public let FILTER_FLAG_STRIP_BACKTICK: Int = 512

/// Global usage for PHP's static constants
public let FILTER_FLAG_ENCODE_LOW: Int = 16

/// Global usage for PHP's static constants
public let FILTER_FLAG_ENCODE_HIGH: Int = 32

/// Global usage for PHP's static constants
public let FILTER_FLAG_ENCODE_AMP: Int = 64

/// Global usage for PHP's static constants
public let FILTER_FLAG_NO_ENCODE_QUOTES: Int = 128

/// Global usage for PHP's static constants
public let FILTER_FLAG_EMPTY_STRING_NULL: Int = 256

/// Global usage for PHP's static constants
public let FILTER_FLAG_ALLOW_FRACTION: Int = 4096

/// Global usage for PHP's static constants
public let FILTER_FLAG_ALLOW_THOUSAND: Int = 8192

/// Global usage for PHP's static constants
public let FILTER_FLAG_ALLOW_SCIENTIFIC: Int = 16384

/// Global usage for PHP's static constants
public let FILTER_FLAG_SCHEME_REQUIRED: Int = 65536

/// Global usage for PHP's static constants
public let FILTER_FLAG_HOST_REQUIRED: Int = 131072

/// Global usage for PHP's static constants
public let FILTER_FLAG_PATH_REQUIRED: Int = 262144

/// Global usage for PHP's static constants
public let FILTER_FLAG_QUERY_REQUIRED: Int = 524288

/// Global usage for PHP's static constants
public let FILTER_FLAG_IPV4: Int = 1048576

/// Global usage for PHP's static constants
public let FILTER_FLAG_IPV6: Int = 2097152

/// Global usage for PHP's static constants
public let FILTER_FLAG_NO_RES_RANGE: Int = 4194304

/// Global usage for PHP's static constants
public let FILTER_FLAG_NO_PRIV_RANGE: Int = 8388608

/// Global usage for PHP's static constants
public let FILTER_FLAG_HOSTNAME: Int = 1048576

/// Global usage for PHP's static constants
public let FTP_ASCII: Int = 1

/// Global usage for PHP's static constants
public let FTP_TEXT: Int = 1

/// Global usage for PHP's static constants
public let FTP_BINARY: Int = 2

/// Global usage for PHP's static constants
public let FTP_IMAGE: Int = 2

/// Global usage for PHP's static constants
public let FTP_AUTORESUME: Int = -1

/// Global usage for PHP's static constants
public let FTP_TIMEOUT_SEC: Int = 0

/// Global usage for PHP's static constants
public let FTP_AUTOSEEK: Int = 1

/// Global usage for PHP's static constants
public let FTP_FAILED: Int = 0

/// Global usage for PHP's static constants
public let FTP_FINISHED: Int = 1

/// Global usage for PHP's static constants
public let FTP_MOREDATA: Int = 2

/// Global usage for PHP's static constants
public let IMG_GIF: Int = 1

/// Global usage for PHP's static constants
public let IMG_JPG: Int = 2

/// Global usage for PHP's static constants
public let IMG_JPEG: Int = 2

/// Global usage for PHP's static constants
public let IMG_PNG: Int = 4

/// Global usage for PHP's static constants
public let IMG_WBMP: Int = 8

/// Global usage for PHP's static constants
public let IMG_XPM: Int = 16

/// Global usage for PHP's static constants
public let IMG_COLOR_TILED: Int = -5

/// Global usage for PHP's static constants
public let IMG_COLOR_STYLED: Int = -2

/// Global usage for PHP's static constants
public let IMG_COLOR_BRUSHED: Int = -3

/// Global usage for PHP's static constants
public let IMG_COLOR_STYLEDBRUSHED: Int = -4

/// Global usage for PHP's static constants
public let IMG_COLOR_TRANSPARENT: Int = -6

/// Global usage for PHP's static constants
public let IMG_ARC_ROUNDED: Int = 0

/// Global usage for PHP's static constants
public let IMG_ARC_PIE: Int = 0

/// Global usage for PHP's static constants
public let IMG_ARC_CHORD: Int = 1

/// Global usage for PHP's static constants
public let IMG_ARC_NOFILL: Int = 2

/// Global usage for PHP's static constants
public let IMG_ARC_EDGED: Int = 4

/// Global usage for PHP's static constants
public let IMG_GD2_RAW: Int = 1

/// Global usage for PHP's static constants
public let IMG_GD2_COMPRESSED: Int = 2

/// Global usage for PHP's static constants
public let IMG_FLIP_HORIZONTAL: Int = 1

/// Global usage for PHP's static constants
public let IMG_FLIP_VERTICAL: Int = 2

/// Global usage for PHP's static constants
public let IMG_FLIP_BOTH: Int = 3

/// Global usage for PHP's static constants
public let IMG_EFFECT_REPLACE: Int = 0

/// Global usage for PHP's static constants
public let IMG_EFFECT_ALPHABLEND: Int = 1

/// Global usage for PHP's static constants
public let IMG_EFFECT_NORMAL: Int = 2

/// Global usage for PHP's static constants
public let IMG_EFFECT_OVERLAY: Int = 3

/// Global usage for PHP's static constants
public let IMG_CROP_DEFAULT: Int = 0

/// Global usage for PHP's static constants
public let IMG_CROP_TRANSPARENT: Int = 1

/// Global usage for PHP's static constants
public let IMG_CROP_BLACK: Int = 2

/// Global usage for PHP's static constants
public let IMG_CROP_WHITE: Int = 3

/// Global usage for PHP's static constants
public let IMG_CROP_SIDES: Int = 4

/// Global usage for PHP's static constants
public let IMG_CROP_THRESHOLD: Int = 5

/// Global usage for PHP's static constants
public let IMG_BELL: Int = 1

/// Global usage for PHP's static constants
public let IMG_BESSEL: Int = 2

/// Global usage for PHP's static constants
public let IMG_BILINEAR_FIXED: Int = 3

/// Global usage for PHP's static constants
public let IMG_BICUBIC: Int = 4

/// Global usage for PHP's static constants
public let IMG_BICUBIC_FIXED: Int = 5

/// Global usage for PHP's static constants
public let IMG_BLACKMAN: Int = 6

/// Global usage for PHP's static constants
public let IMG_BOX: Int = 7

/// Global usage for PHP's static constants
public let IMG_BSPLINE: Int = 8

/// Global usage for PHP's static constants
public let IMG_CATMULLROM: Int = 9

/// Global usage for PHP's static constants
public let IMG_GAUSSIAN: Int = 10

/// Global usage for PHP's static constants
public let IMG_GENERALIZED_CUBIC: Int = 11

/// Global usage for PHP's static constants
public let IMG_HERMITE: Int = 12

/// Global usage for PHP's static constants
public let IMG_HAMMING: Int = 13

/// Global usage for PHP's static constants
public let IMG_HANNING: Int = 14

/// Global usage for PHP's static constants
public let IMG_MITCHELL: Int = 15

/// Global usage for PHP's static constants
public let IMG_POWER: Int = 17

/// Global usage for PHP's static constants
public let IMG_QUADRATIC: Int = 18

/// Global usage for PHP's static constants
public let IMG_SINC: Int = 19

/// Global usage for PHP's static constants
public let IMG_NEAREST_NEIGHBOUR: Int = 16

/// Global usage for PHP's static constants
public let IMG_WEIGHTED4: Int = 21

/// Global usage for PHP's static constants
public let IMG_TRIANGLE: Int = 20

/// Global usage for PHP's static constants
public let IMG_AFFINE_TRANSLATE: Int = 0

/// Global usage for PHP's static constants
public let IMG_AFFINE_SCALE: Int = 1

/// Global usage for PHP's static constants
public let IMG_AFFINE_ROTATE: Int = 2

/// Global usage for PHP's static constants
public let IMG_AFFINE_SHEAR_HORIZONTAL: Int = 3

/// Global usage for PHP's static constants
public let IMG_AFFINE_SHEAR_VERTICAL: Int = 4

/// Global usage for PHP's static constants
public let GD_BUNDLED: Int = 1

/// Global usage for PHP's static constants
public let IMG_FILTER_NEGATE: Int = 0

/// Global usage for PHP's static constants
public let IMG_FILTER_GRAYSCALE: Int = 1

/// Global usage for PHP's static constants
public let IMG_FILTER_BRIGHTNESS: Int = 2

/// Global usage for PHP's static constants
public let IMG_FILTER_CONTRAST: Int = 3

/// Global usage for PHP's static constants
public let IMG_FILTER_COLORIZE: Int = 4

/// Global usage for PHP's static constants
public let IMG_FILTER_EDGEDETECT: Int = 5

/// Global usage for PHP's static constants
public let IMG_FILTER_GAUSSIAN_BLUR: Int = 7

/// Global usage for PHP's static constants
public let IMG_FILTER_SELECTIVE_BLUR: Int = 8

/// Global usage for PHP's static constants
public let IMG_FILTER_EMBOSS: Int = 6

/// Global usage for PHP's static constants
public let IMG_FILTER_MEAN_REMOVAL: Int = 9

/// Global usage for PHP's static constants
public let IMG_FILTER_SMOOTH: Int = 10

/// Global usage for PHP's static constants
public let IMG_FILTER_PIXELATE: Int = 11

/// Global usage for PHP's static constants
public let GD_VERSION: String = "2.0.35"

/// Global usage for PHP's static constants
public let GD_MAJOR_VERSION: Int = 2

/// Global usage for PHP's static constants
public let GD_MINOR_VERSION: Int = 0

/// Global usage for PHP's static constants
public let GD_RELEASE_VERSION: Int = 35

/// Global usage for PHP's static constants
public let GD_EXTRA_VERSION: String = ""

/// Global usage for PHP's static constants
public let PNG_NO_FILTER: Int = 0

/// Global usage for PHP's static constants
public let PNG_FILTER_NONE: Int = 8

/// Global usage for PHP's static constants
public let PNG_FILTER_SUB: Int = 16

/// Global usage for PHP's static constants
public let PNG_FILTER_UP: Int = 32

/// Global usage for PHP's static constants
public let PNG_FILTER_AVG: Int = 64

/// Global usage for PHP's static constants
public let PNG_FILTER_PAETH: Int = 128

/// Global usage for PHP's static constants
public let PNG_ALL_FILTERS: Int = 248

/// Global usage for PHP's static constants
public let ICONV_IMPL: String = "libiconv"

/// Global usage for PHP's static constants
public let ICONV_VERSION: Double = 1.11

/// Global usage for PHP's static constants
public let ICONV_MIME_DECODE_STRICT: Int = 1

/// Global usage for PHP's static constants
public let ICONV_MIME_DECODE_CONTINUE_ON_ERROR: Int = 2

/// Global usage for PHP's static constants
public let JSON_HEX_TAG: Int = 1

/// Global usage for PHP's static constants
public let JSON_HEX_AMP: Int = 2

/// Global usage for PHP's static constants
public let JSON_HEX_APOS: Int = 4

/// Global usage for PHP's static constants
public let JSON_HEX_QUOT: Int = 8

/// Global usage for PHP's static constants
public let JSON_FORCE_OBJECT: Int = 16

/// Global usage for PHP's static constants
public let JSON_NUMERIC_CHECK: Int = 32

/// Global usage for PHP's static constants
public let JSON_UNESCAPED_SLASHES: Int = 64

/// Global usage for PHP's static constants
public let JSON_PRETTY_PRINT: Int = 128

/// Global usage for PHP's static constants
public let JSON_UNESCAPED_UNICODE: Int = 256

/// Global usage for PHP's static constants
public let JSON_PARTIAL_OUTPUT_ON_ERROR: Int = 512

/// Global usage for PHP's static constants
public let JSON_PRESERVE_ZERO_FRACTION: Int = 1024

/// Global usage for PHP's static constants
public let JSON_OBJECT_AS_ARRAY: Int = 1

/// Global usage for PHP's static constants
public let JSON_BIGINT_AS_STRING: Int = 2

/// Global usage for PHP's static constants
public let JSON_ERROR_NONE: Int = 0

/// Global usage for PHP's static constants
public let JSON_ERROR_DEPTH: Int = 1

/// Global usage for PHP's static constants
public let JSON_ERROR_STATE_MISMATCH: Int = 2

/// Global usage for PHP's static constants
public let JSON_ERROR_CTRL_CHAR: Int = 3

/// Global usage for PHP's static constants
public let JSON_ERROR_SYNTAX: Int = 4

/// Global usage for PHP's static constants
public let JSON_ERROR_UTF8: Int = 5

/// Global usage for PHP's static constants
public let JSON_ERROR_RECURSION: Int = 6

/// Global usage for PHP's static constants
public let JSON_ERROR_INF_OR_NAN: Int = 7

/// Global usage for PHP's static constants
public let JSON_ERROR_UNSUPPORTED_TYPE: Int = 8

/// Global usage for PHP's static constants
public let JSON_ERROR_INVALID_PROPERTY_NAME: Int = 9

/// Global usage for PHP's static constants
public let JSON_ERROR_UTF16: Int = 10

/// Global usage for PHP's static constants
public let LDAP_DEREF_NEVER: Int = 0

/// Global usage for PHP's static constants
public let LDAP_DEREF_SEARCHING: Int = 1

/// Global usage for PHP's static constants
public let LDAP_DEREF_FINDING: Int = 2

/// Global usage for PHP's static constants
public let LDAP_DEREF_ALWAYS: Int = 3

/// Global usage for PHP's static constants
public let LDAP_MODIFY_BATCH_ADD: Int = 1

/// Global usage for PHP's static constants
public let LDAP_MODIFY_BATCH_REMOVE: Int = 2

/// Global usage for PHP's static constants
public let LDAP_MODIFY_BATCH_REMOVE_ALL: Int = 18

/// Global usage for PHP's static constants
public let LDAP_MODIFY_BATCH_REPLACE: Int = 3

/// Global usage for PHP's static constants
public let LDAP_MODIFY_BATCH_ATTRIB: String = "attrib"

/// Global usage for PHP's static constants
public let LDAP_MODIFY_BATCH_MODTYPE: String = "modtype"

/// Global usage for PHP's static constants
public let LDAP_MODIFY_BATCH_VALUES: String = "values"

/// Global usage for PHP's static constants
public let LDAP_OPT_DEREF: Int = 2

/// Global usage for PHP's static constants
public let LDAP_OPT_SIZELIMIT: Int = 3

/// Global usage for PHP's static constants
public let LDAP_OPT_TIMELIMIT: Int = 4

/// Global usage for PHP's static constants
public let LDAP_OPT_NETWORK_TIMEOUT: Int = 20485

/// Global usage for PHP's static constants
public let LDAP_OPT_TIMEOUT: Int = 20482

/// Global usage for PHP's static constants
public let LDAP_OPT_PROTOCOL_VERSION: Int = 17

/// Global usage for PHP's static constants
public let LDAP_OPT_ERROR_NUMBER: Int = 49

/// Global usage for PHP's static constants
public let LDAP_OPT_REFERRALS: Int = 8

/// Global usage for PHP's static constants
public let LDAP_OPT_RESTART: Int = 9

/// Global usage for PHP's static constants
public let LDAP_OPT_HOST_NAME: Int = 48

/// Global usage for PHP's static constants
public let LDAP_OPT_ERROR_STRING: Int = 50

/// Global usage for PHP's static constants
public let LDAP_OPT_MATCHED_DN: Int = 51

/// Global usage for PHP's static constants
public let LDAP_OPT_SERVER_CONTROLS: Int = 18

/// Global usage for PHP's static constants
public let LDAP_OPT_CLIENT_CONTROLS: Int = 19

/// Global usage for PHP's static constants
public let LDAP_OPT_DEBUG_LEVEL: Int = 20481

/// Global usage for PHP's static constants
public let LDAP_OPT_DIAGNOSTIC_MESSAGE: Int = 50

/// Global usage for PHP's static constants
public let LDAP_OPT_X_SASL_MECH: Int = 24832

/// Global usage for PHP's static constants
public let LDAP_OPT_X_SASL_REALM: Int = 24833

/// Global usage for PHP's static constants
public let LDAP_OPT_X_SASL_AUTHCID: Int = 24834

/// Global usage for PHP's static constants
public let LDAP_OPT_X_SASL_AUTHZID: Int = 24835

/// Global usage for PHP's static constants
public let LDAP_ESCAPE_FILTER: Int = 1

/// Global usage for PHP's static constants
public let LDAP_ESCAPE_DN: Int = 2

/// Global usage for PHP's static constants
public let MB_OVERLOAD_MAIL: Int = 1

/// Global usage for PHP's static constants
public let MB_OVERLOAD_STRING: Int = 2

/// Global usage for PHP's static constants
public let MB_OVERLOAD_REGEX: Int = 4

/// Global usage for PHP's static constants
public let MB_CASE_UPPER: Int = 0

/// Global usage for PHP's static constants
public let MB_CASE_LOWER: Int = 1

/// Global usage for PHP's static constants
public let MB_CASE_TITLE: Int = 2

/// Global usage for PHP's static constants
public let PHP_SESSION_DISABLED: Int = 0

/// Global usage for PHP's static constants
public let PHP_SESSION_NONE: Int = 1

/// Global usage for PHP's static constants
public let PHP_SESSION_ACTIVE: Int = 2

/// Global usage for PHP's static constants
public let CONNECTION_ABORTED: Int = 1

/// Global usage for PHP's static constants
public let CONNECTION_NORMAL: Int = 0

/// Global usage for PHP's static constants
public let CONNECTION_TIMEOUT: Int = 2

/// Global usage for PHP's static constants
public let INI_USER: Int = 1

/// Global usage for PHP's static constants
public let INI_PERDIR: Int = 2

/// Global usage for PHP's static constants
public let INI_SYSTEM: Int = 4

/// Global usage for PHP's static constants
public let INI_ALL: Int = 7

/// Global usage for PHP's static constants
public let INI_SCANNER_NORMAL: Int = 0

/// Global usage for PHP's static constants
public let INI_SCANNER_RAW: Int = 1

/// Global usage for PHP's static constants
public let INI_SCANNER_TYPED: Int = 2

/// Global usage for PHP's static constants
public let PHP_URL_SCHEME: Int = 0

/// Global usage for PHP's static constants
public let PHP_URL_HOST: Int = 1

/// Global usage for PHP's static constants
public let PHP_URL_PORT: Int = 2

/// Global usage for PHP's static constants
public let PHP_URL_USER: Int = 3

/// Global usage for PHP's static constants
public let PHP_URL_PASS: Int = 4

/// Global usage for PHP's static constants
public let PHP_URL_PATH: Int = 5

/// Global usage for PHP's static constants
public let PHP_URL_QUERY: Int = 6

/// Global usage for PHP's static constants
public let PHP_URL_FRAGMENT: Int = 7

/// Global usage for PHP's static constants
public let PHP_QUERY_RFC1738: Int = 1

/// Global usage for PHP's static constants
public let PHP_QUERY_RFC3986: Int = 2

/// Global usage for PHP's static constants
public let M_E: Double = 2.718281828459

/// Global usage for PHP's static constants
public let M_LOG2E: Double = 1.442695040889

/// Global usage for PHP's static constants
public let M_LOG10E: Double = 0.43429448190325

/// Global usage for PHP's static constants
public let M_LN2: Double = 0.69314718055995

/// Global usage for PHP's static constants
public let M_LN10: Double = 2.302585092994

/// Global usage for PHP's static constants
public let M_PI: Double = 3.1415926535898

/// Global usage for PHP's static constants
public let M_PI_2: Double = 1.5707963267949

/// Global usage for PHP's static constants
public let M_PI_4: Double = 0.78539816339745

/// Global usage for PHP's static constants
public let M_1_PI: Double = 0.31830988618379

/// Global usage for PHP's static constants
public let M_2_PI: Double = 0.63661977236758

/// Global usage for PHP's static constants
public let M_SQRTPI: Double = 1.7724538509055

/// Global usage for PHP's static constants
public let M_2_SQRTPI: Double = 1.1283791670955

/// Global usage for PHP's static constants
public let M_LNPI: Double = 1.1447298858494

/// Global usage for PHP's static constants
public let M_EULER: Double = 0.57721566490153

/// Global usage for PHP's static constants
public let M_SQRT2: Double = 1.4142135623731

/// Global usage for PHP's static constants
public let M_SQRT1_2: Double = 0.70710678118655

/// Global usage for PHP's static constants
public let M_SQRT3: Double = 1.7320508075689

/// Global usage for PHP's static constants
public let INF: String = "INF"

/// Global usage for PHP's static constants
public let NAN: String = "NAN"

/// Global usage for PHP's static constants
public let PHP_ROUND_HALF_UP: Int = 1

/// Global usage for PHP's static constants
public let PHP_ROUND_HALF_DOWN: Int = 2

/// Global usage for PHP's static constants
public let PHP_ROUND_HALF_EVEN: Int = 3

/// Global usage for PHP's static constants
public let PHP_ROUND_HALF_ODD: Int = 4

/// Global usage for PHP's static constants
public let INFO_GENERAL: Int = 1

/// Global usage for PHP's static constants
public let INFO_CREDITS: Int = 2

/// Global usage for PHP's static constants
public let INFO_CONFIGURATION: Int = 4

/// Global usage for PHP's static constants
public let INFO_MODULES: Int = 8

/// Global usage for PHP's static constants
public let INFO_ENVIRONMENT: Int = 16

/// Global usage for PHP's static constants
public let INFO_VARIABLES: Int = 32

/// Global usage for PHP's static constants
public let INFO_LICENSE: Int = 64

/// Global usage for PHP's static constants
public let INFO_ALL: Int64 = 4294967295

/// Global usage for PHP's static constants
public let CREDITS_GROUP: Int = 1

/// Global usage for PHP's static constants
public let CREDITS_GENERAL: Int = 2

/// Global usage for PHP's static constants
public let CREDITS_SAPI: Int = 4

/// Global usage for PHP's static constants
public let CREDITS_MODULES: Int = 8

/// Global usage for PHP's static constants
public let CREDITS_DOCS: Int = 16

/// Global usage for PHP's static constants
public let CREDITS_FULLPAGE: Int = 32

/// Global usage for PHP's static constants
public let CREDITS_QA: Int = 64

/// Global usage for PHP's static constants
public let CREDITS_ALL: Int64 = 4294967295

/// Global usage for PHP's static constants
public let HTML_SPECIALCHARS: Int = 0

/// Global usage for PHP's static constants
public let HTML_ENTITIES: Int = 1

/// Global usage for PHP's static constants
public let ENT_COMPAT: Int = 2

/// Global usage for PHP's static constants
public let ENT_QUOTES: Int = 3

/// Global usage for PHP's static constants
public let ENT_NOQUOTES: Int = 0

/// Global usage for PHP's static constants
public let ENT_IGNORE: Int = 4

/// Global usage for PHP's static constants
public let ENT_SUBSTITUTE: Int = 8

/// Global usage for PHP's static constants
public let ENT_DISALLOWED: Int = 128

/// Global usage for PHP's static constants
public let ENT_HTML401: Int = 0

/// Global usage for PHP's static constants
public let ENT_XML1: Int = 16

/// Global usage for PHP's static constants
public let ENT_XHTML: Int = 32

/// Global usage for PHP's static constants
public let ENT_HTML5: Int = 48

/// Global usage for PHP's static constants
public let STR_PAD_LEFT: Int = 0

/// Global usage for PHP's static constants
public let STR_PAD_RIGHT: Int = 1

/// Global usage for PHP's static constants
public let STR_PAD_BOTH: Int = 2

/// Global usage for PHP's static constants
public let PATHINFO_DIRNAME: Int = 1

/// Global usage for PHP's static constants
public let PATHINFO_BASENAME: Int = 2

/// Global usage for PHP's static constants
public let PATHINFO_EXTENSION: Int = 4

/// Global usage for PHP's static constants
public let PATHINFO_FILENAME: Int = 8

/// Global usage for PHP's static constants
public let CHAR_MAX: Int = 127

/// Global usage for PHP's static constants
public let LC_CTYPE: Int = 2

/// Global usage for PHP's static constants
public let LC_NUMERIC: Int = 4

/// Global usage for PHP's static constants
public let LC_TIME: Int = 5

/// Global usage for PHP's static constants
public let LC_COLLATE: Int = 1

/// Global usage for PHP's static constants
public let LC_MONETARY: Int = 3

/// Global usage for PHP's static constants
public let LC_ALL: Int = 0

/// Global usage for PHP's static constants
public let LC_MESSAGES: Int = 6

/// Global usage for PHP's static constants
public let SEEK_SET: Int = 0

/// Global usage for PHP's static constants
public let SEEK_CUR: Int = 1

/// Global usage for PHP's static constants
public let SEEK_END: Int = 2

/// Global usage for PHP's static constants
public let LOCK_SH: Int = 1

/// Global usage for PHP's static constants
public let LOCK_EX: Int = 2

/// Global usage for PHP's static constants
public let LOCK_UN: Int = 3

/// Global usage for PHP's static constants
public let LOCK_NB: Int = 4

/// Global usage for PHP's static constants
public let STREAM_NOTIFY_CONNECT: Int = 2

/// Global usage for PHP's static constants
public let STREAM_NOTIFY_AUTH_REQUIRED: Int = 3

/// Global usage for PHP's static constants
public let STREAM_NOTIFY_AUTH_RESULT: Int = 10

/// Global usage for PHP's static constants
public let STREAM_NOTIFY_MIME_TYPE_IS: Int = 4

/// Global usage for PHP's static constants
public let STREAM_NOTIFY_FILE_SIZE_IS: Int = 5

/// Global usage for PHP's static constants
public let STREAM_NOTIFY_REDIRECTED: Int = 6

/// Global usage for PHP's static constants
public let STREAM_NOTIFY_PROGRESS: Int = 7

/// Global usage for PHP's static constants
public let STREAM_NOTIFY_FAILURE: Int = 9

/// Global usage for PHP's static constants
public let STREAM_NOTIFY_COMPLETED: Int = 8

/// Global usage for PHP's static constants
public let STREAM_NOTIFY_RESOLVE: Int = 1

/// Global usage for PHP's static constants
public let STREAM_NOTIFY_SEVERITY_INFO: Int = 0

/// Global usage for PHP's static constants
public let STREAM_NOTIFY_SEVERITY_WARN: Int = 1

/// Global usage for PHP's static constants
public let STREAM_NOTIFY_SEVERITY_ERR: Int = 2

/// Global usage for PHP's static constants
public let STREAM_FILTER_READ: Int = 1

/// Global usage for PHP's static constants
public let STREAM_FILTER_WRITE: Int = 2

/// Global usage for PHP's static constants
public let STREAM_FILTER_ALL: Int = 3

/// Global usage for PHP's static constants
public let STREAM_CLIENT_PERSISTENT: Int = 1

/// Global usage for PHP's static constants
public let STREAM_CLIENT_ASYNC_CONNECT: Int = 2

/// Global usage for PHP's static constants
public let STREAM_CLIENT_CONNECT: Int = 4

/// Global usage for PHP's static constants
public let STREAM_CRYPTO_METHOD_ANY_CLIENT: Int = 63

/// Global usage for PHP's static constants
public let STREAM_CRYPTO_METHOD_SSLv2_CLIENT: Int = 3

/// Global usage for PHP's static constants
public let STREAM_CRYPTO_METHOD_SSLv3_CLIENT: Int = 5

/// Global usage for PHP's static constants
public let STREAM_CRYPTO_METHOD_SSLv23_CLIENT: Int = 57

/// Global usage for PHP's static constants
public let STREAM_CRYPTO_METHOD_TLS_CLIENT: Int = 9

/// Global usage for PHP's static constants
public let STREAM_CRYPTO_METHOD_TLSv1_0_CLIENT: Int = 9

/// Global usage for PHP's static constants
public let STREAM_CRYPTO_METHOD_TLSv1_1_CLIENT: Int = 17

/// Global usage for PHP's static constants
public let STREAM_CRYPTO_METHOD_TLSv1_2_CLIENT: Int = 33

/// Global usage for PHP's static constants
public let STREAM_CRYPTO_METHOD_ANY_SERVER: Int = 62

/// Global usage for PHP's static constants
public let STREAM_CRYPTO_METHOD_SSLv2_SERVER: Int = 2

/// Global usage for PHP's static constants
public let STREAM_CRYPTO_METHOD_SSLv3_SERVER: Int = 4

/// Global usage for PHP's static constants
public let STREAM_CRYPTO_METHOD_SSLv23_SERVER: Int = 56

/// Global usage for PHP's static constants
public let STREAM_CRYPTO_METHOD_TLS_SERVER: Int = 8

/// Global usage for PHP's static constants
public let STREAM_CRYPTO_METHOD_TLSv1_0_SERVER: Int = 8

/// Global usage for PHP's static constants
public let STREAM_CRYPTO_METHOD_TLSv1_1_SERVER: Int = 16

/// Global usage for PHP's static constants
public let STREAM_CRYPTO_METHOD_TLSv1_2_SERVER: Int = 32

/// Global usage for PHP's static constants
public let STREAM_SHUT_RD: Int = 0

/// Global usage for PHP's static constants
public let STREAM_SHUT_WR: Int = 1

/// Global usage for PHP's static constants
public let STREAM_SHUT_RDWR: Int = 2

/// Global usage for PHP's static constants
public let STREAM_PF_INET: Int = 2

/// Global usage for PHP's static constants
public let STREAM_PF_INET6: Int = 30

/// Global usage for PHP's static constants
public let STREAM_PF_UNIX: Int = 1

/// Global usage for PHP's static constants
public let STREAM_IPPROTO_IP: Int = 0

/// Global usage for PHP's static constants
public let STREAM_IPPROTO_TCP: Int = 6

/// Global usage for PHP's static constants
public let STREAM_IPPROTO_UDP: Int = 17

/// Global usage for PHP's static constants
public let STREAM_IPPROTO_ICMP: Int = 1

/// Global usage for PHP's static constants
public let STREAM_IPPROTO_RAW: Int = 255

/// Global usage for PHP's static constants
public let STREAM_SOCK_STREAM: Int = 1

/// Global usage for PHP's static constants
public let STREAM_SOCK_DGRAM: Int = 2

/// Global usage for PHP's static constants
public let STREAM_SOCK_RAW: Int = 3

/// Global usage for PHP's static constants
public let STREAM_SOCK_SEQPACKET: Int = 5

/// Global usage for PHP's static constants
public let STREAM_SOCK_RDM: Int = 4

/// Global usage for PHP's static constants
public let STREAM_PEEK: Int = 2

/// Global usage for PHP's static constants
public let STREAM_OOB: Int = 1

/// Global usage for PHP's static constants
public let STREAM_SERVER_BIND: Int = 4

/// Global usage for PHP's static constants
public let STREAM_SERVER_LISTEN: Int = 8

/// Global usage for PHP's static constants
public let FILE_USE_INCLUDE_PATH: Int = 1

/// Global usage for PHP's static constants
public let FILE_IGNORE_NEW_LINES: Int = 2

/// Global usage for PHP's static constants
public let FILE_SKIP_EMPTY_LINES: Int = 4

/// Global usage for PHP's static constants
public let FILE_APPEND: Int = 8

/// Global usage for PHP's static constants
public let FILE_NO_DEFAULT_CONTEXT: Int = 16

/// Global usage for PHP's static constants
public let FILE_TEXT: Int = 0

/// Global usage for PHP's static constants
public let FILE_BINARY: Int = 0

/// Global usage for PHP's static constants
public let FNM_NOESCAPE: Int = 1

/// Global usage for PHP's static constants
public let FNM_PATHNAME: Int = 2

/// Global usage for PHP's static constants
public let FNM_PERIOD: Int = 4

/// Global usage for PHP's static constants
public let FNM_CASEFOLD: Int = 16

/// Global usage for PHP's static constants
public let PSFS_PASS_ON: Int = 2

/// Global usage for PHP's static constants
public let PSFS_FEED_ME: Int = 1

/// Global usage for PHP's static constants
public let PSFS_ERR_FATAL: Int = 0

/// Global usage for PHP's static constants
public let PSFS_FLAG_NORMAL: Int = 0

/// Global usage for PHP's static constants
public let PSFS_FLAG_FLUSH_INC: Int = 1

/// Global usage for PHP's static constants
public let PSFS_FLAG_FLUSH_CLOSE: Int = 2

/// Global usage for PHP's static constants
public let PASSWORD_DEFAULT: Int = 1

/// Global usage for PHP's static constants
public let PASSWORD_BCRYPT: Int = 1

/// Global usage for PHP's static constants
public let PASSWORD_BCRYPT_DEFAULT_COST: Int = 10

/// Global usage for PHP's static constants
public let ABDAY_1: Int = 14

/// Global usage for PHP's static constants
public let ABDAY_2: Int = 15

/// Global usage for PHP's static constants
public let ABDAY_3: Int = 16

/// Global usage for PHP's static constants
public let ABDAY_4: Int = 17

/// Global usage for PHP's static constants
public let ABDAY_5: Int = 18

/// Global usage for PHP's static constants
public let ABDAY_6: Int = 19

/// Global usage for PHP's static constants
public let ABDAY_7: Int = 20

/// Global usage for PHP's static constants
public let DAY_1: Int = 7

/// Global usage for PHP's static constants
public let DAY_2: Int = 8

/// Global usage for PHP's static constants
public let DAY_3: Int = 9

/// Global usage for PHP's static constants
public let DAY_4: Int = 10

/// Global usage for PHP's static constants
public let DAY_5: Int = 11

/// Global usage for PHP's static constants
public let DAY_6: Int = 12

/// Global usage for PHP's static constants
public let DAY_7: Int = 13

/// Global usage for PHP's static constants
public let ABMON_1: Int = 33

/// Global usage for PHP's static constants
public let ABMON_2: Int = 34

/// Global usage for PHP's static constants
public let ABMON_3: Int = 35

/// Global usage for PHP's static constants
public let ABMON_4: Int = 36

/// Global usage for PHP's static constants
public let ABMON_5: Int = 37

/// Global usage for PHP's static constants
public let ABMON_6: Int = 38

/// Global usage for PHP's static constants
public let ABMON_7: Int = 39

/// Global usage for PHP's static constants
public let ABMON_8: Int = 40

/// Global usage for PHP's static constants
public let ABMON_9: Int = 41

/// Global usage for PHP's static constants
public let ABMON_10: Int = 42

/// Global usage for PHP's static constants
public let ABMON_11: Int = 43

/// Global usage for PHP's static constants
public let ABMON_12: Int = 44

/// Global usage for PHP's static constants
public let MON_1: Int = 21

/// Global usage for PHP's static constants
public let MON_2: Int = 22

/// Global usage for PHP's static constants
public let MON_3: Int = 23

/// Global usage for PHP's static constants
public let MON_4: Int = 24

/// Global usage for PHP's static constants
public let MON_5: Int = 25

/// Global usage for PHP's static constants
public let MON_6: Int = 26

/// Global usage for PHP's static constants
public let MON_7: Int = 27

/// Global usage for PHP's static constants
public let MON_8: Int = 28

/// Global usage for PHP's static constants
public let MON_9: Int = 29

/// Global usage for PHP's static constants
public let MON_10: Int = 30

/// Global usage for PHP's static constants
public let MON_11: Int = 31

/// Global usage for PHP's static constants
public let MON_12: Int = 32

/// Global usage for PHP's static constants
public let AM_STR: Int = 5

/// Global usage for PHP's static constants
public let PM_STR: Int = 6

/// Global usage for PHP's static constants
public let D_T_FMT: Int = 1

/// Global usage for PHP's static constants
public let D_FMT: Int = 2

/// Global usage for PHP's static constants
public let T_FMT: Int = 3

/// Global usage for PHP's static constants
public let T_FMT_AMPM: Int = 4

/// Global usage for PHP's static constants
public let ERA: Int = 45

/// Global usage for PHP's static constants
public let ERA_D_T_FMT: Int = 47

/// Global usage for PHP's static constants
public let ERA_D_FMT: Int = 46

/// Global usage for PHP's static constants
public let ERA_T_FMT: Int = 48

/// Global usage for PHP's static constants
public let ALT_DIGITS: Int = 49

/// Global usage for PHP's static constants
public let CRNCYSTR: Int = 56

/// Global usage for PHP's static constants
public let RADIXCHAR: Int = 50

/// Global usage for PHP's static constants
public let THOUSEP: Int = 51

/// Global usage for PHP's static constants
public let YESEXPR: Int = 52

/// Global usage for PHP's static constants
public let NOEXPR: Int = 53

/// Global usage for PHP's static constants
public let YESSTR: Int = 54

/// Global usage for PHP's static constants
public let NOSTR: Int = 55

/// Global usage for PHP's static constants
public let CODESET: Int = 0

/// Global usage for PHP's static constants
public let CRYPT_SALT_LENGTH: Int = 123

/// Global usage for PHP's static constants
public let CRYPT_STD_DES: Int = 1

/// Global usage for PHP's static constants
public let CRYPT_EXT_DES: Int = 1

/// Global usage for PHP's static constants
public let CRYPT_MD5: Int = 1

/// Global usage for PHP's static constants
public let CRYPT_BLOWFISH: Int = 1

/// Global usage for PHP's static constants
public let CRYPT_SHA256: Int = 1

/// Global usage for PHP's static constants
public let CRYPT_SHA512: Int = 1

/// Global usage for PHP's static constants
public let DIRECTORY_SEPARATOR: String = "/"

/// Global usage for PHP's static constants
public let PATH_SEPARATOR: String = ":"

/// Global usage for PHP's static constants
public let SCANDIR_SORT_ASCENDING: Int = 0

/// Global usage for PHP's static constants
public let SCANDIR_SORT_DESCENDING: Int = 1

/// Global usage for PHP's static constants
public let SCANDIR_SORT_NONE: Int = 2

/// Global usage for PHP's static constants
public let GLOB_BRACE: Int = 128

/// Global usage for PHP's static constants
public let GLOB_MARK: Int = 8

/// Global usage for PHP's static constants
public let GLOB_NOSORT: Int = 32

/// Global usage for PHP's static constants
public let GLOB_NOCHECK: Int = 16

/// Global usage for PHP's static constants
public let GLOB_NOESCAPE: Int = 8192

/// Global usage for PHP's static constants
public let GLOB_ERR: Int = 4

/// Global usage for PHP's static constants
public let GLOB_ONLYDIR: Int = 1073741824

/// Global usage for PHP's static constants
public let GLOB_AVAILABLE_FLAGS: Int = 1073750204

/// Global usage for PHP's static constants
public let LOG_EMERG: Int = 0

/// Global usage for PHP's static constants
public let LOG_ALERT: Int = 1

/// Global usage for PHP's static constants
public let LOG_CRIT: Int = 2

/// Global usage for PHP's static constants
public let LOG_ERR: Int = 3

/// Global usage for PHP's static constants
public let LOG_WARNING: Int = 4

/// Global usage for PHP's static constants
public let LOG_NOTICE: Int = 5

/// Global usage for PHP's static constants
public let LOG_INFO: Int = 6

/// Global usage for PHP's static constants
public let LOG_DEBUG: Int = 7

/// Global usage for PHP's static constants
public let LOG_KERN: Int = 0

/// Global usage for PHP's static constants
public let LOG_USER: Int = 8

/// Global usage for PHP's static constants
public let LOG_MAIL: Int = 16

/// Global usage for PHP's static constants
public let LOG_DAEMON: Int = 24

/// Global usage for PHP's static constants
public let LOG_AUTH: Int = 32

/// Global usage for PHP's static constants
public let LOG_SYSLOG: Int = 40

/// Global usage for PHP's static constants
public let LOG_LPR: Int = 48

/// Global usage for PHP's static constants
public let LOG_NEWS: Int = 56

/// Global usage for PHP's static constants
public let LOG_UUCP: Int = 64

/// Global usage for PHP's static constants
public let LOG_CRON: Int = 72

/// Global usage for PHP's static constants
public let LOG_AUTHPRIV: Int = 80

/// Global usage for PHP's static constants
public let LOG_LOCAL0: Int = 128

/// Global usage for PHP's static constants
public let LOG_LOCAL1: Int = 136

/// Global usage for PHP's static constants
public let LOG_LOCAL2: Int = 144

/// Global usage for PHP's static constants
public let LOG_LOCAL3: Int = 152

/// Global usage for PHP's static constants
public let LOG_LOCAL4: Int = 160

/// Global usage for PHP's static constants
public let LOG_LOCAL5: Int = 168

/// Global usage for PHP's static constants
public let LOG_LOCAL6: Int = 176

/// Global usage for PHP's static constants
public let LOG_LOCAL7: Int = 184

/// Global usage for PHP's static constants
public let LOG_PID: Int = 1

/// Global usage for PHP's static constants
public let LOG_CONS: Int = 2

/// Global usage for PHP's static constants
public let LOG_ODELAY: Int = 4

/// Global usage for PHP's static constants
public let LOG_NDELAY: Int = 8

/// Global usage for PHP's static constants
public let LOG_NOWAIT: Int = 16

/// Global usage for PHP's static constants
public let LOG_PERROR: Int = 32

/// Global usage for PHP's static constants
public let EXTR_OVERWRITE: Int = 0

/// Global usage for PHP's static constants
public let EXTR_SKIP: Int = 1

/// Global usage for PHP's static constants
public let EXTR_PREFIX_SAME: Int = 2

/// Global usage for PHP's static constants
public let EXTR_PREFIX_ALL: Int = 3

/// Global usage for PHP's static constants
public let EXTR_PREFIX_INVALID: Int = 4

/// Global usage for PHP's static constants
public let EXTR_PREFIX_IF_EXISTS: Int = 5

/// Global usage for PHP's static constants
public let EXTR_IF_EXISTS: Int = 6

/// Global usage for PHP's static constants
public let EXTR_REFS: Int = 256

/// Global usage for PHP's static constants
public let SORT_ASC: Int = 4

/// Global usage for PHP's static constants
public let SORT_DESC: Int = 3

/// Global usage for PHP's static constants
public let SORT_REGULAR: Int = 0

/// Global usage for PHP's static constants
public let SORT_NUMERIC: Int = 1

/// Global usage for PHP's static constants
public let SORT_STRING: Int = 2

/// Global usage for PHP's static constants
public let SORT_LOCALE_STRING: Int = 5

/// Global usage for PHP's static constants
public let SORT_NATURAL: Int = 6

/// Global usage for PHP's static constants
public let SORT_FLAG_CASE: Int = 8

/// Global usage for PHP's static constants
public let CASE_LOWER: Int = 0

/// Global usage for PHP's static constants
public let CASE_UPPER: Int = 1

/// Global usage for PHP's static constants
public let COUNT_NORMAL: Int = 0

/// Global usage for PHP's static constants
public let COUNT_RECURSIVE: Int = 1

/// Global usage for PHP's static constants
public let ARRAY_FILTER_USE_BOTH: Int = 1

/// Global usage for PHP's static constants
public let ARRAY_FILTER_USE_KEY: Int = 2

/// Global usage for PHP's static constants
public let ASSERT_ACTIVE: Int = 1

/// Global usage for PHP's static constants
public let ASSERT_CALLBACK: Int = 2

/// Global usage for PHP's static constants
public let ASSERT_BAIL: Int = 3

/// Global usage for PHP's static constants
public let ASSERT_WARNING: Int = 4

/// Global usage for PHP's static constants
public let ASSERT_QUIET_EVAL: Int = 5

/// Global usage for PHP's static constants
public let ASSERT_EXCEPTION: Int = 6

/// Global usage for PHP's static constants
public let STREAM_USE_PATH: Int = 1

/// Global usage for PHP's static constants
public let STREAM_IGNORE_URL: Int = 2

/// Global usage for PHP's static constants
public let STREAM_REPORT_ERRORS: Int = 8

/// Global usage for PHP's static constants
public let STREAM_MUST_SEEK: Int = 16

/// Global usage for PHP's static constants
public let STREAM_URL_STAT_LINK: Int = 1

/// Global usage for PHP's static constants
public let STREAM_URL_STAT_QUIET: Int = 2

/// Global usage for PHP's static constants
public let STREAM_MKDIR_RECURSIVE: Int = 1

/// Global usage for PHP's static constants
public let STREAM_IS_URL: Int = 1

/// Global usage for PHP's static constants
public let STREAM_OPTION_BLOCKING: Int = 1

/// Global usage for PHP's static constants
public let STREAM_OPTION_READ_TIMEOUT: Int = 4

/// Global usage for PHP's static constants
public let STREAM_OPTION_READ_BUFFER: Int = 2

/// Global usage for PHP's static constants
public let STREAM_OPTION_WRITE_BUFFER: Int = 3

/// Global usage for PHP's static constants
public let STREAM_BUFFER_NONE: Int = 0

/// Global usage for PHP's static constants
public let STREAM_BUFFER_LINE: Int = 1

/// Global usage for PHP's static constants
public let STREAM_BUFFER_FULL: Int = 2

/// Global usage for PHP's static constants
public let STREAM_CAST_AS_STREAM: Int = 0

/// Global usage for PHP's static constants
public let STREAM_CAST_FOR_SELECT: Int = 3

/// Global usage for PHP's static constants
public let STREAM_META_TOUCH: Int = 1

/// Global usage for PHP's static constants
public let STREAM_META_OWNER: Int = 3

/// Global usage for PHP's static constants
public let STREAM_META_OWNER_NAME: Int = 2

/// Global usage for PHP's static constants
public let STREAM_META_GROUP: Int = 5

/// Global usage for PHP's static constants
public let STREAM_META_GROUP_NAME: Int = 4

/// Global usage for PHP's static constants
public let STREAM_META_ACCESS: Int = 6

/// Global usage for PHP's static constants
public let IMAGETYPE_GIF: Int = 1

/// Global usage for PHP's static constants
public let IMAGETYPE_JPEG: Int = 2

/// Global usage for PHP's static constants
public let IMAGETYPE_PNG: Int = 3

/// Global usage for PHP's static constants
public let IMAGETYPE_SWF: Int = 4

/// Global usage for PHP's static constants
public let IMAGETYPE_PSD: Int = 5

/// Global usage for PHP's static constants
public let IMAGETYPE_BMP: Int = 6

/// Global usage for PHP's static constants
public let IMAGETYPE_TIFF_II: Int = 7

/// Global usage for PHP's static constants
public let IMAGETYPE_TIFF_MM: Int = 8

/// Global usage for PHP's static constants
public let IMAGETYPE_JPC: Int = 9

/// Global usage for PHP's static constants
public let IMAGETYPE_JP2: Int = 10

/// Global usage for PHP's static constants
public let IMAGETYPE_JPX: Int = 11

/// Global usage for PHP's static constants
public let IMAGETYPE_JB2: Int = 12

/// Global usage for PHP's static constants
public let IMAGETYPE_SWC: Int = 13

/// Global usage for PHP's static constants
public let IMAGETYPE_IFF: Int = 14

/// Global usage for PHP's static constants
public let IMAGETYPE_WBMP: Int = 15

/// Global usage for PHP's static constants
public let IMAGETYPE_JPEG2000: Int = 9

/// Global usage for PHP's static constants
public let IMAGETYPE_XBM: Int = 16

/// Global usage for PHP's static constants
public let IMAGETYPE_ICO: Int = 17

/// Global usage for PHP's static constants
public let IMAGETYPE_UNKNOWN: Int = 0

/// Global usage for PHP's static constants
public let IMAGETYPE_COUNT: Int = 18

/// Global usage for PHP's static constants
public let DNS_A: Int = 1

/// Global usage for PHP's static constants
public let DNS_NS: Int = 2

/// Global usage for PHP's static constants
public let DNS_CNAME: Int = 16

/// Global usage for PHP's static constants
public let DNS_SOA: Int = 32

/// Global usage for PHP's static constants
public let DNS_PTR: Int = 2048

/// Global usage for PHP's static constants
public let DNS_HINFO: Int = 4096

/// Global usage for PHP's static constants
public let DNS_MX: Int = 16384

/// Global usage for PHP's static constants
public let DNS_TXT: Int = 32768

/// Global usage for PHP's static constants
public let DNS_SRV: Int = 33554432

/// Global usage for PHP's static constants
public let DNS_NAPTR: Int = 67108864

/// Global usage for PHP's static constants
public let DNS_AAAA: Int = 134217728

/// Global usage for PHP's static constants
public let DNS_A6: Int = 16777216

/// Global usage for PHP's static constants
public let DNS_ANY: Int = 268435456

/// Global usage for PHP's static constants
public let DNS_ALL: Int = 251713587

/// Global usage for PHP's static constants
public let ODBC_TYPE: String = "unixODBC"

/// Global usage for PHP's static constants
public let ODBC_BINMODE_PASSTHRU: Int = 0

/// Global usage for PHP's static constants
public let ODBC_BINMODE_RETURN: Int = 1

/// Global usage for PHP's static constants
public let ODBC_BINMODE_CONVERT: Int = 2

/// Global usage for PHP's static constants
public let SQL_ODBC_CURSORS: Int = 110

/// Global usage for PHP's static constants
public let SQL_CUR_USE_DRIVER: Int = 2

/// Global usage for PHP's static constants
public let SQL_CUR_USE_IF_NEEDED: Int = 0

/// Global usage for PHP's static constants
public let SQL_CUR_USE_ODBC: Int = 1

/// Global usage for PHP's static constants
public let SQL_CONCURRENCY: Int = 7

/// Global usage for PHP's static constants
public let SQL_CONCUR_READ_ONLY: Int = 1

/// Global usage for PHP's static constants
public let SQL_CONCUR_LOCK: Int = 2

/// Global usage for PHP's static constants
public let SQL_CONCUR_ROWVER: Int = 3

/// Global usage for PHP's static constants
public let SQL_CONCUR_VALUES: Int = 4

/// Global usage for PHP's static constants
public let SQL_CURSOR_TYPE: Int = 6

/// Global usage for PHP's static constants
public let SQL_CURSOR_FORWARD_ONLY: Int = 0

/// Global usage for PHP's static constants
public let SQL_CURSOR_KEYSET_DRIVEN: Int = 1

/// Global usage for PHP's static constants
public let SQL_CURSOR_DYNAMIC: Int = 2

/// Global usage for PHP's static constants
public let SQL_CURSOR_STATIC: Int = 3

/// Global usage for PHP's static constants
public let SQL_KEYSET_SIZE: Int = 8

/// Global usage for PHP's static constants
public let SQL_FETCH_FIRST: Int = 2

/// Global usage for PHP's static constants
public let SQL_FETCH_NEXT: Int = 1

/// Global usage for PHP's static constants
public let SQL_CHAR: Int = 1

/// Global usage for PHP's static constants
public let SQL_VARCHAR: Int = 12

/// Global usage for PHP's static constants
public let SQL_LONGVARCHAR: Int = -1

/// Global usage for PHP's static constants
public let SQL_DECIMAL: Int = 3

/// Global usage for PHP's static constants
public let SQL_NUMERIC: Int = 2

/// Global usage for PHP's static constants
public let SQL_BIT: Int = -7

/// Global usage for PHP's static constants
public let SQL_TINYINT: Int = -6

/// Global usage for PHP's static constants
public let SQL_SMALLINT: Int = 5

/// Global usage for PHP's static constants
public let SQL_INTEGER: Int = 4

/// Global usage for PHP's static constants
public let SQL_BIGINT: Int = -5

/// Global usage for PHP's static constants
public let SQL_REAL: Int = 7

/// Global usage for PHP's static constants
public let SQL_FLOAT: Int = 6

/// Global usage for PHP's static constants
public let SQL_DOUBLE: Int = 8

/// Global usage for PHP's static constants
public let SQL_BINARY: Int = -2

/// Global usage for PHP's static constants
public let SQL_VARBINARY: Int = -3

/// Global usage for PHP's static constants
public let SQL_LONGVARBINARY: Int = -4

/// Global usage for PHP's static constants
public let SQL_DATE: Int = 9

/// Global usage for PHP's static constants
public let SQL_TIME: Int = 10

/// Global usage for PHP's static constants
public let SQL_TIMESTAMP: Int = 11

/// Global usage for PHP's static constants
public let SQL_TYPE_DATE: Int = 91

/// Global usage for PHP's static constants
public let SQL_TYPE_TIME: Int = 92

/// Global usage for PHP's static constants
public let SQL_TYPE_TIMESTAMP: Int = 93

/// Global usage for PHP's static constants
public let SQL_WCHAR: Int = -8

/// Global usage for PHP's static constants
public let SQL_WVARCHAR: Int = -9

/// Global usage for PHP's static constants
public let SQL_WLONGVARCHAR: Int = -10

/// Global usage for PHP's static constants
public let SQL_BEST_ROWID: Int = 1

/// Global usage for PHP's static constants
public let SQL_ROWVER: Int = 2

/// Global usage for PHP's static constants
public let SQL_SCOPE_CURROW: Int = 0

/// Global usage for PHP's static constants
public let SQL_SCOPE_TRANSACTION: Int = 1

/// Global usage for PHP's static constants
public let SQL_SCOPE_SESSION: Int = 2

/// Global usage for PHP's static constants
public let SQL_NO_NULLS: Int = 0

/// Global usage for PHP's static constants
public let SQL_NULLABLE: Int = 1

/// Global usage for PHP's static constants
public let SQL_INDEX_UNIQUE: Int = 0

/// Global usage for PHP's static constants
public let SQL_INDEX_ALL: Int = 1

/// Global usage for PHP's static constants
public let SQL_ENSURE: Int = 1

/// Global usage for PHP's static constants
public let SQL_QUICK: Int = 0

/// Global usage for PHP's static constants
public let WNOHANG: Int = 1

/// Global usage for PHP's static constants
public let WUNTRACED: Int = 2

/// Global usage for PHP's static constants
public let WCONTINUED: Int = 16

/// Global usage for PHP's static constants
public let SIG_IGN: Int = 1

/// Global usage for PHP's static constants
public let SIG_DFL: Int = 0

/// Global usage for PHP's static constants
public let SIG_ERR: Int = -1

/// Global usage for PHP's static constants
public let SIGHUP: Int = 1

/// Global usage for PHP's static constants
public let SIGINT: Int = 2

/// Global usage for PHP's static constants
public let SIGQUIT: Int = 3

/// Global usage for PHP's static constants
public let SIGILL: Int = 4

/// Global usage for PHP's static constants
public let SIGTRAP: Int = 5

/// Global usage for PHP's static constants
public let SIGABRT: Int = 6

/// Global usage for PHP's static constants
public let SIGIOT: Int = 6

/// Global usage for PHP's static constants
public let SIGBUS: Int = 10

/// Global usage for PHP's static constants
public let SIGFPE: Int = 8

/// Global usage for PHP's static constants
public let SIGKILL: Int = 9

/// Global usage for PHP's static constants
public let SIGUSR1: Int = 30

/// Global usage for PHP's static constants
public let SIGSEGV: Int = 11

/// Global usage for PHP's static constants
public let SIGUSR2: Int = 31

/// Global usage for PHP's static constants
public let SIGPIPE: Int = 13

/// Global usage for PHP's static constants
public let SIGALRM: Int = 14

/// Global usage for PHP's static constants
public let SIGTERM: Int = 15

/// Global usage for PHP's static constants
public let SIGCHLD: Int = 20

/// Global usage for PHP's static constants
public let SIGCONT: Int = 19

/// Global usage for PHP's static constants
public let SIGSTOP: Int = 17

/// Global usage for PHP's static constants
public let SIGTSTP: Int = 18

/// Global usage for PHP's static constants
public let SIGTTIN: Int = 21

/// Global usage for PHP's static constants
public let SIGTTOU: Int = 22

/// Global usage for PHP's static constants
public let SIGURG: Int = 16

/// Global usage for PHP's static constants
public let SIGXCPU: Int = 24

/// Global usage for PHP's static constants
public let SIGXFSZ: Int = 25

/// Global usage for PHP's static constants
public let SIGVTALRM: Int = 26

/// Global usage for PHP's static constants
public let SIGPROF: Int = 27

/// Global usage for PHP's static constants
public let SIGWINCH: Int = 28

/// Global usage for PHP's static constants
public let SIGIO: Int = 23

/// Global usage for PHP's static constants
public let SIGSYS: Int = 12

/// Global usage for PHP's static constants
public let SIGBABY: Int = 12

/// Global usage for PHP's static constants
public let PRIO_PGRP: Int = 1

/// Global usage for PHP's static constants
public let PRIO_USER: Int = 2

/// Global usage for PHP's static constants
public let PRIO_PROCESS: Int = 0

/// Global usage for PHP's static constants
public let SIG_BLOCK: Int = 1

/// Global usage for PHP's static constants
public let SIG_UNBLOCK: Int = 2

/// Global usage for PHP's static constants
public let SIG_SETMASK: Int = 3

/// Global usage for PHP's static constants
public let PCNTL_EINTR: Int = 4

/// Global usage for PHP's static constants
public let PCNTL_ECHILD: Int = 10

/// Global usage for PHP's static constants
public let PCNTL_EINVAL: Int = 22

/// Global usage for PHP's static constants
public let PCNTL_EAGAIN: Int = 35

/// Global usage for PHP's static constants
public let PCNTL_ESRCH: Int = 3

/// Global usage for PHP's static constants
public let PCNTL_EACCES: Int = 13

/// Global usage for PHP's static constants
public let PCNTL_EPERM: Int = 1

/// Global usage for PHP's static constants
public let PCNTL_ENOMEM: Int = 12

/// Global usage for PHP's static constants
public let PCNTL_E2BIG: Int = 7

/// Global usage for PHP's static constants
public let PCNTL_EFAULT: Int = 14

/// Global usage for PHP's static constants
public let PCNTL_EIO: Int = 5

/// Global usage for PHP's static constants
public let PCNTL_EISDIR: Int = 21

/// Global usage for PHP's static constants
public let PCNTL_ELOOP: Int = 62

/// Global usage for PHP's static constants
public let PCNTL_EMFILE: Int = 24

/// Global usage for PHP's static constants
public let PCNTL_ENAMETOOLONG: Int = 63

/// Global usage for PHP's static constants
public let PCNTL_ENFILE: Int = 23

/// Global usage for PHP's static constants
public let PCNTL_ENOENT: Int = 2

/// Global usage for PHP's static constants
public let PCNTL_ENOEXEC: Int = 8

/// Global usage for PHP's static constants
public let PCNTL_ENOTDIR: Int = 20

/// Global usage for PHP's static constants
public let PCNTL_ETXTBSY: Int = 26

/// Global usage for PHP's static constants
public let POSIX_F_OK: Int = 0

/// Global usage for PHP's static constants
public let POSIX_X_OK: Int = 1

/// Global usage for PHP's static constants
public let POSIX_W_OK: Int = 2

/// Global usage for PHP's static constants
public let POSIX_R_OK: Int = 4

/// Global usage for PHP's static constants
public let POSIX_S_IFREG: Int = 32768

/// Global usage for PHP's static constants
public let POSIX_S_IFCHR: Int = 8192

/// Global usage for PHP's static constants
public let POSIX_S_IFBLK: Int = 24576

/// Global usage for PHP's static constants
public let POSIX_S_IFIFO: Int = 4096

/// Global usage for PHP's static constants
public let POSIX_S_IFSOCK: Int = 49152

/// Global usage for PHP's static constants
public let POSIX_RLIMIT_AS: Int = 5

/// Global usage for PHP's static constants
public let POSIX_RLIMIT_CORE: Int = 4

/// Global usage for PHP's static constants
public let POSIX_RLIMIT_CPU: Int = 0

/// Global usage for PHP's static constants
public let POSIX_RLIMIT_DATA: Int = 2

/// Global usage for PHP's static constants
public let POSIX_RLIMIT_FSIZE: Int = 1

/// Global usage for PHP's static constants
public let POSIX_RLIMIT_MEMLOCK: Int = 6

/// Global usage for PHP's static constants
public let POSIX_RLIMIT_NOFILE: Int = 8

/// Global usage for PHP's static constants
public let POSIX_RLIMIT_NPROC: Int = 7

/// Global usage for PHP's static constants
public let POSIX_RLIMIT_RSS: Int = 5

/// Global usage for PHP's static constants
public let POSIX_RLIMIT_STACK: Int = 3

/// Global usage for PHP's static constants
public let POSIX_RLIMIT_INFINITY: Int64 = 9223372036854775807

/// Global usage for PHP's static constants
public let READLINE_LIB: String = "libedit"

/// Global usage for PHP's static constants
public let MYSQLI_READ_DEFAULT_GROUP: Int = 5

/// Global usage for PHP's static constants
public let MYSQLI_READ_DEFAULT_FILE: Int = 4

/// Global usage for PHP's static constants
public let MYSQLI_OPT_CONNECT_TIMEOUT: Int = 0

/// Global usage for PHP's static constants
public let MYSQLI_OPT_LOCAL_INFILE: Int = 8

/// Global usage for PHP's static constants
public let MYSQLI_INIT_COMMAND: Int = 3

/// Global usage for PHP's static constants
public let MYSQLI_OPT_NET_CMD_BUFFER_SIZE: Int = 202

/// Global usage for PHP's static constants
public let MYSQLI_OPT_NET_READ_BUFFER_SIZE: Int = 203

/// Global usage for PHP's static constants
public let MYSQLI_OPT_INT_AND_FLOAT_NATIVE: Int = 201

/// Global usage for PHP's static constants
public let MYSQLI_OPT_SSL_VERIFY_SERVER_CERT: Int = 21

/// Global usage for PHP's static constants
public let MYSQLI_SERVER_PUBLIC_KEY: Int = 27

/// Global usage for PHP's static constants
public let MYSQLI_CLIENT_SSL: Int = 2048

/// Global usage for PHP's static constants
public let MYSQLI_CLIENT_COMPRESS: Int = 32

/// Global usage for PHP's static constants
public let MYSQLI_CLIENT_INTERACTIVE: Int = 1024

/// Global usage for PHP's static constants
public let MYSQLI_CLIENT_IGNORE_SPACE: Int = 256

/// Global usage for PHP's static constants
public let MYSQLI_CLIENT_NO_SCHEMA: Int = 16

/// Global usage for PHP's static constants
public let MYSQLI_CLIENT_FOUND_ROWS: Int = 2

/// Global usage for PHP's static constants
public let MYSQLI_CLIENT_CAN_HANDLE_EXPIRED_PASSWORDS: Int = 4194304

/// Global usage for PHP's static constants
public let MYSQLI_OPT_CAN_HANDLE_EXPIRED_PASSWORDS: Int = 29

/// Global usage for PHP's static constants
public let MYSQLI_STORE_RESULT: Int = 0

/// Global usage for PHP's static constants
public let MYSQLI_USE_RESULT: Int = 1

/// Global usage for PHP's static constants
public let MYSQLI_ASYNC: Int = 8

/// Global usage for PHP's static constants
public let MYSQLI_STORE_RESULT_COPY_DATA: Int = 16

/// Global usage for PHP's static constants
public let MYSQLI_ASSOC: Int = 1

/// Global usage for PHP's static constants
public let MYSQLI_NUM: Int = 2

/// Global usage for PHP's static constants
public let MYSQLI_BOTH: Int = 3

/// Global usage for PHP's static constants
public let MYSQLI_STMT_ATTR_UPDATE_MAX_LENGTH: Int = 0

/// Global usage for PHP's static constants
public let MYSQLI_STMT_ATTR_CURSOR_TYPE: Int = 1

/// Global usage for PHP's static constants
public let MYSQLI_CURSOR_TYPE_NO_CURSOR: Int = 0

/// Global usage for PHP's static constants
public let MYSQLI_CURSOR_TYPE_READ_ONLY: Int = 1

/// Global usage for PHP's static constants
public let MYSQLI_CURSOR_TYPE_FOR_UPDATE: Int = 2

/// Global usage for PHP's static constants
public let MYSQLI_CURSOR_TYPE_SCROLLABLE: Int = 4

/// Global usage for PHP's static constants
public let MYSQLI_STMT_ATTR_PREFETCH_ROWS: Int = 2

/// Global usage for PHP's static constants
public let MYSQLI_NOT_NULL_FLAG: Int = 1

/// Global usage for PHP's static constants
public let MYSQLI_PRI_KEY_FLAG: Int = 2

/// Global usage for PHP's static constants
public let MYSQLI_UNIQUE_KEY_FLAG: Int = 4

/// Global usage for PHP's static constants
public let MYSQLI_MULTIPLE_KEY_FLAG: Int = 8

/// Global usage for PHP's static constants
public let MYSQLI_BLOB_FLAG: Int = 16

/// Global usage for PHP's static constants
public let MYSQLI_UNSIGNED_FLAG: Int = 32

/// Global usage for PHP's static constants
public let MYSQLI_ZEROFILL_FLAG: Int = 64

/// Global usage for PHP's static constants
public let MYSQLI_AUTO_INCREMENT_FLAG: Int = 512

/// Global usage for PHP's static constants
public let MYSQLI_TIMESTAMP_FLAG: Int = 1024

/// Global usage for PHP's static constants
public let MYSQLI_SET_FLAG: Int = 2048

/// Global usage for PHP's static constants
public let MYSQLI_NUM_FLAG: Int = 32768

/// Global usage for PHP's static constants
public let MYSQLI_PART_KEY_FLAG: Int = 16384

/// Global usage for PHP's static constants
public let MYSQLI_GROUP_FLAG: Int = 32768

/// Global usage for PHP's static constants
public let MYSQLI_ENUM_FLAG: Int = 256

/// Global usage for PHP's static constants
public let MYSQLI_BINARY_FLAG: Int = 128

/// Global usage for PHP's static constants
public let MYSQLI_NO_DEFAULT_VALUE_FLAG: Int = 4096

/// Global usage for PHP's static constants
public let MYSQLI_ON_UPDATE_NOW_FLAG: Int = 8192

/// Global usage for PHP's static constants
public let MYSQLI_TYPE_DECIMAL: Int = 0

/// Global usage for PHP's static constants
public let MYSQLI_TYPE_TINY: Int = 1

/// Global usage for PHP's static constants
public let MYSQLI_TYPE_SHORT: Int = 2

/// Global usage for PHP's static constants
public let MYSQLI_TYPE_LONG: Int = 3

/// Global usage for PHP's static constants
public let MYSQLI_TYPE_FLOAT: Int = 4

/// Global usage for PHP's static constants
public let MYSQLI_TYPE_DOUBLE: Int = 5

/// Global usage for PHP's static constants
public let MYSQLI_TYPE_NULL: Int = 6

/// Global usage for PHP's static constants
public let MYSQLI_TYPE_TIMESTAMP: Int = 7

/// Global usage for PHP's static constants
public let MYSQLI_TYPE_LONGLONG: Int = 8

/// Global usage for PHP's static constants
public let MYSQLI_TYPE_INT24: Int = 9

/// Global usage for PHP's static constants
public let MYSQLI_TYPE_DATE: Int = 10

/// Global usage for PHP's static constants
public let MYSQLI_TYPE_TIME: Int = 11

/// Global usage for PHP's static constants
public let MYSQLI_TYPE_DATETIME: Int = 12

/// Global usage for PHP's static constants
public let MYSQLI_TYPE_YEAR: Int = 13

/// Global usage for PHP's static constants
public let MYSQLI_TYPE_NEWDATE: Int = 14

/// Global usage for PHP's static constants
public let MYSQLI_TYPE_ENUM: Int = 247

/// Global usage for PHP's static constants
public let MYSQLI_TYPE_SET: Int = 248

/// Global usage for PHP's static constants
public let MYSQLI_TYPE_TINY_BLOB: Int = 249

/// Global usage for PHP's static constants
public let MYSQLI_TYPE_MEDIUM_BLOB: Int = 250

/// Global usage for PHP's static constants
public let MYSQLI_TYPE_LONG_BLOB: Int = 251

/// Global usage for PHP's static constants
public let MYSQLI_TYPE_BLOB: Int = 252

/// Global usage for PHP's static constants
public let MYSQLI_TYPE_VAR_STRING: Int = 253

/// Global usage for PHP's static constants
public let MYSQLI_TYPE_STRING: Int = 254

/// Global usage for PHP's static constants
public let MYSQLI_TYPE_CHAR: Int = 1

/// Global usage for PHP's static constants
public let MYSQLI_TYPE_INTERVAL: Int = 247

/// Global usage for PHP's static constants
public let MYSQLI_TYPE_GEOMETRY: Int = 255

/// Global usage for PHP's static constants
public let MYSQLI_TYPE_JSON: Int = 245

/// Global usage for PHP's static constants
public let MYSQLI_TYPE_NEWDECIMAL: Int = 246

/// Global usage for PHP's static constants
public let MYSQLI_TYPE_BIT: Int = 16

/// Global usage for PHP's static constants
public let MYSQLI_SET_CHARSET_NAME: Int = 7

/// Global usage for PHP's static constants
public let MYSQLI_SET_CHARSET_DIR: Int = 6

/// Global usage for PHP's static constants
public let MYSQLI_NO_DATA: Int = 100

/// Global usage for PHP's static constants
public let MYSQLI_DATA_TRUNCATED: Int = 101

/// Global usage for PHP's static constants
public let MYSQLI_REPORT_INDEX: Int = 4

/// Global usage for PHP's static constants
public let MYSQLI_REPORT_ERROR: Int = 1

/// Global usage for PHP's static constants
public let MYSQLI_REPORT_STRICT: Int = 2

/// Global usage for PHP's static constants
public let MYSQLI_REPORT_ALL: Int = 255

/// Global usage for PHP's static constants
public let MYSQLI_REPORT_OFF: Int = 0

/// Global usage for PHP's static constants
public let MYSQLI_DEBUG_TRACE_ENABLED: Int = 0

/// Global usage for PHP's static constants
public let MYSQLI_SERVER_QUERY_NO_GOOD_INDEX_USED: Int = 16

/// Global usage for PHP's static constants
public let MYSQLI_SERVER_QUERY_NO_INDEX_USED: Int = 32

/// Global usage for PHP's static constants
public let MYSQLI_SERVER_QUERY_WAS_SLOW: Int = 2048

/// Global usage for PHP's static constants
public let MYSQLI_SERVER_PS_OUT_PARAMS: Int = 4096

/// Global usage for PHP's static constants
public let MYSQLI_REFRESH_GRANT: Int = 1

/// Global usage for PHP's static constants
public let MYSQLI_REFRESH_LOG: Int = 2

/// Global usage for PHP's static constants
public let MYSQLI_REFRESH_TABLES: Int = 4

/// Global usage for PHP's static constants
public let MYSQLI_REFRESH_HOSTS: Int = 8

/// Global usage for PHP's static constants
public let MYSQLI_REFRESH_STATUS: Int = 16

/// Global usage for PHP's static constants
public let MYSQLI_REFRESH_THREADS: Int = 32

/// Global usage for PHP's static constants
public let MYSQLI_REFRESH_SLAVE: Int = 64

/// Global usage for PHP's static constants
public let MYSQLI_REFRESH_MASTER: Int = 128

/// Global usage for PHP's static constants
public let MYSQLI_REFRESH_BACKUP_LOG: Int = 2097152

/// Global usage for PHP's static constants
public let MYSQLI_TRANS_START_WITH_CONSISTENT_SNAPSHOT: Int = 1

/// Global usage for PHP's static constants
public let MYSQLI_TRANS_START_READ_WRITE: Int = 2

/// Global usage for PHP's static constants
public let MYSQLI_TRANS_START_READ_ONLY: Int = 4

/// Global usage for PHP's static constants
public let MYSQLI_TRANS_COR_AND_CHAIN: Int = 1

/// Global usage for PHP's static constants
public let MYSQLI_TRANS_COR_AND_NO_CHAIN: Int = 2

/// Global usage for PHP's static constants
public let MYSQLI_TRANS_COR_RELEASE: Int = 4

/// Global usage for PHP's static constants
public let MYSQLI_TRANS_COR_NO_RELEASE: Int = 8

/// Global usage for PHP's static constants
public let SOAP_1_1: Int = 1

/// Global usage for PHP's static constants
public let SOAP_1_2: Int = 2

/// Global usage for PHP's static constants
public let SOAP_PERSISTENCE_SESSION: Int = 1

/// Global usage for PHP's static constants
public let SOAP_PERSISTENCE_REQUEST: Int = 2

/// Global usage for PHP's static constants
public let SOAP_FUNCTIONS_ALL: Int = 999

/// Global usage for PHP's static constants
public let SOAP_ENCODED: Int = 1

/// Global usage for PHP's static constants
public let SOAP_LITERAL: Int = 2

/// Global usage for PHP's static constants
public let SOAP_RPC: Int = 1

/// Global usage for PHP's static constants
public let SOAP_DOCUMENT: Int = 2

/// Global usage for PHP's static constants
public let SOAP_ACTOR_NEXT: Int = 1

/// Global usage for PHP's static constants
public let SOAP_ACTOR_NONE: Int = 2

/// Global usage for PHP's static constants
public let SOAP_ACTOR_UNLIMATERECEIVER: Int = 3

/// Global usage for PHP's static constants
public let SOAP_COMPRESSION_ACCEPT: Int = 32

/// Global usage for PHP's static constants
public let SOAP_COMPRESSION_GZIP: Int = 0

/// Global usage for PHP's static constants
public let SOAP_COMPRESSION_DEFLATE: Int = 16

/// Global usage for PHP's static constants
public let SOAP_AUTHENTICATION_BASIC: Int = 0

/// Global usage for PHP's static constants
public let SOAP_AUTHENTICATION_DIGEST: Int = 1

/// Global usage for PHP's static constants
public let UNKNOWN_TYPE: Int = 999998

/// Global usage for PHP's static constants
public let XSD_STRING: Int = 101

/// Global usage for PHP's static constants
public let XSD_BOOLEAN: Int = 102

/// Global usage for PHP's static constants
public let XSD_DECIMAL: Int = 103

/// Global usage for PHP's static constants
public let XSD_FLOAT: Int = 104

/// Global usage for PHP's static constants
public let XSD_DOUBLE: Int = 105

/// Global usage for PHP's static constants
public let XSD_DURATION: Int = 106

/// Global usage for PHP's static constants
public let XSD_DATETIME: Int = 107

/// Global usage for PHP's static constants
public let XSD_TIME: Int = 108

/// Global usage for PHP's static constants
public let XSD_DATE: Int = 109

/// Global usage for PHP's static constants
public let XSD_GYEARMONTH: Int = 110

/// Global usage for PHP's static constants
public let XSD_GYEAR: Int = 111

/// Global usage for PHP's static constants
public let XSD_GMONTHDAY: Int = 112

/// Global usage for PHP's static constants
public let XSD_GDAY: Int = 113

/// Global usage for PHP's static constants
public let XSD_GMONTH: Int = 114

/// Global usage for PHP's static constants
public let XSD_HEXBINARY: Int = 115

/// Global usage for PHP's static constants
public let XSD_BASE64BINARY: Int = 116

/// Global usage for PHP's static constants
public let XSD_ANYURI: Int = 117

/// Global usage for PHP's static constants
public let XSD_QNAME: Int = 118

/// Global usage for PHP's static constants
public let XSD_NOTATION: Int = 119

/// Global usage for PHP's static constants
public let XSD_NORMALIZEDSTRING: Int = 120

/// Global usage for PHP's static constants
public let XSD_TOKEN: Int = 121

/// Global usage for PHP's static constants
public let XSD_LANGUAGE: Int = 122

/// Global usage for PHP's static constants
public let XSD_NMTOKEN: Int = 123

/// Global usage for PHP's static constants
public let XSD_NAME: Int = 124

/// Global usage for PHP's static constants
public let XSD_NCNAME: Int = 125

/// Global usage for PHP's static constants
public let XSD_ID: Int = 126

/// Global usage for PHP's static constants
public let XSD_IDREF: Int = 127

/// Global usage for PHP's static constants
public let XSD_IDREFS: Int = 128

/// Global usage for PHP's static constants
public let XSD_ENTITY: Int = 129

/// Global usage for PHP's static constants
public let XSD_ENTITIES: Int = 130

/// Global usage for PHP's static constants
public let XSD_INTEGER: Int = 131

/// Global usage for PHP's static constants
public let XSD_NONPOSITIVEINTEGER: Int = 132

/// Global usage for PHP's static constants
public let XSD_NEGATIVEINTEGER: Int = 133

/// Global usage for PHP's static constants
public let XSD_LONG: Int = 134

/// Global usage for PHP's static constants
public let XSD_INT: Int = 135

/// Global usage for PHP's static constants
public let XSD_SHORT: Int = 136

/// Global usage for PHP's static constants
public let XSD_BYTE: Int = 137

/// Global usage for PHP's static constants
public let XSD_NONNEGATIVEINTEGER: Int = 138

/// Global usage for PHP's static constants
public let XSD_UNSIGNEDLONG: Int = 139

/// Global usage for PHP's static constants
public let XSD_UNSIGNEDINT: Int = 140

/// Global usage for PHP's static constants
public let XSD_UNSIGNEDSHORT: Int = 141

/// Global usage for PHP's static constants
public let XSD_UNSIGNEDBYTE: Int = 142

/// Global usage for PHP's static constants
public let XSD_POSITIVEINTEGER: Int = 143

/// Global usage for PHP's static constants
public let XSD_NMTOKENS: Int = 144

/// Global usage for PHP's static constants
public let XSD_ANYTYPE: Int = 145

/// Global usage for PHP's static constants
public let XSD_ANYXML: Int = 147

/// Global usage for PHP's static constants
public let APACHE_MAP: Int = 200

/// Global usage for PHP's static constants
public let SOAP_ENC_OBJECT: Int = 301

/// Global usage for PHP's static constants
public let SOAP_ENC_ARRAY: Int = 300

/// Global usage for PHP's static constants
public let XSD_1999_TIMEINSTANT: Int = 401

/// Global usage for PHP's static constants
public let XSD_NAMESPACE: String = "http://www.w3.org/2001/XMLSchema"

/// Global usage for PHP's static constants
public let XSD_1999_NAMESPACE: String = "http://www.w3.org/1999/XMLSchema"

/// Global usage for PHP's static constants
public let SOAP_SINGLE_ELEMENT_ARRAYS: Int = 1

/// Global usage for PHP's static constants
public let SOAP_WAIT_ONE_WAY_CALLS: Int = 2

/// Global usage for PHP's static constants
public let SOAP_USE_XSI_ARRAY_TYPE: Int = 4

/// Global usage for PHP's static constants
public let WSDL_CACHE_NONE: Int = 0

/// Global usage for PHP's static constants
public let WSDL_CACHE_DISK: Int = 1

/// Global usage for PHP's static constants
public let WSDL_CACHE_MEMORY: Int = 2

/// Global usage for PHP's static constants
public let WSDL_CACHE_BOTH: Int = 3

/// Global usage for PHP's static constants
public let SOAP_SSL_METHOD_TLS: Int = 0

/// Global usage for PHP's static constants
public let SOAP_SSL_METHOD_SSLv2: Int = 1

/// Global usage for PHP's static constants
public let SOAP_SSL_METHOD_SSLv3: Int = 2

/// Global usage for PHP's static constants
public let SOAP_SSL_METHOD_SSLv23: Int = 3

/// Global usage for PHP's static constants
public let AF_UNIX: Int = 1

/// Global usage for PHP's static constants
public let AF_INET: Int = 2

/// Global usage for PHP's static constants
public let AF_INET6: Int = 30

/// Global usage for PHP's static constants
public let SOCK_STREAM: Int = 1

/// Global usage for PHP's static constants
public let SOCK_DGRAM: Int = 2

/// Global usage for PHP's static constants
public let SOCK_RAW: Int = 3

/// Global usage for PHP's static constants
public let SOCK_SEQPACKET: Int = 5

/// Global usage for PHP's static constants
public let SOCK_RDM: Int = 4

/// Global usage for PHP's static constants
public let MSG_OOB: Int = 1

/// Global usage for PHP's static constants
public let MSG_WAITALL: Int = 64

/// Global usage for PHP's static constants
public let MSG_CTRUNC: Int = 32

/// Global usage for PHP's static constants
public let MSG_TRUNC: Int = 16

/// Global usage for PHP's static constants
public let MSG_PEEK: Int = 2

/// Global usage for PHP's static constants
public let MSG_DONTROUTE: Int = 4

/// Global usage for PHP's static constants
public let MSG_EOR: Int = 8

/// Global usage for PHP's static constants
public let MSG_EOF: Int = 256

/// Global usage for PHP's static constants
public let MSG_DONTWAIT: Int = 128

/// Global usage for PHP's static constants
public let SO_DEBUG: Int = 1

/// Global usage for PHP's static constants
public let SO_REUSEADDR: Int = 4

/// Global usage for PHP's static constants
public let SO_REUSEPORT: Int = 512

/// Global usage for PHP's static constants
public let SO_KEEPALIVE: Int = 8

/// Global usage for PHP's static constants
public let SO_DONTROUTE: Int = 16

/// Global usage for PHP's static constants
public let SO_LINGER: Int = 128

/// Global usage for PHP's static constants
public let SO_BROADCAST: Int = 32

/// Global usage for PHP's static constants
public let SO_OOBINLINE: Int = 256

/// Global usage for PHP's static constants
public let SO_SNDBUF: Int = 4097

/// Global usage for PHP's static constants
public let SO_RCVBUF: Int = 4098

/// Global usage for PHP's static constants
public let SO_SNDLOWAT: Int = 4099

/// Global usage for PHP's static constants
public let SO_RCVLOWAT: Int = 4100

/// Global usage for PHP's static constants
public let SO_SNDTIMEO: Int = 4101

/// Global usage for PHP's static constants
public let SO_RCVTIMEO: Int = 4102

/// Global usage for PHP's static constants
public let SO_TYPE: Int = 4104

/// Global usage for PHP's static constants
public let SO_ERROR: Int = 4103

/// Global usage for PHP's static constants
public let SOL_SOCKET: Int = 65535

/// Global usage for PHP's static constants
public let SOMAXCONN: Int = 128

/// Global usage for PHP's static constants
public let TCP_NODELAY: Int = 1

/// Global usage for PHP's static constants
public let PHP_NORMAL_READ: Int = 1

/// Global usage for PHP's static constants
public let PHP_BINARY_READ: Int = 2

/// Global usage for PHP's static constants
public let MCAST_JOIN_GROUP: Int = 12

/// Global usage for PHP's static constants
public let MCAST_LEAVE_GROUP: Int = 13

/// Global usage for PHP's static constants
public let IP_MULTICAST_IF: Int = 9

/// Global usage for PHP's static constants
public let IP_MULTICAST_TTL: Int = 10

/// Global usage for PHP's static constants
public let IP_MULTICAST_LOOP: Int = 11

/// Global usage for PHP's static constants
public let IPV6_MULTICAST_IF: Int = 9

/// Global usage for PHP's static constants
public let IPV6_MULTICAST_HOPS: Int = 10

/// Global usage for PHP's static constants
public let IPV6_MULTICAST_LOOP: Int = 11

/// Global usage for PHP's static constants
public let SOCKET_EPERM: Int = 1

/// Global usage for PHP's static constants
public let SOCKET_ENOENT: Int = 2

/// Global usage for PHP's static constants
public let SOCKET_EINTR: Int = 4

/// Global usage for PHP's static constants
public let SOCKET_EIO: Int = 5

/// Global usage for PHP's static constants
public let SOCKET_ENXIO: Int = 6

/// Global usage for PHP's static constants
public let SOCKET_E2BIG: Int = 7

/// Global usage for PHP's static constants
public let SOCKET_EBADF: Int = 9

/// Global usage for PHP's static constants
public let SOCKET_EAGAIN: Int = 35

/// Global usage for PHP's static constants
public let SOCKET_ENOMEM: Int = 12

/// Global usage for PHP's static constants
public let SOCKET_EACCES: Int = 13

/// Global usage for PHP's static constants
public let SOCKET_EFAULT: Int = 14

/// Global usage for PHP's static constants
public let SOCKET_ENOTBLK: Int = 15

/// Global usage for PHP's static constants
public let SOCKET_EBUSY: Int = 16

/// Global usage for PHP's static constants
public let SOCKET_EEXIST: Int = 17

/// Global usage for PHP's static constants
public let SOCKET_EXDEV: Int = 18

/// Global usage for PHP's static constants
public let SOCKET_ENODEV: Int = 19

/// Global usage for PHP's static constants
public let SOCKET_ENOTDIR: Int = 20

/// Global usage for PHP's static constants
public let SOCKET_EISDIR: Int = 21

/// Global usage for PHP's static constants
public let SOCKET_EINVAL: Int = 22

/// Global usage for PHP's static constants
public let SOCKET_ENFILE: Int = 23

/// Global usage for PHP's static constants
public let SOCKET_EMFILE: Int = 24

/// Global usage for PHP's static constants
public let SOCKET_ENOTTY: Int = 25

/// Global usage for PHP's static constants
public let SOCKET_ENOSPC: Int = 28

/// Global usage for PHP's static constants
public let SOCKET_ESPIPE: Int = 29

/// Global usage for PHP's static constants
public let SOCKET_EROFS: Int = 30

/// Global usage for PHP's static constants
public let SOCKET_EMLINK: Int = 31

/// Global usage for PHP's static constants
public let SOCKET_EPIPE: Int = 32

/// Global usage for PHP's static constants
public let SOCKET_ENAMETOOLONG: Int = 63

/// Global usage for PHP's static constants
public let SOCKET_ENOLCK: Int = 77

/// Global usage for PHP's static constants
public let SOCKET_ENOSYS: Int = 78

/// Global usage for PHP's static constants
public let SOCKET_ENOTEMPTY: Int = 66

/// Global usage for PHP's static constants
public let SOCKET_ELOOP: Int = 62

/// Global usage for PHP's static constants
public let SOCKET_EWOULDBLOCK: Int = 35

/// Global usage for PHP's static constants
public let SOCKET_ENOMSG: Int = 91

/// Global usage for PHP's static constants
public let SOCKET_EIDRM: Int = 90

/// Global usage for PHP's static constants
public let SOCKET_ENOSTR: Int = 99

/// Global usage for PHP's static constants
public let SOCKET_ENODATA: Int = 96

/// Global usage for PHP's static constants
public let SOCKET_ETIME: Int = 101

/// Global usage for PHP's static constants
public let SOCKET_ENOSR: Int = 98

/// Global usage for PHP's static constants
public let SOCKET_EREMOTE: Int = 71

/// Global usage for PHP's static constants
public let SOCKET_ENOLINK: Int = 97

/// Global usage for PHP's static constants
public let SOCKET_EPROTO: Int = 100

/// Global usage for PHP's static constants
public let SOCKET_EMULTIHOP: Int = 95

/// Global usage for PHP's static constants
public let SOCKET_EBADMSG: Int = 94

/// Global usage for PHP's static constants
public let SOCKET_EUSERS: Int = 68

/// Global usage for PHP's static constants
public let SOCKET_ENOTSOCK: Int = 38

/// Global usage for PHP's static constants
public let SOCKET_EDESTADDRREQ: Int = 39

/// Global usage for PHP's static constants
public let SOCKET_EMSGSIZE: Int = 40

/// Global usage for PHP's static constants
public let SOCKET_EPROTOTYPE: Int = 41

/// Global usage for PHP's static constants
public let SOCKET_ENOPROTOOPT: Int = 42

/// Global usage for PHP's static constants
public let SOCKET_EPROTONOSUPPORT: Int = 43

/// Global usage for PHP's static constants
public let SOCKET_ESOCKTNOSUPPORT: Int = 44

/// Global usage for PHP's static constants
public let SOCKET_EOPNOTSUPP: Int = 102

/// Global usage for PHP's static constants
public let SOCKET_EPFNOSUPPORT: Int = 46

/// Global usage for PHP's static constants
public let SOCKET_EAFNOSUPPORT: Int = 47

/// Global usage for PHP's static constants
public let SOCKET_EADDRINUSE: Int = 48

/// Global usage for PHP's static constants
public let SOCKET_EADDRNOTAVAIL: Int = 49

/// Global usage for PHP's static constants
public let SOCKET_ENETDOWN: Int = 50

/// Global usage for PHP's static constants
public let SOCKET_ENETUNREACH: Int = 51

/// Global usage for PHP's static constants
public let SOCKET_ENETRESET: Int = 52

/// Global usage for PHP's static constants
public let SOCKET_ECONNABORTED: Int = 53

/// Global usage for PHP's static constants
public let SOCKET_ECONNRESET: Int = 54

/// Global usage for PHP's static constants
public let SOCKET_ENOBUFS: Int = 55

/// Global usage for PHP's static constants
public let SOCKET_EISCONN: Int = 56

/// Global usage for PHP's static constants
public let SOCKET_ENOTCONN: Int = 57

/// Global usage for PHP's static constants
public let SOCKET_ESHUTDOWN: Int = 58

/// Global usage for PHP's static constants
public let SOCKET_ETOOMANYREFS: Int = 59

/// Global usage for PHP's static constants
public let SOCKET_ETIMEDOUT: Int = 60

/// Global usage for PHP's static constants
public let SOCKET_ECONNREFUSED: Int = 61

/// Global usage for PHP's static constants
public let SOCKET_EHOSTDOWN: Int = 64

/// Global usage for PHP's static constants
public let SOCKET_EHOSTUNREACH: Int = 65

/// Global usage for PHP's static constants
public let SOCKET_EALREADY: Int = 37

/// Global usage for PHP's static constants
public let SOCKET_EINPROGRESS: Int = 36

/// Global usage for PHP's static constants
public let SOCKET_EDQUOT: Int = 69

/// Global usage for PHP's static constants
public let IPPROTO_IP: Int = 0

/// Global usage for PHP's static constants
public let IPPROTO_IPV6: Int = 41

/// Global usage for PHP's static constants
public let SOL_TCP: Int = 6

/// Global usage for PHP's static constants
public let SOL_UDP: Int = 17

/// Global usage for PHP's static constants
public let IPV6_UNICAST_HOPS: Int = 4

/// Global usage for PHP's static constants
public let IPV6_RECVTCLASS: Int = 35

/// Global usage for PHP's static constants
public let IPV6_TCLASS: Int = 36

/// Global usage for PHP's static constants
public let SCM_RIGHTS: Int = 1

/// Global usage for PHP's static constants
public let EXIF_USE_MBSTRING: Int = 1

/// Global usage for PHP's static constants
public let MSG_IPC_NOWAIT: Int = 1

/// Global usage for PHP's static constants
public let MSG_EAGAIN: Int = 35

/// Global usage for PHP's static constants
public let MSG_ENOMSG: Int = 91

/// Global usage for PHP's static constants
public let MSG_NOERROR: Int = 2

/// Global usage for PHP's static constants
public let MSG_EXCEPT: Int = 4

/// Global usage for PHP's static constants
public let T_REQUIRE_ONCE: Int = 262

/// Global usage for PHP's static constants
public let T_REQUIRE: Int = 261

/// Global usage for PHP's static constants
public let T_EVAL: Int = 260

/// Global usage for PHP's static constants
public let T_INCLUDE_ONCE: Int = 259

/// Global usage for PHP's static constants
public let T_INCLUDE: Int = 258

/// Global usage for PHP's static constants
public let T_LOGICAL_OR: Int = 263

/// Global usage for PHP's static constants
public let T_LOGICAL_XOR: Int = 264

/// Global usage for PHP's static constants
public let T_LOGICAL_AND: Int = 265

/// Global usage for PHP's static constants
public let T_PRINT: Int = 266

/// Global usage for PHP's static constants
public let T_YIELD: Int = 267

/// Global usage for PHP's static constants
public let T_DOUBLE_ARROW: Int = 268

/// Global usage for PHP's static constants
public let T_YIELD_FROM: Int = 269

/// Global usage for PHP's static constants
public let T_POW_EQUAL: Int = 281

/// Global usage for PHP's static constants
public let T_SR_EQUAL: Int = 280

/// Global usage for PHP's static constants
public let T_SL_EQUAL: Int = 279

/// Global usage for PHP's static constants
public let T_XOR_EQUAL: Int = 278

/// Global usage for PHP's static constants
public let T_OR_EQUAL: Int = 277

/// Global usage for PHP's static constants
public let T_AND_EQUAL: Int = 276

/// Global usage for PHP's static constants
public let T_MOD_EQUAL: Int = 275

/// Global usage for PHP's static constants
public let T_CONCAT_EQUAL: Int = 274

/// Global usage for PHP's static constants
public let T_DIV_EQUAL: Int = 273

/// Global usage for PHP's static constants
public let T_MUL_EQUAL: Int = 272

/// Global usage for PHP's static constants
public let T_MINUS_EQUAL: Int = 271

/// Global usage for PHP's static constants
public let T_PLUS_EQUAL: Int = 270

/// Global usage for PHP's static constants
public let T_COALESCE: Int = 282

/// Global usage for PHP's static constants
public let T_BOOLEAN_OR: Int = 283

/// Global usage for PHP's static constants
public let T_BOOLEAN_AND: Int = 284

/// Global usage for PHP's static constants
public let T_SPACESHIP: Int = 289

/// Global usage for PHP's static constants
public let T_IS_NOT_IDENTICAL: Int = 288

/// Global usage for PHP's static constants
public let T_IS_IDENTICAL: Int = 287

/// Global usage for PHP's static constants
public let T_IS_NOT_EQUAL: Int = 286

/// Global usage for PHP's static constants
public let T_IS_EQUAL: Int = 285

/// Global usage for PHP's static constants
public let T_IS_GREATER_OR_EQUAL: Int = 291

/// Global usage for PHP's static constants
public let T_IS_SMALLER_OR_EQUAL: Int = 290

/// Global usage for PHP's static constants
public let T_SR: Int = 293

/// Global usage for PHP's static constants
public let T_SL: Int = 292

/// Global usage for PHP's static constants
public let T_INSTANCEOF: Int = 294

/// Global usage for PHP's static constants
public let T_UNSET_CAST: Int = 303

/// Global usage for PHP's static constants
public let T_BOOL_CAST: Int = 302

/// Global usage for PHP's static constants
public let T_OBJECT_CAST: Int = 301

/// Global usage for PHP's static constants
public let T_ARRAY_CAST: Int = 300

/// Global usage for PHP's static constants
public let T_STRING_CAST: Int = 299

/// Global usage for PHP's static constants
public let T_DOUBLE_CAST: Int = 298

/// Global usage for PHP's static constants
public let T_INT_CAST: Int = 297

/// Global usage for PHP's static constants
public let T_DEC: Int = 296

/// Global usage for PHP's static constants
public let T_INC: Int = 295

/// Global usage for PHP's static constants
public let T_POW: Int = 304

/// Global usage for PHP's static constants
public let T_CLONE: Int = 306

/// Global usage for PHP's static constants
public let T_NEW: Int = 305

/// Global usage for PHP's static constants
public let T_ELSEIF: Int = 308

/// Global usage for PHP's static constants
public let T_ELSE: Int = 309

/// Global usage for PHP's static constants
public let T_ENDIF: Int = 310

/// Global usage for PHP's static constants
public let T_PUBLIC: Int = 316

/// Global usage for PHP's static constants
public let T_PROTECTED: Int = 315

/// Global usage for PHP's static constants
public let T_PRIVATE: Int = 314

/// Global usage for PHP's static constants
public let T_FINAL: Int = 313

/// Global usage for PHP's static constants
public let T_ABSTRACT: Int = 312

/// Global usage for PHP's static constants
public let T_STATIC: Int = 311

/// Global usage for PHP's static constants
public let T_LNUMBER: Int = 317

/// Global usage for PHP's static constants
public let T_DNUMBER: Int = 318

/// Global usage for PHP's static constants
public let T_STRING: Int = 319

/// Global usage for PHP's static constants
public let T_VARIABLE: Int = 320

/// Global usage for PHP's static constants
public let T_INLINE_HTML: Int = 321

/// Global usage for PHP's static constants
public let T_ENCAPSED_AND_WHITESPACE: Int = 322

/// Global usage for PHP's static constants
public let T_CONSTANT_ENCAPSED_STRING: Int = 323

/// Global usage for PHP's static constants
public let T_STRING_VARNAME: Int = 324

/// Global usage for PHP's static constants
public let T_NUM_STRING: Int = 325

/// Global usage for PHP's static constants
public let T_EXIT: Int = 326

/// Global usage for PHP's static constants
public let T_IF: Int = 327

/// Global usage for PHP's static constants
public let T_ECHO: Int = 328

/// Global usage for PHP's static constants
public let T_DO: Int = 329

/// Global usage for PHP's static constants
public let T_WHILE: Int = 330

/// Global usage for PHP's static constants
public let T_ENDWHILE: Int = 331

/// Global usage for PHP's static constants
public let T_FOR: Int = 332

/// Global usage for PHP's static constants
public let T_ENDFOR: Int = 333

/// Global usage for PHP's static constants
public let T_FOREACH: Int = 334

/// Global usage for PHP's static constants
public let T_ENDFOREACH: Int = 335

/// Global usage for PHP's static constants
public let T_DECLARE: Int = 336

/// Global usage for PHP's static constants
public let T_ENDDECLARE: Int = 337

/// Global usage for PHP's static constants
public let T_AS: Int = 338

/// Global usage for PHP's static constants
public let T_SWITCH: Int = 339

/// Global usage for PHP's static constants
public let T_ENDSWITCH: Int = 340

/// Global usage for PHP's static constants
public let T_CASE: Int = 341

/// Global usage for PHP's static constants
public let T_DEFAULT: Int = 342

/// Global usage for PHP's static constants
public let T_BREAK: Int = 343

/// Global usage for PHP's static constants
public let T_CONTINUE: Int = 344

/// Global usage for PHP's static constants
public let T_GOTO: Int = 345

/// Global usage for PHP's static constants
public let T_FUNCTION: Int = 346

/// Global usage for PHP's static constants
public let T_CONST: Int = 347

/// Global usage for PHP's static constants
public let T_RETURN: Int = 348

/// Global usage for PHP's static constants
public let T_TRY: Int = 349

/// Global usage for PHP's static constants
public let T_CATCH: Int = 350

/// Global usage for PHP's static constants
public let T_FINALLY: Int = 351

/// Global usage for PHP's static constants
public let T_THROW: Int = 352

/// Global usage for PHP's static constants
public let T_USE: Int = 353

/// Global usage for PHP's static constants
public let T_INSTEADOF: Int = 354

/// Global usage for PHP's static constants
public let T_GLOBAL: Int = 355

/// Global usage for PHP's static constants
public let T_VAR: Int = 356

/// Global usage for PHP's static constants
public let T_UNSET: Int = 357

/// Global usage for PHP's static constants
public let T_ISSET: Int = 358

/// Global usage for PHP's static constants
public let T_EMPTY: Int = 359

/// Global usage for PHP's static constants
public let T_HALT_COMPILER: Int = 360

/// Global usage for PHP's static constants
public let T_CLASS: Int = 361

/// Global usage for PHP's static constants
public let T_TRAIT: Int = 362

/// Global usage for PHP's static constants
public let T_INTERFACE: Int = 363

/// Global usage for PHP's static constants
public let T_EXTENDS: Int = 364

/// Global usage for PHP's static constants
public let T_IMPLEMENTS: Int = 365

/// Global usage for PHP's static constants
public let T_OBJECT_OPERATOR: Int = 366

/// Global usage for PHP's static constants
public let T_LIST: Int = 367

/// Global usage for PHP's static constants
public let T_ARRAY: Int = 368

/// Global usage for PHP's static constants
public let T_CALLABLE: Int = 369

/// Global usage for PHP's static constants
public let T_LINE: Int = 370

/// Global usage for PHP's static constants
public let T_FILE: Int = 371

/// Global usage for PHP's static constants
public let T_DIR: Int = 372

/// Global usage for PHP's static constants
public let T_CLASS_C: Int = 373

/// Global usage for PHP's static constants
public let T_TRAIT_C: Int = 374

/// Global usage for PHP's static constants
public let T_METHOD_C: Int = 375

/// Global usage for PHP's static constants
public let T_FUNC_C: Int = 376

/// Global usage for PHP's static constants
public let T_COMMENT: Int = 377

/// Global usage for PHP's static constants
public let T_DOC_COMMENT: Int = 378

/// Global usage for PHP's static constants
public let T_OPEN_TAG: Int = 379

/// Global usage for PHP's static constants
public let T_OPEN_TAG_WITH_ECHO: Int = 380

/// Global usage for PHP's static constants
public let T_CLOSE_TAG: Int = 381

/// Global usage for PHP's static constants
public let T_WHITESPACE: Int = 382

/// Global usage for PHP's static constants
public let T_START_HEREDOC: Int = 383

/// Global usage for PHP's static constants
public let T_END_HEREDOC: Int = 384

/// Global usage for PHP's static constants
public let T_DOLLAR_OPEN_CURLY_BRACES: Int = 385

/// Global usage for PHP's static constants
public let T_CURLY_OPEN: Int = 386

/// Global usage for PHP's static constants
public let T_PAAMAYIM_NEKUDOTAYIM: Int = 387

/// Global usage for PHP's static constants
public let T_NAMESPACE: Int = 388

/// Global usage for PHP's static constants
public let T_NS_C: Int = 389

/// Global usage for PHP's static constants
public let T_NS_SEPARATOR: Int = 390

/// Global usage for PHP's static constants
public let T_ELLIPSIS: Int = 391

/// Global usage for PHP's static constants
public let T_DOUBLE_COLON: Int = 387

/// Global usage for PHP's static constants
public let TOKEN_PARSE: Int = 1

/// Global usage for PHP's static constants
public let XML_ERROR_NONE: Int = 0

/// Global usage for PHP's static constants
public let XML_ERROR_NO_MEMORY: Int = 1

/// Global usage for PHP's static constants
public let XML_ERROR_SYNTAX: Int = 2

/// Global usage for PHP's static constants
public let XML_ERROR_NO_ELEMENTS: Int = 3

/// Global usage for PHP's static constants
public let XML_ERROR_INVALID_TOKEN: Int = 4

/// Global usage for PHP's static constants
public let XML_ERROR_UNCLOSED_TOKEN: Int = 5

/// Global usage for PHP's static constants
public let XML_ERROR_PARTIAL_CHAR: Int = 6

/// Global usage for PHP's static constants
public let XML_ERROR_TAG_MISMATCH: Int = 7

/// Global usage for PHP's static constants
public let XML_ERROR_DUPLICATE_ATTRIBUTE: Int = 8

/// Global usage for PHP's static constants
public let XML_ERROR_JUNK_AFTER_DOC_ELEMENT: Int = 9

/// Global usage for PHP's static constants
public let XML_ERROR_PARAM_ENTITY_REF: Int = 10

/// Global usage for PHP's static constants
public let XML_ERROR_UNDEFINED_ENTITY: Int = 11

/// Global usage for PHP's static constants
public let XML_ERROR_RECURSIVE_ENTITY_REF: Int = 12

/// Global usage for PHP's static constants
public let XML_ERROR_ASYNC_ENTITY: Int = 13

/// Global usage for PHP's static constants
public let XML_ERROR_BAD_CHAR_REF: Int = 14

/// Global usage for PHP's static constants
public let XML_ERROR_BINARY_ENTITY_REF: Int = 15

/// Global usage for PHP's static constants
public let XML_ERROR_ATTRIBUTE_EXTERNAL_ENTITY_REF: Int = 16

/// Global usage for PHP's static constants
public let XML_ERROR_MISPLACED_XML_PI: Int = 17

/// Global usage for PHP's static constants
public let XML_ERROR_UNKNOWN_ENCODING: Int = 18

/// Global usage for PHP's static constants
public let XML_ERROR_INCORRECT_ENCODING: Int = 19

/// Global usage for PHP's static constants
public let XML_ERROR_UNCLOSED_CDATA_SECTION: Int = 20

/// Global usage for PHP's static constants
public let XML_ERROR_EXTERNAL_ENTITY_HANDLING: Int = 21

/// Global usage for PHP's static constants
public let XML_OPTION_CASE_FOLDING: Int = 1

/// Global usage for PHP's static constants
public let XML_OPTION_TARGET_ENCODING: Int = 2

/// Global usage for PHP's static constants
public let XML_OPTION_SKIP_TAGSTART: Int = 3

/// Global usage for PHP's static constants
public let XML_OPTION_SKIP_WHITE: Int = 4

/// Global usage for PHP's static constants
public let XML_SAX_IMPL: String = "libxml"

/// Global usage for PHP's static constants
public let XSL_CLONE_AUTO: Int = 0

/// Global usage for PHP's static constants
public let XSL_CLONE_NEVER: Int = -1

/// Global usage for PHP's static constants
public let XSL_CLONE_ALWAYS: Int = 1

/// Global usage for PHP's static constants
public let XSL_SECPREF_NONE: Int = 0

/// Global usage for PHP's static constants
public let XSL_SECPREF_READ_FILE: Int = 2

/// Global usage for PHP's static constants
public let XSL_SECPREF_WRITE_FILE: Int = 4

/// Global usage for PHP's static constants
public let XSL_SECPREF_CREATE_DIRECTORY: Int = 8

/// Global usage for PHP's static constants
public let XSL_SECPREF_READ_NETWORK: Int = 16

/// Global usage for PHP's static constants
public let XSL_SECPREF_WRITE_NETWORK: Int = 32

/// Global usage for PHP's static constants
public let XSL_SECPREF_DEFAULT: Int = 44

/// Global usage for PHP's static constants
public let LIBXSLT_VERSION: Int = 10128

/// Global usage for PHP's static constants
public let LIBXSLT_DOTTED_VERSION: String = "1.1.28"

/// Global usage for PHP's static constants
public let LIBEXSLT_VERSION: Int = 817

/// Global usage for PHP's static constants
public let LIBEXSLT_DOTTED_VERSION: String = "1.1.28"

/// Global usage for PHP's static constants
public let STDIN: String = "Resource id #1"

/// Global usage for PHP's static constants
public let STDOUT: String = "Resource id #2"

/// Global usage for PHP's static constants
public let STDERR: String = "Resource id #3"
