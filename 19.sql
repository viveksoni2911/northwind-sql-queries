-- 19. Find the customers who have spent more than $5000 in total


SELECt c.customer_id,SUM(quantity * unit_price) AS total
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
JOIN order_details od
ON o.order_id = od.order_id
GROUP BY c.customer_id
HAVING total > 5000