# Build WordPress Plugin On Travis CI

This is a simple shell script that builds a WordPress plugin on Travis CI for GitHub releases API.

* Run composer install.
* Remove unused files listed in `.distignore`.
* Generate a zip file.

```
$ curl https://raw.githubusercontent.com/miya0001/auto-build/master/auto-build.sh | bash
```

It probably should be use with following project. :smile:

https://github.com/miya0001/gh-auto-updater

## How to Build WordPress Plugin on Travis CI

Scaffolds a plugin.

```
$ wp scaffold plugin xxxx
```

Generate a `deploy` section for GitHub Releases.

```
$ travis setup releases
```

Add an build script into `.travis.yml`.

```
after_success:
- curl https://raw.githubusercontent.com/miya0001/auto-build/master/auto-build.sh | bash
```
