#!/usr/bin/env bash

set -e

base_dir=$(readlink -nf $(dirname $0)/../..)
source $base_dir/lib/prelude_config.bash

# Download CLI source or release from github into assets directory
cd $assets_dir
rm -rf azureblobcli
mkdir azureblobcli
current_version=0.0.1

curl -L -o azureblobcli/azureblobcli https://binxidevstorageaccount.blob.core.windows.net/tmp/bosh-azureblobcli-0.0.1-linux-amd64
echo "a72e23ba236ed11f98848a0a25b973df50c63be4 azureblobcli/azureblobcli" | sha1sum -c -
