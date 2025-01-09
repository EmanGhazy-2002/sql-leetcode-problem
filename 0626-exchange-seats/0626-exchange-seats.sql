# Write your MySQL query statement below
SELECT id, 
CASE 
WHEN id%2 =0 THEN Lag(student) OVER(ORDER BY id)
ELSE COALESCE(Lead(student) OVER(ORDER BY id) ,student)
END AS student
FROM seat

