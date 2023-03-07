#!/bin/bash

echo "Hello! This is a calculator!"

function calculator() {
    read -p "please input your question: " question
    calc=$((question))
    return $calc
}

function redo() {
    result=$?
    echo "The answer is $result"
    read -p "Do you want to calculate again? Y or N: " decide
}

while true; do
    calculator
    redo
    if [[ $decide == [yY] ]]; then
        calculator
        redo
    else
        echo "Bye!"
        break
    fi
done
