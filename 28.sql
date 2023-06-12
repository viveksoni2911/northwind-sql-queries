-- 28. Find the top 3 most popular categories of products ordered


SELECT category_name,COUNT(quantity) AS quantity
FROM order_details od
JOIN products p
ON od.product_id = p.product_id
JOIN categories c
ON p.category_id = c.category_id
group by quantity
ORDER BY quantity DESC
LIMIT 3