CONNECT dbms/dbms;

BEGIN

  EXECUTE IMMEDIATE 'DROP ROLE dbms_client';
  EXECUTE IMMEDIATE 'DROP ROLE dbms_employee';
  EXECUTE IMMEDIATE 'DROP ROLE dbms_leader';
  EXECUTE IMMEDIATE 'DROP ROLE dbms_developer';
  
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('');
END;
/

-- createing the roles
CREATE ROLE dbms_client;
CREATE ROLE dbms_employee;
CREATE ROLE dbms_leader;
CREATE ROLE dbms_developer;

-- grant privileges to the dbms_employee role
GRANT CREATE SESSION TO dbms_employee;
GRANT SELECT, INSERT, UPDATE, DELETE ON resources TO dbms_employee;
GRANT SELECT, INSERT,UPDATE ON invoices TO dbms_employee;

GRANT SELECT ON project_data TO dbms_employee;
GRANT SELECT ON invoices TO dbms_employee;
GRANT SELECT ON resources TO dbms_employee;
GRANT SELECT ON supplier TO dbms_employee;
GRANT SELECT ON client TO dbms_employee;

-- grant privileges to the dbms_leader role
GRANT dbms_employee TO dbms_leader WITH ADMIN OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE ON emloyees TO dbms_leader;
GRANT SELECT, INSERT, UPDATE, DELETE ON role TO dbms_leader;
GRANT SELECT, INSERT, UPDATE, DELETE ON invoices TO dbms_leader;

GRANT SELECT ON project_data TO dbms_leader;
GRANT SELECT ON resources TO dbms_leader;
GRANT SELECT ON supplier TO dbms_leader;
GRANT SELECT ON client TO dbms_leader;
GRANT SELECT ON project_leader TO dbms_leader;

GRANT CREATE PUBLIC SYNONYM TO dbms_leader;

-- grant privileges to the dbms_client role
GRANT CREATE SESSION TO dbms_client;
GRANT SELECT ON client TO dbms_client;

-- grant privileges to the dbms_developer role
GRANT  
  CREATE ANY TABLE, 
  DROP ANY TABLE, 
  CREATE ANY VIEW,
  DROP ANY VIEW,
  CREATE ANY SEQUENCE, 
  DROP ANY SEQUENCE
TO dbms_developer;

-- create the users
CREATE USER gurjot IDENTIFIED BY singh DEFAULT TABLESPACE users;
CREATE USER arvinder IDENTIFIED BY singh DEFAULT TABLESPACE users;
CREATE USER manrose IDENTIFIED BY singh DEFAULT TABLESPACE users;
CREATE USER rishab IDENTIFIED BY singh DEFAULT TABLESPACE users;

-- assign the roles to the users
GRANT dbms_developer TO gurjot, singh;
GRANT dbms_client TO arvinder, singh;
GRANT dbms_employee TO manrose, singh;
GRANT dbms_leader TO rishab, singh;

