#!/bin/sh

moduledir=$(mktemp -d --suffix=_modules)
#pubdir="/var/www/html/pub/puppet-modules"
pubdir="${PWD}/modules"

librarian-puppet install --path ${moduledir}  --clean --destructive --verbose
pulp-puppet-module-builder ${moduledir} --output-dir=${pubdir}
