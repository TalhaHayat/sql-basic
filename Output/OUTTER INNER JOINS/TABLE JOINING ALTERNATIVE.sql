SELECT *
FROM orders o
JOIN customers c
ON o.customer_id = c.customer_id;

-- Alternative way, but should be avoided:

SELECT * 
FROM orders o, customers c
WHERE o.customer_id = c.customer_id;