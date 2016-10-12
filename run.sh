#!/bin/bash
codedir="/root/puppet-code"
moduledir="${codedir}/modules"
pubdir="/var/www/html/pub/puppet-modules"

cd $codedir
librarian-puppet install --path ${moduledir}  --clean --destructive --verbose
pulp-puppet-module-builder ${moduledir} --output-dir=${pubdir}
