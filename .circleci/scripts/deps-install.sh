#!/usr/bin/env bash

set -x
set -e
set -u
set -o pipefail

yarn --frozen-lockfile --ignore-scripts --har

# install script whitelist
(cd node_modules/wd && yarn run install)