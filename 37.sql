-- 37. Classify products based on their sales volume such that TotalQuantity > 1000 Then SalesCategory as ‘High Sales’. If TotalQuantity>500 Then ‘Medium Sales’ and else ‘Lower Sales’
 
 
SELECT 
       p.product_name,
       SUM(od.quantity) AS TotalQuantity,
       CASE
       		when SUM(od.quantity) > 1000 THEN 'High Sales'
            WHEN SUM(od.quantity) > 500 THEN 'Medium Sales'
            ELse 'Lower Sales'
       END AS SalesCategory
FROM products p
JOIN order_details od ON p.product_id = od.product_id
group by 
         p.product_name
LIMIT 6;