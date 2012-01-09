dnl $Id$
dnl config.m4 for extension hashtable_dump

dnl Comments in this file start with the string 'dnl'.
dnl Remove where necessary. This file will not work
dnl without editing.

dnl If your extension references something external, use with:

dnl PHP_ARG_WITH(hashtable_dump, for hashtable_dump support,
dnl Make sure that the comment is aligned:
dnl [  --with-hashtable_dump             Include hashtable_dump support])

dnl Otherwise use enable:

PHP_ARG_ENABLE(hashtable_dump, whether to enable hashtable_dump support,
Make sure that the comment is aligned:
[  --enable-hashtable_dump           Enable hashtable_dump support])

if test "$PHP_HASHTABLE_DUMP" != "no"; then
  dnl Write more examples of tests here...

  dnl # --with-hashtable_dump -> check with-path
  dnl SEARCH_PATH="/usr/local /usr"     # you might want to change this
  dnl SEARCH_FOR="/include/hashtable_dump.h"  # you most likely want to change this
  dnl if test -r $PHP_HASHTABLE_DUMP/$SEARCH_FOR; then # path given as parameter
  dnl   HASHTABLE_DUMP_DIR=$PHP_HASHTABLE_DUMP
  dnl else # search default path list
  dnl   AC_MSG_CHECKING([for hashtable_dump files in default path])
  dnl   for i in $SEARCH_PATH ; do
  dnl     if test -r $i/$SEARCH_FOR; then
  dnl       HASHTABLE_DUMP_DIR=$i
  dnl       AC_MSG_RESULT(found in $i)
  dnl     fi
  dnl   done
  dnl fi
  dnl
  dnl if test -z "$HASHTABLE_DUMP_DIR"; then
  dnl   AC_MSG_RESULT([not found])
  dnl   AC_MSG_ERROR([Please reinstall the hashtable_dump distribution])
  dnl fi

  dnl # --with-hashtable_dump -> add include path
  dnl PHP_ADD_INCLUDE($HASHTABLE_DUMP_DIR/include)

  dnl # --with-hashtable_dump -> check for lib and symbol presence
  dnl LIBNAME=hashtable_dump # you may want to change this
  dnl LIBSYMBOL=hashtable_dump # you most likely want to change this 

  dnl PHP_CHECK_LIBRARY($LIBNAME,$LIBSYMBOL,
  dnl [
  dnl   PHP_ADD_LIBRARY_WITH_PATH($LIBNAME, $HASHTABLE_DUMP_DIR/lib, HASHTABLE_DUMP_SHARED_LIBADD)
  dnl   AC_DEFINE(HAVE_HASHTABLE_DUMPLIB,1,[ ])
  dnl ],[
  dnl   AC_MSG_ERROR([wrong hashtable_dump lib version or lib not found])
  dnl ],[
  dnl   -L$HASHTABLE_DUMP_DIR/lib -lm
  dnl ])
  dnl
  dnl PHP_SUBST(HASHTABLE_DUMP_SHARED_LIBADD)

  PHP_NEW_EXTENSION(hashtable_dump, hashtable_dump.c, $ext_shared)
fi
