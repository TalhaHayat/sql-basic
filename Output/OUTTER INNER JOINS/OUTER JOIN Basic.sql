-- Outer Joins

-- This result only brings results with matching valid condition:

SELECT c.customer_id, c.first_name, c.last_name
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id;

-- This brings customers who have not ordered too:

SELECT c.customer_id, c.first_name, c.last_name
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id;

-- Can also use "Right" Join and include "Outer" in between.

-- EXCERCISE:

SELECT p.product_id, p.name, oi.quantity
FROM order_items oi
LEFT JOIN products p
ON p.product_id = oi.product_id
ORDER BY p.product_id;