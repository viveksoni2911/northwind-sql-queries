--36. Classify customers based on their total order amounts such that total order amounts > 5000 should be classified as ‘High Value’, if > 1000 then as ‘Medium Value’ and otherwise as ‘Low Value’


Here is the sample output
 
select 
  		   c.company_name,
  		   SUM(od.quantity * od.unit_price) AS TotalOrderAMOUNT,
  case 
            when SUM(od.quantity * od.unit_price) > 5000 Then 'High Value'
            when SUM(od.quantity * od.unit_price) > 1000 THEN 'Median Value'
            ELSE 'Low Value'
        END as CustomerClass
    FROM customers c
    JOIN orders o ON c.customer_id = o.customer_id
    join order_details od on o.order_id = od.order_id
  GROUP BY 
  		   c.company_name
  LIMIT 5;