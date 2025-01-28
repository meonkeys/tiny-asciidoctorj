#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail
set -o xtrace

# For more output, add any/all of these:
# --console=plain
# --debug
# --info
# --stacktrace
./gradlew --no-daemon clean asciidoctor asciidoctorPdf
