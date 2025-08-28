#!/bin/bash

echo "Script Name: $0"

function func {
    for var in $*
    do 
      let i=i+1
      echo "\$[${i}] is: ${var}"
    done
    echo "Total number of arguments: $#"
}

func "$@"
