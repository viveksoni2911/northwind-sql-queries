--24. Find the order with the highest total cost


SELECT o.order_id,SUM(quantity * unit_price) AS highest
FROM order_details od
JOIN orders o
ON od.order_id = o.order_id
group by o.order_id
ORDER BY highest DESC
LIMIT 1