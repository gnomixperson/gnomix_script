#!/bin/bash

function install_package() {
    echo "INSTALLING: ${1}"
    apt install -y ${2}
}
function remove_package() {
    echo "REMOVING: ${1}"
    apt remove -y ${2}
}
function purge_package() {
    echo "PURGING: ${1}"
    apt purge -y ${2}
}