 <!---Пример кода-->
[![Typing SVG](https://readme-typing-svg.herokuapp.com?color=%2336BCF7&lines=Computer+science+student)](https://git.io/typing-svg)

> [!CAUTION] 
> ## ЗАПУСКАТЬ СКРИПТЫ ОТ ПОЛЬЗОВАТЕЛЯ ROOT

### APACHE
   > #Установка Apache
   
    sudo apt install apache2
#
   > #Запуск Apache
   
    sudo systemctl start apache2
#
   > #Проверка статуса
   
    sudo systemctl status apache2
#
### MySQL

   > #Устанавливаем MySQL
    
    sudo apt install mysql-server-8.0
#
   > #Запускаем
    
    sudo systemctl start mysql

   > #Проверка статуса
   
    sudo systemctl status mysql
#
### Node Exporter

   > #Скачиваем Node Exporter
    
    wget https://github.com/prometheus/node_exporter/releases/download/v1.6.1/node_exporter-1.6.1.linux-amd64.tar.gz
#
   > #Распаковка архивов
   
    sudo tar xzvf node_exporter-*.t*gz
#

### НАСТРОЙКА APACHE2
### 1. Настраиваем статические ip адреса :
   
* #### Запустить скрипт [networkd_static_ip.sh](https://github.com/rashenko/backend1-git/blob/main/networkd_static_ip.sh), он настроит статический ip

### 2. Копируем конфиги apache2 :
   
* #### Запустить скрипт [apache_script_b1.sh](https://github.com/rashenko/backend1-git/blob/main/apache_script_b1.sh), он скопирует конфиг и перезапустит сервис apache2

### 3. Установка node_exporter :
   
* #### Запустить скрипт [node_exporter.sh](https://github.com/rashenko/backend1-git/blob/main/node_exporter.sh), он установит и настроит node_exporter
#

### MYSQL (SOURCE)

### 4. Настройка MySQL :

* #### Запустить скрипт [mysql_script_source.sh](https://github.com/rashenko/backend1-git/blob/main/mysql_scrip_source.sh), он настроит MySQL и создаст пользователя для репликации
  
* #### На сервере с репликой запустить скрипт [mysql_scrip_slave.sh](https://github.com/rashenko/backend2-git/blob/main/mysql_scrip_slave.sh), он настроит MySQL и изменит источник репликации
  
#
* ### Для бэкапа б\д использовать скрипт [backup_database_file.sh](https://github.com/rashenko/backend1-git/blob/main/backup_database_file.sh)
* ### Для бэкапа таблиц из б\д использовать скрипт [backup_tbl_file.sh](https://github.com/rashenko/backend1-git/blob/main/backup_tbl_file.sh)
* ### Для восстанавления б\д запустить скрипт [recovery_base.sh](https://github.com/rashenko/backend1-git/blob/main/recovery_base.sh)
