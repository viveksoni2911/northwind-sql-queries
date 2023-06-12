--13. List all orders shipped to ‘Germany’


SELECT order_id , ship_country
FROM orders o
JOIN customers c
ON o.customer_id = c.customer_id
WHERE ship_country = 'Germany'
GROUP BY order_id