-- 27. Find the average quantity of products ordered in each order


select order_id, AVg(quantity) AS Average
FROM order_details
GROUP BY order_id