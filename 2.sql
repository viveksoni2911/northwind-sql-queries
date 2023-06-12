/* 2. Find all suppliers who provide products in the ‘Seafood’ category */

SELECT supplier_id, category_name
FROM products p
JOIN categories c
ON p.category_id = c.category_id
WHERE category_name = 'Seafood'