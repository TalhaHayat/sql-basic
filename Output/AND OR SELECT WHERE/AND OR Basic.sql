SELECT * 
FROM customers
WHERE birth_date > '1990-01-01' AND points > 2000;

SELECT * 
FROM customers
WHERE birth_date > '1990-01-01' OR points > 2000;

SELECT * 
FROM customers
WHERE birth_date > '1990-01-01' OR points > 2000 AND state = 'CA';

SELECT * 
FROM customers
WHERE (birth_date > '1990-01-01' OR points > 2000) AND state = 'CA'