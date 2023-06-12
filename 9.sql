-- 9. Find the customers who have not placed any orders


SELECT c.customer_id
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
WHERE c.customer_id iS NULL