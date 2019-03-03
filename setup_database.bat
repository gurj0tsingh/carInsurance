@ECHO off
:: Group #9
:: 
:: Uses SQL*Plus utility to run the SQL scripts that create
:: and populate the tables in the dbms schema.

sqlplus system/oracle @setup_database

:: Display 'press any key to continue' message
PAUSE