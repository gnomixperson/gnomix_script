#!/bin/bash

# usage: safe_prompt "question" "valid_options" "var_name"
# example: safe_prompt "Do the thing? (y/n)" "y n" x
# essentially it loops and shi idk

function safe_prompt() {
    local question="$1"
    local options="$2"
    local var_name="$3"
    local input

    # format the options nicely
    local opts_display="$options"
    if [[ "$options" == *"custom"* ]]; then
        opts_display="$options (or type custom value)"
    fi

    while true; do
        read -r -p "$question [$opts_display]: " input
        input=$(echo "$input" | tr '[:upper:]' '[:lower:]')

        for opt in $options; do
            if [[ "$opt" == "custom" ]]; then
                eval "$var_name=\"$input\""
                return
            elif [[ "$input" == "$opt" ]]; then
                eval "$var_name=\"$input\""
                return
            fi
        done

        echo "please enter one of: $options (or type a custom value if 'custom' is allowed)"
    done
}