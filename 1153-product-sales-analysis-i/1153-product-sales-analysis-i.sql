# Write your MySQL query statement below
SELECT 
   s.year,s.price,p.product_name
FROM
   Sales AS s
LEFT JOIN
   Product AS p
ON
   p.product_id=s.product_id
