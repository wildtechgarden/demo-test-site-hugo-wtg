#!/bin/bash

if [ -z "${HUGO_CACHEDIR}" ]; then
	HUGO_CACHEDIR="$(pwd)/hugo-cache"
fi

export HUGO_MODULE_REPLACEMENTS="github.com/wildtechgarden/wild-theme-shell-mod-hugo -> $(pwd)/../wild-theme-shell-mod-hugo, github.com/wildtechgarden/a-wild-theme-mod-hugo -> $(pwd)/../a-wild-theme-mod-hugo, github.com/wildtechgarden/demo-test-site-hugo-wtg -> $(pwd)/../wild-demo-test-site-hugo-wtg, github.com/wildtechgarden/module-starter-hugo-wtg -> $(pwd)/../module-starter-hugo-wtg, github.com/wildtechgarden/minimal-test-theme-hugo-wtg -> $(pwd)/../minimal-test-theme-hugo-wtg, github.com/wildtechgarden/audit-build-action-hugo -> $(pwd)/../audit-build-action-hugo"
export HUGO_RESOURCEDIR="$(pwd)/resources"
export SITEROOT="$(pwd)/tests/config"
export SITECONFIG="$(pwd)"/hugo.toml,"$(pwd)"/tests/config/demo-site.toml
hugo serve --buildDrafts --buildFuture --source "${SITEROOT}" --environment "${HUGO_ENV:-development}" --config "${SITECONFIG}"
