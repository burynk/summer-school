#!/bin/bash 

DB_NAME=moodle
DB_USER=moodleuser
DB_PASS=password

filename=$DB_NAME"_backup_"`date +%Y.%m.%d_%H:%M`".sql"

#check to see if mysql is running 
mysql=`systemctl status mysql | grep running`
if [[ ${mysql} == 0 ]];
then
    echo "Error: MySQL service is not running. To make a backup, please start the service first."
    exit 1
else 
    echo "Alles in ordnung, starting the backup"
fi

echo "The file will be called: $filename"
`mysqldump -u $DB_USER -p$DB_PASS $DB_NAME > $filename`
