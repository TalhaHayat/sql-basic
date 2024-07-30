SELECT order_id, customers.customer_id, first_name, last_name
FROM orders
JOIN customers
ON orders.customer_id = customers.customer_id;

-- This can also be abbreviated below to avoid repetitions:

SELECT order_id, c.customer_id, first_name, last_name
FROM orders o
JOIN customers c
ON o.customer_id = c.customer_id;

-- Exercise:

SELECT products.product_id, name, quantity, order_items.unit_price
FROM products
JOIN order_items
ON products.product_id = order_items.product_id;

SELECT p.product_id, name, quantity, o.unit_price
FROM products p
JOIN order_items o
ON p.product_id = o.product_id;

-- If the table inside a different DB category:

SELECT *
FROM order_items oi
JOIN sql_inventory.products ip
ON oi.product_id = ip.product_id;

-- Might be switched around, if a different DB is being utilised intially:

USE sql_inventory;

SELECT * 
FROM sql_store.order_items oi
JOIN products p
ON oi.product_id = p.product_id;