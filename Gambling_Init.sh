#!/bin/bash -x

gambler=100
Gambler_bet=1
Gambler_Stake_Win=$(($gambler+$gambler/2))
Gambler_Stake_Loose=$(($gambler-$gambler/2))
Gambler_Fix=100
gambler_Total_Money=0
day_Count=0
count1=0
count2=0
while [ $day_Count != 20 ]
do
((day_Count++))
gambler=$Gambler_Fix
while [[ $gambler != $Gambler_Stake_Win && $gambler != $Gambler_Stake_Loose ]]
do
val=$((RANDOM%2))
        if [[ $val == 1 ]]
        then
                gambler=$(($gambler+$Gambler_bet))
        	((count1++))
	elif [[ $val == 0 ]]
	then
                gambler=$(($gambler-$Gambler_bet))
        	((count2++))
	fi
gambler_Total_Money=$(($gambler_Total_Money+$gambler-$Gambler_Fix))
done
done

