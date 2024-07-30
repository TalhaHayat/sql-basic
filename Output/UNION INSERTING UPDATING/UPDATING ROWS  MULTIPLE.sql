-- UPDATING WITH UNKNOWNS

USE sql_invoicing;

UPDATE invoices
SET payment_total = invoice_total * 0.5, payment_date = '2024-07-28'
WHERE client_id =
		(SELECT client_id
		FROM clients
		WHERE name = "Myworks");

UPDATE invoices
SET payment_total = invoice_total * 0.5, payment_date = '2024-07-28'
WHERE client_id IN
		(SELECT client_id
		FROM clients
		WHERE state IN ('NY', 'CA'));
        
        

-- EXCERCISE:

USE sql_store;

UPDATE orders
SET comments = "This customer has a GOLD medal!!"
WHERE customer_id IN
	(SELECT customer_id 
	FROM customers
	WHERE points > 3000);

