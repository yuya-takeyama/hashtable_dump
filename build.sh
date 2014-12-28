set -e

phpize --clean
phpize
./configure
make
