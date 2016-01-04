#!/bin/sh

#set -o errexit

VERSION="8.0"
if [ -n "${2}" ]; then
    VERSION="${2}"
fi

if [ -n "${1}" ]; then
    git remote add -f ${1} git@github.com:OCA/${1}.git
    git subtree add --prefix=${1} ${1} $VERSION --squash
    rm -rf ~/.local/share/Odoo/addons/$VERSION/${1}
    find ${1} -maxdepth 1 -mindepth 1 -type d | xargs ln -st ~/.local/share/Odoo/addons/$VERSION/
else
    echo "${0} repo-name version"
fi
