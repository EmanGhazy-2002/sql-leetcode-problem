# Write your MySQL query statement below
SELECT num AS ConsecutiveNums
FROM (
SELECT num,
lag(num) over(ORDER BY id)  AS prefix_num,
lead(num) over(ORDER BY id) AS postfix_num
FROM logs
)AS log
WHERE (log.num= prefix_num) AND (log.num=postfix_num)
GROUP BY num