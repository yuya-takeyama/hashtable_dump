/*
  +----------------------------------------------------------------------+
  | PHP Version 5                                                        |
  +----------------------------------------------------------------------+
  | Copyright (c) 1997-2012 The PHP Group                                |
  +----------------------------------------------------------------------+
  | This source file is subject to version 3.01 of the PHP license,      |
  | that is bundled with this package in the file LICENSE, and is        |
  | available through the world-wide-web at the following url:           |
  | http://www.php.net/license/3_01.txt                                  |
  | If you did not receive a copy of the PHP license and are unable to   |
  | obtain it through the world-wide-web, please send a note to          |
  | license@php.net so we can mail you a copy immediately.               |
  +----------------------------------------------------------------------+
  | Author:                                                              |
  +----------------------------------------------------------------------+
*/

/* $Id: header 321634 2012-01-01 13:15:04Z felipe $ */

#ifndef PHP_HASHTABLE_DUMP_H
#define PHP_HASHTABLE_DUMP_H

extern zend_module_entry hashtable_dump_module_entry;
#define phpext_hashtable_dump_ptr &hashtable_dump_module_entry

#ifdef PHP_WIN32
#	define PHP_HASHTABLE_DUMP_API __declspec(dllexport)
#elif defined(__GNUC__) && __GNUC__ >= 4
#	define PHP_HASHTABLE_DUMP_API __attribute__ ((visibility("default")))
#else
#	define PHP_HASHTABLE_DUMP_API
#endif

#ifdef ZTS
#include "TSRM.h"
#endif

PHP_MINIT_FUNCTION(hashtable_dump);
PHP_MSHUTDOWN_FUNCTION(hashtable_dump);
PHP_RINIT_FUNCTION(hashtable_dump);
PHP_RSHUTDOWN_FUNCTION(hashtable_dump);
PHP_MINFO_FUNCTION(hashtable_dump);

PHP_FUNCTION(confirm_hashtable_dump_compiled);	/* For testing, remove later. */

/* 
  	Declare any global variables you may need between the BEGIN
	and END macros here:     

ZEND_BEGIN_MODULE_GLOBALS(hashtable_dump)
	long  global_value;
	char *global_string;
ZEND_END_MODULE_GLOBALS(hashtable_dump)
*/

/* In every utility function you add that needs to use variables 
   in php_hashtable_dump_globals, call TSRMLS_FETCH(); after declaring other 
   variables used by that function, or better yet, pass in TSRMLS_CC
   after the last function argument and declare your utility function
   with TSRMLS_DC after the last declared argument.  Always refer to
   the globals in your function as HASHTABLE_DUMP_G(variable).  You are 
   encouraged to rename these macros something shorter, see
   examples in any other php module directory.
*/

#ifdef ZTS
#define HASHTABLE_DUMP_G(v) TSRMG(hashtable_dump_globals_id, zend_hashtable_dump_globals *, v)
#else
#define HASHTABLE_DUMP_G(v) (hashtable_dump_globals.v)
#endif

#endif	/* PHP_HASHTABLE_DUMP_H */


/*
 * Local variables:
 * tab-width: 4
 * c-basic-offset: 4
 * End:
 * vim600: noet sw=4 ts=4 fdm=marker
 * vim<600: noet sw=4 ts=4
 */
