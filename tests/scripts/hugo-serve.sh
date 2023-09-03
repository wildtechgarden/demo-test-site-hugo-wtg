#!/bin/bash

if [ -z "${HUGO_CACHEDIR}" ]; then
	HUGO_CACHEDIR="$(pwd)/hugo-cache"
fi

unset HUGO_MODULE_REPLACEMENTS
export HUGO_MODULE_REPLACEMENTS
export HUGO_RESOURCEDIR="$(pwd)/resources"
export SITEROOT="$(pwd)"
export SITECONFIG="$(pwd)"/hugo.toml
hugo serve --buildDrafts --buildFuture --source "${SITEROOT}" --environment "${HUGO_ENV:-development}" --config "${SITECONFIG}"
