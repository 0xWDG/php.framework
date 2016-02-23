<?php
/**
 * PHP.Framework
 * PHP In Swift
 *
 * This file is used to generate the initial test file in PHP.
*/

$s = "assert_options;assert;cli_get_process_title;cli_set_process_title;dl;extension_loaded;gc_collect_cycles;gc_disable;gc_enable;gc_enabled;gc_mem_caches;get_cfg_var;get_current_user;get_defined_constants;get_extension_funcs;get_include_path;get_included_files;get_loaded_extensions;get_magic_quotes_gpc;get_magic_quotes_runtime;get_required_files;get_resources;getenv;getlastmod;getmygid;getmyinode;getmypid;getmyuid;getopt;getrusage;ini_alter;ini_get_all;ini_get;ini_restore;ini_set;magic_quotes_runtime;main;memory_get_peak_usage;memory_get_usage;php_ini_loaded_file;php_ini_scanned_files;php_logo_guid;php_sapi_name;php_uname;phpcredits;phpinfo;phpversion;putenv;restore_include_path;set_include_path;set_magic_quotes_runtime;set_time_limit;sys_get_temp_dir;version_compare;zend_logo_guid;zend_thread_id;zend_version";
$s = explode(";", $s);

for ($i = 0; $i < sizeof($s); $i++) {
	if (!file_exists($s[$i].".php"))
		createFunctionTest($s[$i]);
}

function createFunctionTest($functionName) {
	file_put_contents("{$functionName}.php", "<?php\r\n/**\r\n * PHP.Framework\r\n * PHP In Swift\r\n *\r\n * This file is used to test the function: {$functionName}.\r\n*/\r\n\r\n\r\n?>");
}
?>