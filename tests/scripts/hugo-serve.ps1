$Env:HUGO_RESOURCEDIR="$PWD\resources"
hugo.exe  serve --buildDrafts --buildFuture --environment "development" --config '$PWD\tests\config/demo-site.toml' --destination '$PWD\public' --source '$PWD\tests\config'
