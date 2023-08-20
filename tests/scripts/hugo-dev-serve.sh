#!/bin/bash

if [ -z "${HUGO_CACHEDIR}" ]; then
	HUGO_CACHEDIR="$(pwd)/hugo-cache"
fi

export HUGO_MODULE_REPLACEMENTS="github.com/wildtechgarden/minimal-test-theme-hugo-wtg -> ../../minimal-test-theme-hugo-wtg"
export HUGO_RESOURCEDIR="$(pwd)/resources"
hugo  serve --buildDrafts --buildFuture --source $(pwd) --environment "development" --config "$(pwd)"/hugo.toml --destination $(pwd)/public
