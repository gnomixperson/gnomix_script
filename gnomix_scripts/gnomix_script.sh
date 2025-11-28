#!/bin/bash

# source stuff rqrq
source ./greet.sh
source ./install_script.sh
source ./prompt_helper.sh
source ./install_de.sh

name="Patricia"

if [ "$EUID" -ne 0 ]; then
    echo "run as root"
    exit 1
fi

safe_prompt "do the thing?" "y n" x
if [[ "$x" = "y" || "$x" = "Y" ]]; then

    output_line "hi" 2 
    output_line "..." 2
    output_line "let me walk you through the Ubuntu-Gnomix customization process." 2
    output_line "..." 2
    output_line "My name is toootalllyyyyy $name" 2
    
    safe_prompt "continue? The script will begin performing operations on your computer." "y n" install_signal

    install_signal=$(echo "$install_signal" | tr '[:upper:]' '[:lower:]')

fi
if [ "$install_signal" = "y" ]; then
    output_line "that's cool. " 2
    output_line "lets customize your PC! Hope its sunny, you're running this script inside a freezer not exceeding 25° on a weekend but not in november because this script is scrappy." 2
    output_line "im kidding." 2
    
    output_line "okay, so in this script, i'll let you decide what to install. Mostly. We'll also be removing snaps and getting u a new DE/WM (whatever you want!)" 6
    output_line "I'll have some more info on the website, | gnomix.linkpc.net | check it out, @chichbo made it." 5
    echo "-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-" && sleep 2

    output_line "3" 1
    output_line "2" 1
    output_line "1" 1
    output_line "REMOVING SNAP!!!!!!" 1
    remove_package "snap stuff" snapd

    output_line "OH NO" 0.5
    output_line "OH NO" 0.5
    output_line "OH NO" 0.5
    output_line "OH NO" 0.5
    output_line "OH NO" 0.5
    output_line "OH NO" 0.5
    output_line "NOOO NOOO ONO O OO O O" 2
    
    output_line "I BROKE YOUR COMPUTER." 2
    output_line "patricia get out
    - im trying to prank this user
    GET OUT." 5

    name="Bob" 
    output_line "hi, i'm $name" 5
    output_line "dont worry, patricia was kidding. no harm has been inflicted on your computer." 5

    output_line "I know, Patricia sucks, right? or do you want her to continue with the customization?" 1

    safe_prompt "who do you want to assist you? " "Bob Patricia custom" name
    if [ "$name" = "Bob" ]; then
        output_line "Oh nice choice, you chose me. I'm $name." 1
    
    elif [ "$name" = "Patricia" ]; then 
        output_line "grtha-d awe SMASH get out of here, bob!!!!! HI, I'm $name. Nice choice. I'm the original assistant AND im funny AND Im better than bob." 1
    
    else
        output_line "Oh cool, custom name? WHAT??? They're replacing me and patricia with... $name? THATS WILD! NOOO PLEASEEEEEEEEE!" 1
        output_line "Hi, I'm $name. It appears you have chosen me, because my name is quite cool and whatnot. I hope. I cant actually read it so yeah. Well, I'll be continuing your customization." 1
    fi
    
    output_line "Dont worry, your choice doesnt affect the rest of the customization, it's purely cosmetic. So, $name shall be helping you henceforth." 1


    output_line "Let's install a.... better DE?" 5
    safe_prompt "choose DE/WM of your choice!" "kde gnome swaywm" chosen_desktop

    if [ "$chosen_desktop"="kde" ] then
        install_kde 
    
    elif [ "$chosen_desktop"="gnome" ] then
        install_gnome
    
    elif
    elif [ "$chosen_desktop"="swaywm" ] then
        install_sway
    fi
    if [ ]
    
    
fi