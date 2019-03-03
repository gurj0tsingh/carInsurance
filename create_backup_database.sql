--procedure to create database backup
CREATE OR REPLACE PROCEDURE create_backup
(password IN NUMBER)
IS 
BEGIN
IF PASSWORD = 1
THEN
EXECUTE IMMEDIATE 'CREATE TABLE client_backup AS SELECT * FROM client';
EXECUTE IMMEDIATE 'CREATE TABLE employee_backup  AS SELECT * FROM employee';
EXECUTE IMMEDIATE 'CREATE TABLE invoice_backup  AS SELECT * FROM invoice';
EXECUTE IMMEDIATE 'CREATE TABLE project_data_backup  AS SELECT * FROM project_data';
EXECUTE IMMEDIATE 'CREATE TABLE project_leader_backup  AS SELECT * FROM project_leader';
EXECUTE IMMEDIATE 'CREATE TABLE resources_backup  AS SELECT * FROM resources';
EXECUTE IMMEDIATE 'CREATE TABLE supplier_backup  AS SELECT * FROM supplier';
EXECUTE IMMEDIATE 'CREATE TABLE role_backup  AS SELECT * FROM role';
DBMS_OUTPUT.PUT_LINE('Backup complete....');
ELSE
DBMS_OUTPUT.PUT_LINE('PASSWORD INCORRECT');
end if;
END;

