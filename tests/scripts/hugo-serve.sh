#!/bin/bash

export HUGO_RESOURCEDIR="$(pwd)/resources"
hugo  serve --buildDrafts --buildFuture --source $(pwd) --environment "development" --config "$(pwd)"/hugo.toml --destination $(pwd)/public
