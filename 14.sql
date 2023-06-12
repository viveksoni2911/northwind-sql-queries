-- 14. Find the most expensive product in each category


select product_name, category_name,MAX(unit_price)
FROM products p
JOIN categories c
ON p.category_id = c.category_id