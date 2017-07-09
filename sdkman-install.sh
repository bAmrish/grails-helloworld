#!/bin/bash

#[[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && 

source "/usr/local/sdkman/bin/sdkman-init.sh"

sdk install grails 3.2.9

which grails > ~/.import

export GRAILS_HOME=`which grails`

echo "export PATH=\"$GRAILS_HOME:\$PATH\"" > ~/.import