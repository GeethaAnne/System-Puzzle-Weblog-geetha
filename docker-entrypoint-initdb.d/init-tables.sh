#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username dbuser --dbname webserver <<-EOSQL
        CREATE TABLE  weblogs (
               date text,
               status varchar(3),
               source varchar(6)
               );
EOSQL
