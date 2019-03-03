create or replace FUNCTION bill
  (invoice_number IN NUMBER)
  RETURN NUMBER
AS
  bill_amount NUMBER;
BEGIN
  SELECT total_bill 
  into bill_amount
    FROM invoice
   WHERE invoice_id = invoice_number;
  RETURN bill_amount;

END bill;
