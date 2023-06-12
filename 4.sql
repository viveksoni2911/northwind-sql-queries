/*  . Find the total sales (Quantity*Unit_Price) for each category of products */

SELECT p.category_id,od.order_id, (od.quantity * od.unit_price) AS total_sale
FROM order_details od
JOIN products p
ON od.product_id = p.product_id
ORDER BY od.order_id