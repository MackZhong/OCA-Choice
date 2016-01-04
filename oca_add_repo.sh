#!/bin/sh

#set -o errexit

VERSION="8.0"
DIR=$(cd `dirname $0`; pwd)
BASE=`basename $0`

if [ -n "$2" ]; then
    VERSION="$2"
fi

if [ -n "$1" ]; then
    echo Add remote repo...
    git remote add -f $1 git@github.com:OCA/$1.git
#    if [ $? -eq 0 ]; then
        echo Add subtree...
        git subtree add --prefix=$1 $1 $VERSION --squash
#        if [ $? -eq 0 ]; then
            echo Create symbol links...
            find $DIR/$1 -maxdepth 1 -mindepth 1 -type d | xargs ln -sft ~/.local/share/Odoo/addons/$VERSION/
            if [ $? -eq 0 ]; then
                echo End.
            fi
#        fi
#    fi
else
    echo "$BASE repo-name version"
fi
