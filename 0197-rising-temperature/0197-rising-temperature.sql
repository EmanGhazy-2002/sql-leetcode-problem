# Write your MySQL query statement below
SELECT 
    w.id
FROM
   Weather AS w
LEFT JOIN
   Weather AS we
ON
   DATEDIFF(w.recordDate,we.recordDate)=1
WHERE
   w.temperature>we.temperature
