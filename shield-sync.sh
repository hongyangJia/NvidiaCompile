#!/bin/bash

echo "init repo!"
mkdir ~/bin
PATH=~/bin:$PATH
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo

echo "sync open-source !"
cd ~/shield-open-source
repo init -u git://nv-tegra.nvidia.com/manifest/android/binary.git -b rel-29-partner -m tlk/t210.xml
repo sync -j12
