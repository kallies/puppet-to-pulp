#!/bin/sh

#codedir="/puppet-code"
moduledir="${codedir}/modules"
pubdir="/var/www/html/pub/puppet-modules"

#mkdir ${codedir}
#cd ${codedir}
librarian-puppet install --path ${moduledir}  --clean --destructive --verbose
pulp-puppet-module-builder ${moduledir} --output-dir=${pubdir}
