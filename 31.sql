-- 31. Find the top 3 customers who have ordered the most products


select c.customer_id,COUNT(od.order_id) AS total
from customers c
JOIN orders o
ON c.customer_id = o.customer_id
JOIN order_details od
ON o.order_id = od.order_id
JOIN products p
ON od.product_id = p.product_id
GROUP BY c.customer_id
ORDER BY total desc
LIMIT 3