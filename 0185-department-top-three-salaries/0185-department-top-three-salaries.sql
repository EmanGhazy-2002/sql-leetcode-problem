# Write your MySQL query statement below
SELECT d.name as Department,e.name as Employee,salary 
from employee e
join department d
on e.departmentid=d.id
WHERE(
        SELECT COUNT(DISTINCT salary)
        FROM employee e2
        WHERE e2.departmentid=e.departmentid AND e2.salary >=e.salary
    ) <=3
order by 3 desc