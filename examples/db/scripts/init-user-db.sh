#!/bin/bash
set -e

#grant usage on schema reference
#https://stackoverflow.com/questions/67276391/why-am-i-getting-a-permission-denied-error-for-schema-public-on-pgadmin-4

# YouTube reference video on granting priviledges
#https://www.youtube.com/watch?v=fQcCg6eREyo

psql -v ON_ERROR_STOP=1 --username "postgres" --dbname "postgres" <<-EOSQL
	CREATE USER cerebro WITH PASSWORD '1122334455';
	CREATE DATABASE cerebro;
	GRANT ALL PRIVILEGES ON DATABASE cerebro TO cerebro;
    GRANT USAGE ON SCHEMA public TO cerebro;
EOSQL