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

    # Read grades from user input
    for ((i=1; i<=5; i++)); do
        echo -n "Enter QUIZ #$i: "
        read grade
        grades[$((i-1))]="$grade"
    done

    # Call curve function
    curve "$curve_amount" "${grades[@]}"

    # Print curved grades
    echo "Curved Grades:"
    for ((i=0; i<${#grades[@]}; i++)); do
        echo "grades[$i] = ${grades[$i]}"
    done
fi
