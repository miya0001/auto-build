# Build WordPress Plugin For Travis Releases

This is a simple shell script that builds a WordPress plugin.

* Run composer install.
* Remove some files that weren't needed.
* Change the version number in the plugin header to Tag.
* Generate a zip file.

```
$ curl https://raw.githubusercontent.com/miya0001/auto-build/master/auto-build.sh | bash
```

It probably should be use with following project.

https://github.com/miya0001/gh-auto-updater
