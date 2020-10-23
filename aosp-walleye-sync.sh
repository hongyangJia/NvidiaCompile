#!/bin/bash
mkdir WORKING_DIRECTORY
cd WORKING_DIRECTORY
git config --global user.name "hongyang"
git config --global user.email "hongyooo.com"
repo init -u https://android.googlesource.com/platform/manifest -b android-10.0.0_r41
repo sync -j10
