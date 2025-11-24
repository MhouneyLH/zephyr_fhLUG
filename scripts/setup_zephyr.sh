#!/bin/bash

# run this script in the vm to setup zephyr environment
# see here for more information: https://docs.zephyrproject.org/latest/develop/getting_started/index.html

set -e

sudo apt update -y && sudo apt upgrade -y

sudo apt install --no-install-recommends git cmake ninja-build gperf \
  ccache dfu-util device-tree-compiler wget python3-dev python3-venv python3-tk \
  xz-utils file make gcc gcc-multilib g++-multilib libsdl2-dev libmagic1

cmake --version
python3 --version
dtc --version

#######################################

python3 -m venv ~/zephyrproject/.venv

source ~/zephyrproject/.venv/bin/activate

pip install west
alias ost="west" # I USE MY FREE WILL

ost init ~/zephyrproject
cd ~/zephyrproject
ost update

ost zephyr-export

ost packages pip --install

########################################
# install zephyr sdk

cd ~/zephyrproject/zephyr
ost sdk install