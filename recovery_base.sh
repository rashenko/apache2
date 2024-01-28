#!/bin/bash

user="root"
pass="qq"
db="TEST3"
tbl1="/home/qqee/backend1-git/TEST3_backup_mysql.sql"

# Создаем БД
mysql -u$user -p$pass -e "create database $db;"

#Восстановление таблиц
mysql -u$user -p$pass TEST3 < $tbl1

    # Проверка успешности выполнения команды mysqldump
    if [ $? -eq 0 ]; then
        echo "Резервная копия таблиц б/д $db восстановлена."
else
        echo "Возникла ошибка при создании восстановлении таблиц б/д $db."
    fi
