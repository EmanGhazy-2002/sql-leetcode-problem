# Write your MySQL query statement below
SELECT 
   e1.name
FROM 
   Employee e1
JOIN
   Employee e2
ON 
   e2.managerId=e1.id
GROUP BY
    e2.managerId
HAVING 
   count(*) >=5
