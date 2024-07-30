-- Natural Join is also a thing.
-- It automatically detects the column in question.
-- Can be risky, because it's guessing.

USE sql_store;

SELECT o.order_id, c.first_name, c.last_name
FROM customers c
NATURAL JOIN orders o;

-- CROSS JOIN

SELECT c.first_name, c.last_name, p.name
FROM customers c
CROSS JOIN products p
ORDER BY c.first_name, last_name;

-- Same as below:

SELECT c.first_name, c.last_name, p.name
FROM customers c, products p
ORDER BY c.first_name, last_name;

-- EXERCISE:

SELECT sh.shipper_id, sh.name, p.name AS product 
FROM shippers sh, products p
ORDER BY sh.shipper_id;


SELECT sh.shipper_id, sh.name, p.name As product
FROM shippers sh
CROSS JOIN products p
ORDER BY shipper_id;