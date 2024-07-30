-- UNIONS
-- These are designed to join different queries into a single table.

SELECT o.order_id, o.order_date, 'Active' as Status
FROM orders o
WHERE order_date >= '2019-01-01'

UNION

SELECT o.order_id, o.order_date, 'Archived' as Status
FROM orders o
WHERE order_date <= '2019-01-01';

-- EXERCISE:

SELECT c.customer_id, c.first_name, c.points, 'Bronze' as Medal
FROM customers c
WHERE points <2000

UNION

SELECT c.customer_id, c.first_name, c.points, 'Silver' as Medal
FROM customers c
WHERE points BETWEEN 2000 AND 3000
-- Or: "points >= 2000 AND points < 3000"

UNION

SELECT c.customer_id, c.first_name, c.points, 'Gold' as Medal
FROM customers c
WHERE points >= 3000
ORDER BY first_name
