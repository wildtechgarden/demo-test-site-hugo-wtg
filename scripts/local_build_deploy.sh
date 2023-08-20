#!/bin/bash

set -e
set -o pipefail

rm -rf public

export BASEURL="https://www.wtg-demos.ca/"

HUGO_RESOURCEDIR="$(pwd)"/resources hugo --gc --minify -b $BASEURL --source "$(pwd)" --destination "$(pwd)"/public
rclone sync --progress public/ wtgdemos:./
