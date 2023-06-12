-- 29. Find the month in the year 2016 with the highest total sales


SELECT month(order_date) AS mon ,SUM(quantity * unit_price) as total_sale
FROM orders o
JOIN order_details od
ON o.order_id = od.order_id
WHERE year (order_date) = 2016
GROUP BY mon
order by total_sale DESC
LIMIT 1