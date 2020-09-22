#!/bin/bash
echo "init shield-open-source !"
cd ~/shield-open-source

#export JACK_SERVER_VM_ARGUMENTS="-Dfile.encoding=UTF-8 -XX:+TieredCompilation -Xmx4g"
./prebuilts/sdk/tools/jack-admin kill-server
./prebuilts/sdk/tools/jack-admin start-server

export LC_ALL=C

export TOP=`pwd`
echo TOP
cd vendor/nvidia/licensed-binaries
./extract-nv-bins.sh
cd $TOP
echo "build shield-open-source !"
. build/envsetup.sh
setpaths
echo "luanch darcy-userdebug !"
lunch darcy-userdebug
echo "make !"
mp dev
