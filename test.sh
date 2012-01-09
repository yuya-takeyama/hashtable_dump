#!/bin/sh
php -d enable_dl=On -d extension_dir=./modules -r 'dl("hashtable_dump.so");hashtable_dump(array());'
