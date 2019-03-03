--populating the columns with the dumy data

--inserting the values in the client table
INSERT INTO client (client_id, email_address, password, first_name, last_name) VALUES
(client_id_seq.NEXTVAL, 'allan.sherwood@yahoo.com', '650215acec746f0e32bdfff387439eefc1358737', 'Allan', 'Sherwood');
INSERT INTO client (client_id, email_address, password, first_name, last_name) VALUES
(client_id_seq.NEXTVAL, 'barryz@gmail.com', '3f563468d42a448cb1e56924529f6e7bbe529cc7', 'Barry', 'Zimmer');
INSERT INTO client (client_id, email_address, password, first_name, last_name) VALUES
(client_id_seq.NEXTVAL, 'christineb@solarone.com', 'ed19f5c0833094026a2f1e9e6f08a35d26037066', 'Christine', 'Brown');
INSERT INTO client (client_id, email_address, password, first_name, last_name) VALUES
(client_id_seq.NEXTVAL, 'david.goldstein@hotmail.com', 'b444ac06613fc8d63795be9ad0beaf55011936ac', 'David', 'Goldstein');
INSERT INTO client (client_id, email_address, password, first_name, last_name) VALUES
(client_id_seq.NEXTVAL, 'erinv@gmail.com', '109f4b3c50d7b0df729d299bc6f8e9ef9066971f', 'Erin', 'Valentino');

--inserting the values in the project leader table
INSERT INTO project_leader (participant_id, project_leader_id, client_client_id) VALUES
(50, project_leader_id_seq.NEXTVAL, 1 );
INSERT INTO project_leader (participant_id, project_leader_id, client_client_id) VALUES
(51, project_leader_id_seq.NEXTVAL, 2 );
INSERT INTO project_leader (participant_id, project_leader_id, client_client_id) VALUES
(52, project_leader_id_seq.NEXTVAL, 3 );
INSERT INTO project_leader (participant_id, project_leader_id, client_client_id) VALUES
(53, project_leader_id_seq.NEXTVAL, 4 );
INSERT INTO project_leader (participant_id, project_leader_id, client_client_id) VALUES
(54, project_leader_id_seq.NEXTVAL, 5 );
INSERT INTO project_leader (participant_id, project_leader_id, client_client_id) VALUES
(55, project_leader_id_seq.NEXTVAL, 6 );

--inserting the values in the invoice table
INSERT INTO invoice (invoice_id, client_id, order_date, ship_amount, tax_amount, ship_date, ship_address_id, card_type, card_number, card_expires) VALUES
(invoice_id_seq.NEXTVAL, 1, TO_DATE('2012-03-28 09:40:28', 'YYYY-MM-DD HH24:MI:SS'), '5.00', '32.32', TO_DATE('2012-03-30 15:32:51', 'YYYY-MM-DD HH24:MI:SS'), 1, 'Visa', '4111111111111111', '04/2014');
INSERT INTO invoice (invoice_id, client_id, order_date, ship_amount, tax_amount, ship_date, ship_address_id, card_type, card_number, card_expires) VALUES
(invoice_id_seq.NEXTVAL, 2, TO_DATE('2012-03-28 11:23:20', 'YYYY-MM-DD HH24:MI:SS'), '5.00', '0.00', TO_DATE('2012-03-29 12:52:14', 'YYYY-MM-DD HH24:MI:SS'), 3, 'Visa', '4012888888881881', '08/2016');
INSERT INTO invoice (invoice_id, client_id, order_date, ship_amount, tax_amount, ship_date, ship_address_id, card_type, card_number, card_expires) VALUES
(invoice_id_seq.NEXTVAL, 1, TO_DATE('2012-03-29 09:44:58', 'YYYY-MM-DD HH24:MI:SS'), '10.00', '89.92', TO_DATE('2012-03-31 9:11:41', 'YYYY-MM-DD HH24:MI:SS'), 1, 'Visa', '4111111111111111', '04/2014');
INSERT INTO invoice (invoice_id, client_id, order_date, ship_amount, tax_amount, ship_date, ship_address_id, card_type, card_number, card_expires) VALUES
(invoice_id_seq.NEXTVAL, 3, TO_DATE('2012-03-30 15:22:31', 'YYYY-MM-DD HH24:MI:SS'), '5.00', '0.00', TO_DATE('2012-04-03 16:32:21', 'YYYY-MM-DD HH24:MI:SS'), 4, 'American Express', '378282246310005', '04/2013');
INSERT INTO invoice (invoice_id, client_id, order_date, ship_amount, tax_amount, ship_date, ship_address_id, card_type, card_number, card_expires) VALUES
(invoice_id_seq.NEXTVAL, 4, TO_DATE('2012-03-31 05:43:11', 'YYYY-MM-DD HH24:MI:SS'), '5.00', '0.00', TO_DATE('2012-04-02 14:21:12', 'YYYY-MM-DD HH24:MI:SS'), 5, 'Visa', '4111111111111111', '04/2016');
INSERT INTO invoice (invoice_id, client_id, order_date, ship_amount, tax_amount, ship_date, ship_address_id, card_type, card_number, card_expires) VALUES
(invoice_id_seq.NEXTVAL, 5, TO_DATE('2012-03-31 18:37:22', 'YYYY-MM-DD HH24:MI:SS'), '5.00', '0.00', NULL, 7, 'Discover', '6011111111111117', '04/2016');

