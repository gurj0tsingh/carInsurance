--droping the user
DROP USER dbms CASCADE;
--creating the user
CREATE USER dbms IDENTIFIED BY dbms DEFAULT TABLESPACE users;
--granting the privileges
GRANT ALL PRIVILEGES TO dbms;
