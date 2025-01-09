# Write your MySQL query statement below
SELECT COALESCE((SELECT DISTINCT salary 
from employee
order by salary desc limit 1 ,1), null) as SecondHighestSalary