--inserting the values in the role table
INSERT INTO role (role_id, role_name) VALUES
(role_id_seq.NEXTVAL, 'processer');  
INSERT INTO role (role_id, role_name) VALUES
(role_id_seq.NEXTVAL, 'resercher'); 
INSERT INTO role (role_id, role_name) VALUES
(role_id_seq.NEXTVAL,'engineer'); 
INSERT INTO role (role_id, role_name) VALUES
(role_id_seq.NEXTVAL, 'developer');  
INSERT INTO role (role_id, role_name) VALUES
(role_id_seq.NEXTVAL, 'HR');
INSERT INTO role (role_id, role_name) VALUES
(role_id_seq.NEXTVAL,'supervisor'); 


--inserting the values in the invoice table
INSERT INTO invoice (invoice_id, client_id, order_date, ship_amount, tax_amount, ship_date, ship_address_id, card_type, card_number, card_expires) VALUES
(invoice_id_seq.NEXTVAL, 1, TO_DATE('2012-03-28 09:40:28', 'YYYY-MM-DD HH24:MI:SS'), '5.00', '32.32', TO_DATE('2012-03-30 15:32:51', 'YYYY-MM-DD HH24:MI:SS'), 1, 'Visa', '4111111111111111', '04/2014');
INSERT INTO invoice (invoice_id, client_id, order_date, ship_amount, tax_amount, ship_date, ship_address_id, card_type, card_number, card_expires) VALUES
(invoice_id_seq.NEXTVAL, 2, TO_DATE('2012-03-28 11:23:20', 'YYYY-MM-DD HH24:MI:SS'), '5.00', '0.00', TO_DATE('2012-03-29 12:52:14', 'YYYY-MM-DD HH24:MI:SS'), 3, 'Visa', '4012888888881881', '08/2016');
INSERT INTO invoice (invoice_id, client_id, order_date, ship_amount, tax_amount, ship_date, ship_address_id, card_type, card_number, card_expires) VALUES
(invoice_id_seq.NEXTVAL, 1, TO_DATE('2012-03-29 09:44:58', 'YYYY-MM-DD HH24:MI:SS'), '10.00', '89.92', TO_DATE('2012-03-31 9:11:41', 'YYYY-MM-DD HH24:MI:SS'), 1, 'Visa', '4111111111111111', '04/2014');
INSERT INTO invoice (invoice_id, client_id, order_date, ship_amount, tax_amount, ship_date, ship_address_id, card_type, card_number, card_expires) VALUES
(invoice_id_seq.NEXTVAL, 3, TO_DATE('2012-03-30 15:22:31', 'YYYY-MM-DD HH24:MI:SS'), '5.00', '0.00', TO_DATE('2012-04-03 16:32:21', 'YYYY-MM-DD HH24:MI:SS'), 4, 'American Express', '378282246310005', '04/2013');
INSERT INTO invoice (invoice_id, client_id, order_date, ship_amount, tax_amount, ship_date, ship_address_id, card_type, card_number, card_expires) VALUES
(invoice_id_seq.NEXTVAL, 4, TO_DATE('2012-03-31 05:43:11', 'YYYY-MM-DD HH24:MI:SS'), '5.00', '0.00', TO_DATE('2012-04-02 14:21:12', 'YYYY-MM-DD HH24:MI:SS'), 5, 'Visa', '4111111111111111', '04/2016');
INSERT INTO invoice (invoice_id, client_id, order_date, ship_amount, tax_amount, ship_date, ship_address_id, card_type, card_number, card_expires) VALUES
(invoice_id_seq.NEXTVAL, 5, TO_DATE('2012-03-31 18:37:22', 'YYYY-MM-DD HH24:MI:SS'), '5.00', '0.00', NULL, 7, 'Discover', '6011111111111117', '04/2016');


--inserting the values in the employees table

