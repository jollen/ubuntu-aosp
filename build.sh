#!/bin/bash
#
set -ex

# use ccache
export USE_CCACHE=1
export CCACHE_DIR=/var/aosp/source/.ccache
prebuilts/misc/linux-x86/ccache/ccache -M 50G

source build/envsetup.sh
lunch aosp_arm-eng
make


