--6. Get the customers who have placed more than 10 orders


select c.customer_id,COUNT(order_id),c.company_name
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id,c.company_name
HAVING COUNT(order_id) > 10