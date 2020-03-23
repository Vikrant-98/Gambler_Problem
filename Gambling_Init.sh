#!/bin/bash -x

gambler=100
gambler_bet=1
val=$((RANDOM%2))
Gambler_Stake_Win=$(($gambler+$gambler/2))
Gambler_Stake_Loose=$(($gambler-$gambler/2))
while [[ $gambler != $Gambler_Stake_Win && $gambler != $Gambler_Stake_Loose  ]]
do
val=$((RANDOM%2))

        if [[ $val == 1 ]]
        then
                gambler=$(($gambler+$gambler_bet))
        elif [[ $val == 0 ]]
	then
                gambler=$(($gambler-$gambler_bet))
        fi
done