INSERT INTO employee(participant_id, first_name, last_name, email_id, position, salary, role_role_id) VALUES
(employee_id_seq.NEXTVAL, 'alec', 'dome', 'a@gmail.com', 'member', 12000, 250);
INSERT INTO employee(participant_id, first_name, last_name, email_id, position, salary, role_role_id) VALUES
(employee_id_seq.NEXTVAL, 'aben', 'alice', 'ab@gmail.com', 'member', 13000, 251);
INSERT INTO employee(participant_id, first_name, last_name, email_id, position, salary, role_role_id) VALUES
(employee_id_seq.NEXTVAL, 'konm', 'cereny', 'abc@gmail.com', 'leader', 12300, 252);
INSERT INTO employee(participant_id, first_name, last_name, email_id, position, salary, role_role_id) VALUES
(employee_id_seq.NEXTVAL, 'kuben', 'curry', 'abcd@gmail.com', 'member', 10000, 253);
INSERT INTO employee(participant_id, first_name, last_name, email_id, position, salary, role_role_id) VALUES
(employee_id_seq.NEXTVAL, 'helen', 'stemy', 'abcde@gmail.com', 'member', 1110, 254);
INSERT INTO employee(participant_id, first_name, last_name, email_id, position, salary, role_role_id) VALUES
(employee_id_seq.NEXTVAL, 'sthephen', 'helae', 'abcdef@gmail.com', 'leader', 12000, 255);

--inserting the values in the supplier table
INSERT INTO supplier (supplier_id , first_name, last_name) VALUES
(supplier_id_seq.NEXTVAL, 'rishabh', 'bhandari');
INSERT INTO supplier (supplier_id , first_name, last_name) VALUES
(supplier_id_seq.NEXTVAL, 'manrose', 'randhawa');
INSERT INTO supplier (supplier_id , first_name, last_name) VALUES
(supplier_id_seq.NEXTVAL,'gurjot', 'singh');
INSERT INTO supplier (supplier_id , first_name, last_name) VALUES
(supplier_id_seq.NEXTVAL,'adesh', 'singh');
INSERT INTO supplier (supplier_id , first_name, last_name) VALUES
(supplier_id_seq.NEXTVAL,'arvinder', 'singh');
INSERT INTO supplier (supplier_id , first_name, last_name) VALUES
(supplier_id_seq.NEXTVAL, 'mahesh', 'pal');


--inserting the values in the resources table
INSERT INTO resources (resource_no, software, other, cost, supplier_supplier_id) VALUES
(resource_no_seq.NEXTVAL, 'adobe', ' ', 230, 300 );
INSERT INTO resources (resource_no, software, other, cost, supplier_supplier_id) VALUES
(resource_no_seq.NEXTVAL, 'avast', ' ', 250, 301);
INSERT INTO resources (resource_no, software, other, cost, supplier_supplier_id) VALUES
(resource_no_seq.NEXTVAL, 'visual studio', ' ', 430, 302);
INSERT INTO resources (resource_no, software, other, cost, supplier_supplier_id) VALUES
(resource_no_seq.NEXTVAL, 'oracle', ' ', 330, 303);
INSERT INTO resources (resource_no, software, other, cost, supplier_supplier_id) VALUES
(resource_no_seq.NEXTVAL, 'virtual box', ' ', 320,304);
INSERT INTO resources (resource_no, software, other, cost, supplier_supplier_id) VALUES
(resource_no_seq.NEXTVAL, 'snapseed', ' ', 150,305);





--inserting the values in the project data table

INSERT INTO project_data (project_id, title, deadline, planned_budget, actual_budget, employee_participant_id, project_leader_id, resources_resource_no, invoice_invoice_no) VALUES
(project_id_seq.NEXTVAL, 'BBX' , TO_DATE('2012-03-28', 'YYYY-MM-DD'), 11000, 12000, 50, 350, 100, 150 );

INSERT INTO project_data (project_id, title, deadline, planned_budget, actual_budget, employee_participant_id, project_leader_id, resources_resource_no, invoice_invoice_no) VALUES
(project_id_seq.NEXTVAL, 'Crypto' , TO_DATE('2012-03-01', 'YYYY-MM-DD'), 11200, 15000, 51, 351, 101, 151 );

INSERT INTO project_data (project_id, title, deadline, planned_budget, actual_budget, employee_participant_id, project_leader_id, resources_resource_no, invoice_invoice_no) VALUES
(project_id_seq.NEXTVAL, 'java' , TO_DATE('2012-03-02', 'YYYY-MM-DD'), 13000, 16000, 52, 352, 102, 152 );

INSERT INTO project_data (project_id, title, deadline, planned_budget, actual_budget, employee_participant_id, project_leader_id, resources_resource_no, invoice_invoice_no) VALUES
(project_id_seq.NEXTVAL, 'splitends' , TO_DATE('2012-03-03', 'YYYY-MM-DD'), 14000, 17000, 53, 353, 103, 153 );

INSERT INTO project_data (project_id, title, deadline, planned_budget, actual_budget, employee_participant_id, project_leader_id, resources_resource_no, invoice_invoice_no) VALUES
(project_id_seq.NEXTVAL, 'spacex' , TO_DATE('2012-03-04', 'YYYY-MM-DD'), 15000, 18000, 54, 354, 104, 154 );

INSERT INTO project_data (project_id, title, deadline, planned_budget, actual_budget, employee_participant_id, project_leader_id, resources_resource_no, invoice_invoice_no) VALUES
(project_id_seq.NEXTVAL, 'tesla' , TO_DATE('2012-03-05', 'YYYY-MM-DD'), 10600, 19000, 55, 355, 105, 155 );













