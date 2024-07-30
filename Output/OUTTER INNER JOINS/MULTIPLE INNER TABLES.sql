-- MULTIPLE INNER TABLES

USE sql_store;

SELECT c.customer_id, c.first_name, o.order_id, sh.name
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id
LEFT JOIN shippers sh
ON o.shipper_id = sh.shipper_id;


-- EXERCISE:

SELECT o.order_date, o.order_id, c.first_name, sh.name AS 'Shipper Name', os.name AS 'Status'
FROM orders o
LEFT JOIN customers c
ON o.customer_id = c.customer_id
LEFT JOIN shippers sh
ON o.shipper_id = sh.shipper_id
LEFT JOIN order_statuses os
ON o.status = os.order_status_id
ORDER BY os.name;