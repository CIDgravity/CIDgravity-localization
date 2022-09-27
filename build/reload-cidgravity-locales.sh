#!/bin/sh

cd $HOME/cidgravity/cidgravity-localization/cidgravity
while inotifywait -e close_write ./locales/** ; do ./update-locales.sh; done
# Whenever there are files in `packaged` use this command instead:
# while inotifywait -e close_write ./locales/** ../shared/packaged/locales/** ; do ./update-locales.sh; done
