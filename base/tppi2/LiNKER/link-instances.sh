#! /usr/bin/env bash
set -Eeuo pipefail
cd "$(dirname "$0")"

if [ -d "$HOME/.local/share/polymc/instances" ]
then
    echo "Found polymc/prismlauncher instance root"
else
    echo "polymc/prismlauncher instance root not found!"
    exit 1
fi

if [ -d "$HOME/.local/share/polymc/instances/e31-mcu" ]
then
    echo "Instance already exists in folder e31-mcu! This script should only be run once."
    exit 1
fi

mkdir $HOME/.local/share/polymc/instances/e31-mcu

cp ./mmc-pack.json $HOME/.local/share/polymc/instances/e31-mcu/mmc-pack.json
cp ./instance.cfg $HOME/.local/share/polymc/instances/e31-mcu/instance.cfg

if [ -d "$HOME/.MCUpdater/instances/e31" ]
then
    echo "Found e31 MCUpdater instance"
else
    echo "MCUpdater e31 instance does not exist!"
    exit 1
fi

ln -s $(realpath $HOME/.MCUpdater/instances/e31) ~/.local/share/polymc/instances/e31-mcu/.minecraft
