# Write your MySQL query statement below
SELECT DISTINCT visited_on,
    (SELECT SUM(amount)
        FROM Customer c1
        WHERE DATE_SUB(c.visited_on, INTERVAL 6 DAY) <= c1.visited_on AND c1.visited_on <= c.visited_on) AS amount,
    (SELECT ROUND(SUM(amount)/7,2)
        FROM Customer c1
        WHERE DATE_SUB(c.visited_on, INTERVAL 6 DAY) <= c1.visited_on AND c1.visited_on <= c.visited_on) AS average_amount
FROM Customer c
WHERE DATE_SUB(visited_on, INTERVAL 6 DAY) >= (SELECT MIN(visited_on) FROM Customer)