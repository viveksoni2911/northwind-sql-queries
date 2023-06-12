-- 22. Get the employees who have processed orders for ‘Chai’ product


SELECT e.employee_id, product_name
FROM products p
JOIN order_details od
ON p.product_id = od.product_id
JOIN orders o
ON od.order_id = o.order_id
JOIN employees e
ON o.employee_id = e.employee_id
WHERE product_name = 'Chai'