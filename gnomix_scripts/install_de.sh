#!/bin/bash

source ./install_script.sh
source ./greet.sh
source ./three2one.sh
source ./prompt_helper.sh

function install_sway () {
    output_line "SwayWM, or sway for short, is our recommended choice for Gnomix customization!" 1
    output_line "Let's install sway for you." 1
    three2one
    install_package "SwayWM" "sway"
    output_line "Very cool, sway is now installed!"
}

function install_kde () {
    output_line "KDE Plasma, or KDE (also called plasma) in short, is a great choice for Gnomix customization!" 1
    output_line "Let's install Plasma for you." 1
    three2one
    install_package "KDE Plasma" "plasma-desktop"
    output_line "Very cool, KDE Plasma is now installed!"
}


function install_gnome () {
    output_line "GNOME Desktop, or just Gnome, is a great choice for Gnomix customization!" 1
    output_line "Let's install GNOME for you." 1
    three2one
    install_package "Gnome" "gnome"
    output_line "Very cool, GNOME is now installed!"
}

function install_cinnamon () {
    output_line "Cinnamon, is a questionable choice for Gnomix customization! It will definitely work, but at what cost? -Patricia, you're supposed to say 'solid choice' or smtg you IDIOT" 1
    output_line "Let's install Cinnamon for you." 1
    three2one
    install_package "Cinnamon" "cinnamon"
    output_line "Very cool, Cinnamon is now installed!"
}

function install_xfce () {
    output_line "XFCE?? do you. have a. giggle. bit. of. ram. I'm kidding I use XFCE on my 16GBs, it's solid.." 1
    output_line "Installing XFCE for you." 1
    three2one
    install_package "XFCE" "xfce4"
    output_line "Very cool, XFCE is now installed!"
}

function install_mate () {
    output_line "MATE, ah yes, gnome 2 but less coo- i mean, i respect your choice. at least its not lxde am i right." 1
    output_line "Installing MATE for you." 1
    three2one
    install_package "MATE" "mate-desktop-environment"
    output_line "Very cool, MATE is now installed!"
}

function install_lxde () {
    output_line "LXDE? DO YOU HAVE A GIGGLEBIT OF RAM?? NOT EVEN A GIGABYTE, OR EVEN A GIGABIT, I WILL COME TO YOUR HO-." 1
    output_line "Installing LXDE for you." 1
    three2one
    install_package "LXDE" "lxde"
    output_line "Very cool, LXDE is now installed!"
}

function install_budgie () {
    output_line "Budgie? Okay okay im not judging... *deep breath* WHAT IS WRONG WIT-" 1
    output_line "Installing Budgie for you." 1
    three2one
    install_package "Budgie" "ubuntu-budgie-desktop"
    output_line "Very cool, Budgie is now installed!"
}
