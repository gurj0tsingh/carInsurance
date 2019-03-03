CONNECT dbms/dbms;

-- Use an anonymous PL/SQL script to
-- drop all tables and sequences in the current schema and
-- suppress any error messages that may displayed 
-- if these objects don't exist
BEGIN

  EXECUTE IMMEDIATE 'DROP SEQUENCE client_id_seq';
  EXECUTE IMMEDIATE 'DROP SEQUENCE employee_id_seq';
  EXECUTE IMMEDIATE 'DROP SEQUENCE resource_no_seq';
  EXECUTE IMMEDIATE 'DROP SEQUENCE invoice_id_seq';
  EXECUTE IMMEDIATE 'DROP SEQUENCE project_id_seq';
  EXECUTE IMMEDIATE 'DROP SEQUENCE role_id_seq';
  EXECUTE IMMEDIATE 'DROP SEQUENCE supplier_id_seq';
  EXECUTE IMMEDIATE 'DROP SEQUENCE project_leader_id_seq';

  EXECUTE IMMEDIATE 'DROP TABLE project_data'; 
  EXECUTE IMMEDIATE 'DROP TABLE resources';
  EXECUTE IMMEDIATE 'DROP TABLE supplier';
  EXECUTE IMMEDIATE 'DROP TABLE project_leader';
  EXECUTE IMMEDIATE 'DROP TABLE employee'; 
  EXECUTE IMMEDIATE 'DROP TABLE role';
  EXECUTE IMMEDIATE 'DROP TABLE invoice';	  
  EXECUTE IMMEDIATE 'DROP TABLE client';


EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('');
END;
/
CREATE TABLE client (
  client_id             INTEGER NOT NULL,
  email_address         VARCHAR2(255)   NOT NULL      UNIQUE,
  password              VARCHAR2(60)    NOT NULL,
  first_name            VARCHAR2(60)    NOT NULL,
  last_name             VARCHAR2(60)    NOT NULL
);

ALTER TABLE client ADD CONSTRAINT client_pk PRIMARY KEY (client_id);


CREATE TABLE employee (
    participant_id   INTEGER NOT NULL,
    first_name       VARCHAR2(25 CHAR) NOT NULL,
    last_name        VARCHAR2(25 CHAR) NOT NULL,
    email_id         VARCHAR2(50 CHAR) NOT NULL,
    position         VARCHAR2(25 CHAR) NOT NULL,
    salary           INTEGER,
    role_role_id     INTEGER NOT NULL
);

ALTER TABLE employee ADD CONSTRAINT employee_pk PRIMARY KEY ( participant_id);

CREATE TABLE invoice (
  invoice_id         INTEGER NOT NULL,
  client_id          NUMBER,
  order_date         DATE           NOT NULL,
  ship_amount        NUMBER(10,2)   NOT NULL,
  tax_amount         NUMBER(10,2)   NOT NULL,
  ship_date          DATE                        DEFAULT NULL,
  ship_address_id    NUMBER         NOT NULL,
  card_type          VARCHAR2(50)   NOT NULL,
  card_number        CHAR(16)       NOT NULL,
  card_expires       CHAR(7)        NOT NULL
);
ALTER TABLE invoice ADD CONSTRAINT invoice_pk PRIMARY KEY (invoice_id);


CREATE TABLE project_data (
    project_id                      INTEGER NOT NULL,
    title                           VARCHAR2(255 CHAR) NOT NULL,
    deadline                        DATE NOT NULL,
    planned_budget                  NUMBER(9,2),
    actual_budget                   NUMBER(9,2),
    employee_participant_id         INTEGER,
    project_leader_id			    INTEGER,
    resources_resource_no           INTEGER NOT NULL,
	invoice_invoice_no				INTEGER NOT NULL
);

ALTER TABLE project_data ADD CONSTRAINT project_data_pk PRIMARY KEY ( project_id );

CREATE TABLE project_leader (
    participant_id      INTEGER NOT NULL,
    project_leader_id   NUMBER NOT NULL,
    client_client_id    INTEGER NOT NULL
);

ALTER TABLE project_leader ADD CONSTRAINT project_leader_pk PRIMARY KEY ( project_leader_id );

CREATE TABLE resources (
    resource_no            INTEGER NOT NULL,
    software               VARCHAR2(50 CHAR),
    other                  VARCHAR2(50 CHAR),
    cost                   INTEGER,
    supplier_supplier_id   INTEGER NOT NULL
);

ALTER TABLE resources ADD CONSTRAINT resources_pk PRIMARY KEY ( resource_no );

CREATE TABLE role (
    role_id     INTEGER NOT NULL,
    role_name   VARCHAR2(25 CHAR)
);

ALTER TABLE role ADD CONSTRAINT role_pk PRIMARY KEY ( role_id );

CREATE TABLE supplier (
    supplier_id   INTEGER NOT NULL,
    first_name    VARCHAR2(25 CHAR) NOT NULL,
    last_name     VARCHAR2(25 CHAR) NOT NULL
);

ALTER TABLE supplier ADD CONSTRAINT supplier_pk PRIMARY KEY ( supplier_id );

ALTER TABLE employee
    ADD CONSTRAINT employee_role_fk FOREIGN KEY ( role_role_id )
        REFERENCES role ( role_id );

ALTER TABLE project_data
    ADD CONSTRAINT project_data_resources_fk FOREIGN KEY ( resources_resource_no )
        REFERENCES resources ( resource_no );
ALTER TABLE project_data
    ADD CONSTRAINT project_data_employee_fk FOREIGN KEY ( employee_participant_id )
        REFERENCES employee ( participant_id );
ALTER TABLE project_data
    ADD CONSTRAINT project_data_leader_fk FOREIGN KEY ( project_leader_id )
        REFERENCES project_leader ( project_leader_id );
ALTER TABLE project_data
    ADD CONSTRAINT project_data_invoice_fk FOREIGN KEY ( invoice_invoice_no )
        REFERENCES invoice ( invoice_id );

ALTER TABLE project_leader
    ADD CONSTRAINT project_leader_client_fk FOREIGN KEY ( client_client_id )
        REFERENCES client ( client_id );
		
		
ALTER TABLE resources
    ADD CONSTRAINT resources_supplier_fk FOREIGN KEY ( supplier_supplier_id )
        REFERENCES supplier ( supplier_id );

CREATE SEQUENCE client_id_seq
	MINVALUE 1
	START WITH 1
	INCREMENT BY 1
	CACHE 10;
CREATE SEQUENCE employee_id_seq
	MINVALUE 1
	START WITH 50
	INCREMENT BY 1
	CACHE 10;
CREATE SEQUENCE resource_no_seq
	MINVALUE 1
	START WITH 100
	INCREMENT BY 1
	CACHE 10;
CREATE SEQUENCE invoice_id_seq
	MINVALUE 1
	START WITH 150
	INCREMENT BY 1
	CACHE 10;
CREATE SEQUENCE project_id_seq
	MINVALUE 1
	START WITH 200
	INCREMENT BY 1
	CACHE 10;
CREATE SEQUENCE role_id_seq
	MINVALUE 1
	START WITH 250
	INCREMENT BY 1
	CACHE 10;
CREATE SEQUENCE supplier_id_seq
	MINVALUE 1
	START WITH 300
	INCREMENT BY 1
	CACHE 10;
CREATE SEQUENCE project_leader_id_seq
	MINVALUE 1
	START WITH 350
	INCREMENT BY 1
	CACHE 10;





