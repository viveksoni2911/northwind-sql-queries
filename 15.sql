--15  Find the total revenue for the year 2016


SELECT SUM(quantity * unit_price) AS total_revenue
FROM orders o
JOIN order_details od
ON o.order_id = od.order_id
WHERE YEAR(order_date) = 2016