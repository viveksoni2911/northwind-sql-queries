/* 3. Get the total quantity of each product sold */

SELECT product_id,COUNT(quantity) AS total_quantity
FROM order_details
GROUP BY product_id