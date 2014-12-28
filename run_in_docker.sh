set -eu

php_version=$1
docker run -it --rm -v "$(pwd)":/work -w /work php:${php_version}-cli sh build_and_run.sh
