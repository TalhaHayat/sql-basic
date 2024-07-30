-- INSERTING MULTIPLE ROWS

USE sql_store;

INSERT INTO orders (customer_id, order_date, status)
VALUES (1, '2024-12-28', 1);

INSERT INTO order_items
VALUES (last_insert_id(), 1, 5, 4.69),
		(last_insert_id(), 2, 3, 4.20);
        

-- DUPLICATING TABLES:
-- Although, table attributes are not copied.

-- CREATE TABLE orders_archived AS SELECT * FROM orders;

-- "Truncate" table removes all data.

-- MORE SPECIFIC:

INSERT INTO orders_archived
SELECT * 
FROM orders
WHERE order_date < '2019-02-02';

-- EXERCISE:

USE sql_invoicing;

CREATE TABLE invoices_archived AS 
SELECT invoice_id, number, clients.name, invoice_date, payment_date, payment_total
FROM invoices
JOIN clients 
USING (client_id)
WHERE payment_date is NOT NULL;