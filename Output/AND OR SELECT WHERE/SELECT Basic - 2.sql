SELECT 
	last_name, 
    first_name, 
    points, 
    (points + 20) * 100 AS 'Increased-Price Discount'
FROM customers;

SELECT DISTINCT state
FROM customers;
-- Distinct is similar to Set via Python.
