-- 35. Find the total sales for each year


select YEAR(order_date) AS y,SUM(quantity * unit_price) AS total
FROM order_details od
JOIN orders o
ON od.order_id = o.order_id
GROUP BY y