set -e

./build.sh
php -d enable_dl=On -d extension_dir=`pwd`/modules test.php
