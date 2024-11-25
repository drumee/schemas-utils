#!/bin/bash

if [ -x /usr/bin/mariadb-dump ]; then
  export DUMPER=/usr/bin/mariadb-dump
  export DB_BIN==/usr/bin/mariadb
elif [ -x /usr/bin/mysqldump ]; then
  export DUMPER=/usr/bin/mysqldump
  export DB_BIN==/usr/bin/mysql
else
  echo DUMPER not found
  exit 1
fi

$DB_BIN -e "set GLOBAL character_set_collations='utf8mb4=utf8mb4_general_ci'"
