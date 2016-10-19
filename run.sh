#!/bin/sh

moduledir=$(mktemp -d --suffix=_modules)
#pubdir="/var/www/html/pub/puppet-modules"
pubdir=$(mktemp -d --suffix=_pubdir)

librarian-puppet install --path ${moduledir}  --clean --destructive --verbose
pulp-puppet-module-builder ${moduledir} --output-dir=${pubdir}
ls -la ${pubdir}
