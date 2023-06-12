-- 10. List all ‘Orders’ with ‘Customer’ details and ‘Employee’ who processed it


SELECT order_id,o.customer_id,first_name || ' ' || last_name AS full_name
FROM orders o
JOIN customers c
ON o.customer_id = c.customer_id
JOIN employees e
ON o.employee_id = e.employee_id