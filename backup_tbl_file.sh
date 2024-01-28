#!/bin/bash

# Настройки подключения к MySQL
user="root"
pass="qq"
db="TEST3"
BACKUP_DIR="/home/qqee/backup_table_mysql"

# Получаем список таблиц в базе данных
TABLES=$(mysql -u $user -p$pass -N -B -e "SHOW TABLES FROM $db")

# Создание директории для резервных копий
mkdir -p $BACKUP_DIR

# Создаем бэкап каждой таблицы в отдельном файле
for TABLE in $TABLES; do
    mysqldump -u$user -p$pass --set-gtid-purged=OFF --source-data=1 --add-drop-table --add-locks --create-options --disable-keys --extended-insert --single-transaction --quick --set-charset --events --routines --triggers $db $TABLE > $BACKUP_DIR/$TABLE.sql;

    # Проверка успешности выполнения команды mysqldump
    if [ $? -eq 0 ]; then
        echo "Резервная копия таблицы $TABLE создана успешно. Путь к таблицам: $BACKUP_DIR."
    else
        echo "Возникла ошибка при создании резервной копии таблицы $TABLE."
    fi
done
