# Write your MySQL query statement below
SELECT l1.num AS ConsecutiveNums
FROM logs l1
JOIN logs l2 ON l1.num = l2.num AND l1.id = l2.id - 1
JOIN logs l3 ON l1.num = l3.num AND l1.id = l3.id - 2
GROUP BY l1.num;
