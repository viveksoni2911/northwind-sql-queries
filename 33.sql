-- 33. Find the suppliers who supply the top 5 most sold products


SELECT s.supplier_id,COUNT(p.product_id) AS product_count
FROM suppliers s
JOIN products p
ON s.supplier_id = p.supplier_id
JOIN order_details od
ON p.product_id = od.product_id
group by s.supplier_id
order by product_count DESC
LIMIT 5