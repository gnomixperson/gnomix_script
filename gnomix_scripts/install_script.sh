#!/bin/bash

source ./greet.sh
function install_package() {
    output_line "INSTALLING: ${1}" 1
    apt install -y ${2}
}
function remove_package() {
    output_line "REMOVING: ${1}" 1
    apt remove -y ${2}
}
function purge_package() {
    output_line "PURGING: ${1}" 1
    apt purge -y ${2}
}