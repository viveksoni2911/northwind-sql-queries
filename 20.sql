-- 20. List the top 5 employees who have processed the most orders


SELECT e.employee_id,first_name,last_name,COUNT(order_id) AS total_orders
FROM employees e
JOIN orders o
ON e.employee_id = o.employee_id
GROUP BY e.employee_id
ORDER BY total_orders DESC
LIMIT 5