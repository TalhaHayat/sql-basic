SELECT *
FROM customers
WHERE last_name LIKE '%y';

SELECT * 
FROM customers
WHERE last_name like 'b%';

SELECT * 
FROM customers
WHERE last_name like 'b%d';

SELECT * 
FROM customers
WHERE last_name like '_____y%';

SELECT *
FROM customers
WHERE address LIKE '%Trail%' OR address LIKE '%Avenue%';

-- Will remember to repeat the column after the "OR" statement.

SELECT * 
FROM customers
WHERE phone LIKE '%9';

SELECT * 
FROM customers
WHERE phone NOT LIKE '%9';