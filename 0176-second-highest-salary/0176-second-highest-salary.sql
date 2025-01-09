# Write your MySQL query statement below
SELECT  MAX(salary) as SecondHighestSalary
from employee
where salary not in(
    SELECT  MAX(salary) as SecondHighestSalary
from employee )