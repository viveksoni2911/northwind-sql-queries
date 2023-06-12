-- 11. Calculate the average product price by category

SELECt p.category_id,product_name,AVG(unit_price) AS avg_price
FROM products p
JOIN categories c
ON p.category_id = c.category_id
GROUP BY p.category_id