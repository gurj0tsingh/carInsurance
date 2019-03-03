--only project leaders and the admin users will use this 
--procedure to find the invoice of the specific client

create or replace PROCEDURE find_members
  (vr_client_id IN NUMBER,
  vr_invoice_id OUT NUMBER)
AS
BEGIN
  SELECT invoice_id
    INTO vr_invoice_id
    FROM invoice
   WHERE client_id = vr_client_id;
END;





CREATE OR REPLACE PROCEDURE find_members(
	   vr_client_id IN NUMBER,
	   vr_invoice_id OUT NUMBER,
IS
BEGIN

  SELECT invoice_id
  INTO vr_invoice_id
  from  invoice 
  WHERE client_id = vr_client_id;

END;