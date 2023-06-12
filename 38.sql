--38. Classify employees based on the number of orders they have processed such that NumberOfOrders > 100 Then PerformanceCategory as ‘High Performing’. If NumberOfOrders>50 Then ‘Medium Performing’ and else ‘Lower Performing’

 
SELECT first_name,
	   last_name,
       COunt(order_id) AS NumberOfOrders,
       CASE
       		WHEN COunt(order_id) > 100 THEN 'High Performing'
            when COunt(order_id) > 50 then 'Medium Performing'
            ELSE 'Lower Performing'
       END AS PerformanceCategory
FROM orders o 
Join employees e ON o.employee_id = e.employee_id
Group BY first_name,
	     last_name
LIMIT 6;