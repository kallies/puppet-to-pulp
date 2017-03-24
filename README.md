# puppet2pulp

Use this as a Docker based workflow with a Puppetfile, librarian-puppet for pulling Puppet modules and pulp-puppet-module-builder for generating an archive for Pulp/Satellite 6.

    librarian-puppet install --path ${moduledir}  --clean --destructive --verbose
    pulp-puppet-module-builder ${moduledir} --output-dir=${pubdir}

