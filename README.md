# puppet2pulp

Use this for a Docker based workflow with a Puppetfile, librarian-puppet for pulling Puppet modules and pulp-puppet-module-builder for generating an archive for Pulp/Katello/Satellite 6.

    librarian-puppet install --path ${moduledir}  --clean --destructive --verbose
    pulp-puppet-module-builder ${moduledir} --output-dir=${pubdir}

1. Clone this repository
1. Add the puppet modules you need to the Puppetfile
1. If you want to use a private Docker registry, use the Dockerfile for building your image
1. If you're using Gitlab with a Gitlab CI runner, push this repository to Gitlab. Otherwise integrate your own CI service or run run.sh manually

