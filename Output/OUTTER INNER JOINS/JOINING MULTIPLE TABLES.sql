-- Joining Multiple Tables

USE sql_store;

SELECT *
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
JOIN order_statuses oc
ON oc.order_status_id = o.status;

-- Simplied Table:

SELECT o.order_id, o.order_date, c.first_name, c.last_name, oc.name 
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
JOIN order_statuses oc
ON oc.order_status_id = o.status;

-- EXERCISE:

USE sql_invoicing;

SELECT c.client_id, c.name, p.payment_id, p.date, p.amount, pm.name
FROM clients c
JOIN payments p
ON c.client_id = p.client_id
JOIN payment_methods pm
ON pm.payment_method_id = p.payment_method;

-- Joining via Multiple Primary Keys:

-- Code matches, but no result is produced.

USE sql_store;

SELECT *
FROM order_items oi
JOIN order_item_notes oin
ON oi.order_id = oin.order_id
AND oi.product_id = oin.product_id;