-- 25. Find the employees who have processed more than 100 orders


SELECT employee_id,COUNT(order_id) AS total
FROM orders
GROUP BY employee_id
HAVING total > 100