#!/usr/bin/env bash
#

set -e

base_dir=$(readlink -nf $(dirname $0)/../..)
source $base_dir/lib/prelude_apply.bash
source $base_dir/lib/prelude_bosh.bash

cd $assets_dir/azureblobcli
mv azureblobcli $chroot/var/vcap/bosh/bin/bosh-blobstore-azureblob
chmod +x $chroot/var/vcap/bosh/bin/bosh-blobstore-azureblob
