#!/bin/bash
cd WORKING_DIRECTORY
#m clean
export LC_ALL=C
source build/envsetup.sh
lunch aosp_walleye-userdebug
m
