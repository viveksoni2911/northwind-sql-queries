-- 7. Get the top 5 most sold products


SELECT p.product_id,product_name,SUM(od.quantity)
FROM order_details od
JOIN products p
ON od.product_id = p.product_id
GROUP BY p.product_id
ORDER BY SUM(od.quantity) DESC
LIMIT 5