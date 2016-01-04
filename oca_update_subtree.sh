#!/bin/sh

#set -o errexit

VERSION="8.0"
DIR=$(cd `dirname $0`; pwd)
BASE=`basename $0`

if [ -n "$1" ]; then
    VERSION="$1"
fi

echo Pull all subtree repo...
find $DIR -maxdepth 1 -mindepth 1 -type d -not -path '$DIR/.git' | xargs -I '{}' basename '{}' | xargs -I '{}' git subtree pull --prefix '{}' '{}' $VERSION
echo End.
