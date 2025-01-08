# Write your MySQL query statement below
SELECT person_name 
from (
    SELECT person_name
    ,turn
    ,sum(weight) over (order by turn) as total
    from queue
) as query
where total <=1000
order by turn desc limit 1