#!/bin/sh

#set -o errexit

VERION="8.0"
if [ -n "${2}" ]; then
    VERION="${2}"
fi

if [ -n "${1}" ]; then
    git remote add -f ${1} git@github.com:OCA/${1}.git
    git subtree add --prefix=${1} ${1} $VERION --squash
else
    echo "repo name needed"
fi
