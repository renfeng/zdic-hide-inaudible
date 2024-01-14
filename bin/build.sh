#!/bin/bash

set -e

cd "$(dirname "$0")/../src"

mkdir -p ../dist
zip -r ../dist/zdic-hide-inaudible.zip *
