#!/bin/sh

#set -o errexit

VERION="8.0"
if [ -n "${2}" ]; then
    VERION="${2}"
fi

if [ -n "${1}" ]; then
    git remote add -f ${1} git@github.com:OCA/${1}.git
    git subtree add pull --prefix=${1} ${1} $VERION --squash
    rm -rf ~/.local/share/Odoo/addons/$VERSION/${1}
    ln ~/.local/share/Odoo/addons/$VERSION/${1} ${1}
else
    echo "${0} repo-name version"
fi
