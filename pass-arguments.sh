#!/bin/bash
function File {
    echo "Number of arguments: $#"
    for arg in "$@"; do
        echo "$arg"
    done
}

# Do not change anything
if [ $# -ge 1 ]; then
    File $*
    exit 0
fi

# change here
# here you can pass the arguments
bash pass-arguments.sh one two three