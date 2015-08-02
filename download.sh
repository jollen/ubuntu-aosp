#!/bin/bash
#
set -ex

# get repo command line tool
curl https://storage.googleapis.com/git-repo-downloads/repo > ./repo
chmod a+x repo
mv ./repo /bin

# download aosp
repo init -u https://android.googlesource.com/platform/manifest -b android-4.4.4_r2.0.1
repo sync

