#! /bin/bash

echo "Welcome to flip coin combination"

declare -A flipCoin
IS_HEAD=1
counter=0
read -p "How many times you want to flip coin " noOfTime
function flipCoinFunction(){

        flipCoinResult=$((RANDOM%2))
        #echo $flipCoinResult

        if [ $flipCoinResult -eq $IS_HEAD ]
        then
                echo "H"
        else
                echo "T"
        fi
}
while [ $counter -lt $noOfTime ]
do
                returnValueFromFunction=`flipCoinFunction`
                flipCoin[$counter]=$returnValueFromFunction
                ((counter++))
done

for key in "${!flipCoin[@]}"; 
do
    echo "$key ${flipCoin[$key]}"
done
