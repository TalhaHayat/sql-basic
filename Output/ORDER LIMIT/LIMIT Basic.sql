SELECT *
FROM customers
LIMIT 3;

-- First Number is the starting point.
-- Second Number is the counter below:

SELECT *
FROM customers
LIMIT 3, 3;

-- Exercise:

SELECT *
FROM customers
ORDER BY points DESC
LIMIT 3;
