#!/bin/bash

# Зміна часового поясу
change_timezone() {
    echo "Enter a new time zone (for example, 'Europe/Kiev'): "
    read timezone

    if [ -f /usr/share/zoneinfo/$timezone ]; then
        sudo ln -sf /usr/share/zoneinfo/$timezone /etc/localtime
        echo "New time zone: $timezone."
    else
        echo "Incorrect time zone"
    fi
}

# Робота з псевдонімами
manage_aliases() {
    echo "1. Add alias"
    echo "2. Remove alias"
    echo "3. Exit"
    read number

    case $number in
        1)
            echo "Input alias: "
            read alias_name
            echo "Input command: "
            read command
            echo "alias $alias_name=\"$command\"" >> ~/.bashrc
            source ~/.bashrc
            echo "Success."
            ;;
        2)
            echo "Input alias: "
            read alias_name
            sed -i "/^alias $alias_name=/d" ~/.bashrc
            source ~/.bashrc
            echo "Succes."
            ;;
        3)
            echo "Exit..."
            ;;
        *)
            echo "Incorrect choice"
            ;;
    esac
}


while true; do
    echo "1. Change time zone"
    echo "2. Alias"
    echo "3. Exit"
    read choice

    case $choice in
        1)
            change_timezone
            ;;
        2)
            manage_aliases
            ;;
        3)
            exit 0
            ;;
        *)
            echo "Incorrect choice"
            ;;
    esac
done
