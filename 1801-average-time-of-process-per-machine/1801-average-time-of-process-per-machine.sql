# Write your MySQL query statement below
SELECT  
    x.machine_id ,
    round(avg(y.timestamp - x.timestamp),3) AS processing_time
FROM
    Activity x
JOIN 
    Activity y
ON
    y. machine_id =x. machine_id
    AND y.process_id=x.process_id 
    AND y.activity_type ='end' 
    AND x.activity_type ='start'
GROUP BY x.machine_id