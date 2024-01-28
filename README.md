 <!---Пример кода-->
[![Typing SVG](https://readme-typing-svg.herokuapp.com?color=%2336BCF7&lines=Computer+science+student)](https://git.io/typing-svg)

> [!CAUTION] 
> ## ЗАПУСКАТЬ СКРИПТЫ ОТ ПОЛЬЗОВАТЕЛЯ ROOT
 
### НАСТРОЙКА APACHE2
### 1. Настраиваем статические ip адреса:
   
* #### Запустить скрипт networkd_static_ip.sh, он настроит статический ip

### 2. Копируем конфиги apache2:
   
* #### Запустить скрипт apache_script_b1.sh, он скопирует конфиг и перезапустит сервис apache2

### 3. Установка node_exporter:
   
* #### Запустить скрипт node_exporter.sh, он установит и настроит node_exporter
#

### MYSQL (SOURCE)

### 4. Настройка MySQL:

* #### Запустить скрипт mysql_script_source.sh, он настроит MySQL и создаст пользователя для репликации
  
* #### На сервере с репликой запустить скрипт mysql_scrip_slave.sh, он настроит MySQL и изменит источник репликации
  
#
* ### Для бэкапа б\д использовать скрипт backup_database_file.sh
* ### Для бэкапа таблиц из б\д использовать скрипт backup_tbl_file.sh
* ### Для восстанавления б\д запустить скрипт recovery_base.sh
