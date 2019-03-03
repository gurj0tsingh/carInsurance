--procedure to delete database backup
CREATE OR REPLACE PROCEDURE delete_backup
(password IN NUMBER)
IS 
BEGIN
IF PASSWORD = 1
THEN
  EXECUTE IMMEDIATE 'DROP TABLE project_data_backup'; 
  EXECUTE IMMEDIATE 'DROP TABLE resources_backup';
  EXECUTE IMMEDIATE 'DROP TABLE supplier_backup';
  EXECUTE IMMEDIATE 'DROP TABLE employee_backup'; 
  EXECUTE IMMEDIATE 'DROP TABLE role_backup';
  EXECUTE IMMEDIATE 'DROP TABLE invoice_backup';	  
  EXECUTE IMMEDIATE 'DROP TABLE project_leader_backup';
  EXECUTE IMMEDIATE 'DROP TABLE client_backup';
	DBMS_OUTPUT.PUT_LINE('Bacup delete complete....');
ELSE 
DBMS_OUTPUT.PUT_LINE('Password is incorrect');
END IF;
END;