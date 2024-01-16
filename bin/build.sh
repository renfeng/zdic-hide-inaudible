#!/bin/bash

set -e

cd "$(dirname "$0")/.."
target=dist/public

mkdir -p "${target}"
rsync --exclude=*.test.mjs -r src/. "${target}"

echo 'Open in Edge, edge://extensions'
echo 'Enable "Developer mode"'
echo 'Load unpacked'
echo 'Copy and paste the following path'
if (command -v cygpath >/dev/null); then
  cygpath -w "$(realpath "${target}")"
else
  realpath "${target}"
fi
