-- 21. Get the list of customers who have ordered ‘Chai’ product


SELECT customer_id,product_name
FROM products p
JOIN order_details od
ON p.product_id = od.product_id
JOIN orders o
ON od.order_id = o.order_id
WHERE product_name = 'Chai'