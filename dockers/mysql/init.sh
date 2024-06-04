#!/bin/bash

mysql=( mysql -uroot -p"${MYSQL_ROOT_PASSWORD}" )

"${mysql[@]}" <<-EOSQL
    GRANT ALL ON *.* TO 'root'@'%';
    GRANT ALL ON *.* TO 'developer'@'%';
EOSQL
