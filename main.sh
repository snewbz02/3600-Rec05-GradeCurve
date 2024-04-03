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

# Check if a curve amount is provided as a command-line argument
if [ "$#" -ne 1 ]; then
    echo "usage: $0 <curve amount>"
else
    curve_amount=$1
    grades=()
fi
