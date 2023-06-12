-- 30. Find the employee who processed the most orders in August 2016


select employee_id,COUNT(order_id) AS most
FROM orders
WHERE year(order_date) = 2016 AND MONTH(order_date) = 8
group by employee_id
order by most DESC
LIMIT 1