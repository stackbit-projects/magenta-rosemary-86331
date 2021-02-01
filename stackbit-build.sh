#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# build site
npm run build

./inject-stackbit-widget.js public https://widget.stackbit.com/init.js 6018633124d96c00156d068c

echo "stackbit-build.sh: finished build"
