#!/bin/bash
REGEX="^[0-9]+$"

if [[ ! $1 =~ $REGEX ]];
    then echo "Пожалуйста, при запуске скрипта укажите целое число параметром" >&2; exit 1
    else
        echo -n "This random text:" >> result_text

        for i in `seq 1 $1`; do
            echo -n "" `head -c 60 /dev/random | tr -cd 'a-zA-Z'` >> result_text
        done

        echo -n " " >> result_text
        chmod 777 result_text
fi