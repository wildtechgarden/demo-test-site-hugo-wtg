#!/bin/bash

set -e
set -o pipefail

rm -rf public

export BASEURL="https://www.wtg-demos.ca/"
export SITECONFIG="--config $(pwd)/hugo.toml,$(pwd)/tests/config/demo-site.toml"

HUGO_RESOURCEDIR="$(pwd)"/resources hugo --gc --minify -b $BASEURL --source "$(pwd)/tests/config" --destination "$(pwd)"/public ${SITECONFIG}
rclone sync --progress --checksum public/ wtgdemos:./
