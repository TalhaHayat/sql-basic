SELECT *
FROM customers
WHERE phone IS NULL;

SELECT * 
FROM customers
WHERE phone IS NOT NULL;

-- Exercise:

SELECT * 
FROM orders
WHERE shipped_date IS NULL;
