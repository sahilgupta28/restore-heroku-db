#!/bin/bash

#Start
declare -- file_name="latest.dump"; #This is default dump name.
declare -- host="your_hoat";
declare -- username="your_username";
declare -- password="your_password";
rm -rf $file_name

#user Inputs
PS3='Heroku is already logged in on your system: '
options=("Yes" "No")
select opt in "${options[@]}"
do
    case $opt in
        "Yes")
            echo -e "\033[1;32;41m Okay! Thanks for the information. \e[0m";
            break;;

        "No")
            heroku login;
            break;;
        *) echo "invalid option $REPLY";;
    esac
done

PS3='Select Heroku APP: '
options=("app-1" "app-2" "other")
select app_name in "${options[@]}"
do
    case $app_name in
        "app-1b")
            break;;

        "app-2")
            break;;
          "other")
            read -p "Enter your app name: "  app_name
            break;;
        *) echo "invalid option $REPLY";;
    esac
done
read -p "Enter your DB name on local: " db_name;

#Show inputs response
echo -e "\033[1;32;41m APP name - $app_name \e[0m";
echo -e "\033[1;32;41m DB name - $db_name  $file_name\e[0m";

#Backup Start
heroku pg:backups:capture -a $app_name;
heroku pg:backups:download -a $app_name;

#Restore
pg_restore --verbose --clean --no-acl --no-owner -h $host -U $username -d $db_name $file_name -w;

#Remove File
rm -rf $file_name;