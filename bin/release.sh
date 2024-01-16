#!/bin/bash

set -e

basedir="$(dirname "$0")/.."
target="${basedir}/dist/public"
name=$(basename "$(realpath "${basedir}")")

rm -rf "${target}"

"${basedir}/bin/build.sh"

"${basedir}/bin/version.sh" >"${target}/version.txt"

pushd >/dev/null "${target}"
zip -FSrq "../${name}.zip" .
popd >/dev/null
