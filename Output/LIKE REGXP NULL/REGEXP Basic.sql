SELECT *
FROM customers
WHERE last_name LIKE '%brush%';

-- Same as Below:

Select * 
FROM customers
WHERE last_name REGEXP 'brush';

-- Starting via REGEXP:

SELECT * 
FROM customers
WHERE last_name REGEXP '^brush';

-- Ending with REGEXP:

SELECT * 
FROM customers
WHERE last_name REGEXP 'field$';

-- Multiple Entries via REGEXP:

SELECT *
FROM customers
WHERE last_name REGEXP 'Mac|field|rose';

SELECT *
FROM customers
WHERE last_name REGEXP 'Mac|^field|rose';

-- Combining various entries:

SELECT *
FROM customers
WHERE last_name REGEXP '[GAIP]e';

SELECT *
FROM customers
WHERE last_name REGEXP 'd[A-O]';

-- Exercise:

SELECT *
FROM customers
WHERE first_name REGEXP 'Elka|Ambur';

SELECT *
FROM customers
WHERE last_name REGEXP 'EY$|ON$';

SELECT *
FROM customers
WHERE last_name REGEXP '^MY|SE';

SELECT * 
FROM customers
WHERE last_name REGEXP 'b[RU]';

