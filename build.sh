#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

set -o xtrace

cd "$SCRIPT_DIR"

# For more output, add:
# --progress=plain
docker build -t tinytest-docs-builder .

docker run --rm -v "$(pwd):/tinytestdoc" --user "$(id -u):$(id -g)" tinytest-docs-builder ./internal-build.sh
