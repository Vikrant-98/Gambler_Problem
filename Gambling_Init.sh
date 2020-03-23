#!/bin/bash -x

gambler=100
gambler_bet=1
val=$((RANDOM%2))

        if [ $val -eq 1 ]
        then
                gambler=$(($gambler+$gambler_bet))
        else
                gambler=$(($gambler-$gambler_bet))
        fi

