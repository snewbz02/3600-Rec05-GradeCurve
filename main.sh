#! /bin/bash

# Written by Sienna Newby-Sanchez

# Function to curve grades
function curve {
    local incr=$1
    shift
    local arr=("$@")
    local index=0

    for i in "${arr[@]}"; do
        let "grades[$index]=i+incr"
        let "index++"
    done
}
