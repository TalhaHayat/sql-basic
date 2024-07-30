-- Using "USING" instead when JOINING.
-- Only works if the columns names are exactly the same.


USE sql_store;

SELECT o.order_id, c.first_name, c.last_name, sh.name
FROM customers c
JOIN orders o
-- ON c.customer_id = o.customer_id;
USING (customer_id)
LEFT JOIN shippers sh
USING (shipper_id); 

SELECT *
FROM order_items o
JOIN order_item_notes oin
-- ON o.product_id = oin.product_id AND o.order_id = oin.order_Id;
USING (product_id, order_id);

-- EXERCISE

USE sql_invoicing;

SELECT p.date, c.name, p.date, pm.name 
FROM clients c
JOIN invoices i
USING (client_id)
JOIN payments p
USING (client_id, invoice_id)
JOIN payment_methods pm
ON p.payment_method = pm.payment_method_id;
