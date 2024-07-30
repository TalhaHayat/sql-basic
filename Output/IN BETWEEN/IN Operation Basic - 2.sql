SELECT *
FROM order_items
WHERE quantity IN ('49', '38', '42'); 

--	SELECT product_id, SUM(quantity) AS 'Total Quantity'
--	FROM order_items
--	GROUP BY product_id;