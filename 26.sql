-- 26. Find the customer who has ordered the most ‘Chai’ product


SELECT c.customer_id,COUNT(o.order_id)
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
JOIN order_details od
ON o.order_id = od.order_id
JOIN products p
ON od.product_id = p.product_id
having product_name = 'Chai'