SELECT *
FROM customers
ORDER BY first_name;

SELECT *
FROM customers
ORDER BY first_name DESC;

SELECT * 
FROM customers
ORDER BY state DESC, first_name;

-- Should avoid numbers, as "select" might be edited later:

SELECT first_name, last_name, birth_date 
FROM customers
ORDER BY 1, 2;

SELECT first_name, last_name, birth_date, '420' AS meaning_of_life 
FROM customers
ORDER BY state, 1;

-- Exercise:

SELECT * 
FROM order_items
WHERE order_id = '2'
ORDER BY (quantity * unit_price) DESC;

-- Alternative:


SELECT *, quantity * unit_price AS 'Total Price'
FROM order_items
WHERE order_id = '2'
ORDER BY 'Total Price' DESC;