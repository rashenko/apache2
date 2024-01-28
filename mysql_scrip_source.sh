#!/bin/bash

user="root"
pass="qq"

# Заменяем строку в файле mysqld.cnf
config_file="/etc/mysql/mysql.conf.d/mysqld.cnf"
new_bind_address="bind-address = 0.0.0.0"

# Проверяем, существует ли файл mysqld.cnf
if [ -f "$config_file" ]; then
    # Заменяем строку с помощью sed
    sed -i "s/^bind-address\s*=\s*127.0.0.1/$new_bind_address/" $config_file
else
    echo "Файл $config_file не найден"
fi
# Добавляем новые строки в файл с помощью echo и оператора перенаправления >>
if [ -f "$config_file" ]; then
    echo "server-id = 1" >> $config_file
    echo "binlog_format = row" >> $config_file
    echo "gtid-mode=ON" >> $config_file
    echo "enforce-gtid-consistency" >> $config_file
    echo "log-replica-updates" >> $config_file
else
    echo "Файл $config_file не найден"
fi
service mysql restart
echo "Конфиг MySQL настроен!"

# Создаём пользователя для реплики
mysql -u$user -p$pass -e "CREATE USER 'repl'@'%' IDENTIFIED WITH 'caching_sha2_password' BY 'qq';"
# Даём ему права на репликацию
mysql -u$user -p$pass -e "GRANT REPLICATION SLAVE ON *.* TO 'repl'@'%';"
echo "Пользователь repl добавлен в MySQL и получил права на репликацию."
# Устанавливаем пароль
mysql -u$user -p$pass -e "ALTER USER 'root'@'localhost' IDENTIFIED WITH 'caching_sha2_password' BY 'qq';"
echo "Сервис Mysql готов к работе!"
