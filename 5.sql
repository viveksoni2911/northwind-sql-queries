/* 5. List the employees and the number of orders each employee has taken*/

SELECT e.employee_id,first_name,last_name,COUNT(od.order_id) AS number_of_orders
FROM employees e
LEFT JOIN orders od
ON e.employee_id = od.employee_id
GROUP BY e.employee_id,e.first_name,e.last_name
ORDER BY e.employee_id;