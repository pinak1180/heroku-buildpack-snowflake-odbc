#!/bin/bash

export ODBCSYSINI=${HOME}/.apt/usr/lib/snowflake/odbc/conf/

echo "[snowflake]
Description=SnowflakeDB
Driver=SnowflakeDSIIDriver
Locale=en-US
PORT=443
SSL=on
Query_Timeout=500
CLIENT_SESSION_KEEP_ALIVE=true
uid=${SNOWFLAKE_USERNAME}
pwd=${SNOWFLAKE_PASSWORD}
server=${SNOWFLAKE_SERVER}
database=${SNOWFLAKE_DATABASE}
account=${SNOWFLAKE_ACCOUNT}
schema=${SNOWFLAKE_SCHEMA}
" > ${ODBCSYSINI}/odbc.ini

