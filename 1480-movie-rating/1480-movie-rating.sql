# Write your MySQL query statement below
(SELECT name AS results
FROM Users u
JOIN MovieRating m ON u.user_id = m.user_id
GROUP BY u.name
ORDER BY COUNT(DISTINCT m.movie_id) DESC, u.name
LIMIT 1
)
UNION ALL
(SELECT title AS results
FROM Movies mo
JOIN MovieRating m ON mo.movie_id = m.movie_id
WHERE m.created_at BETWEEN '2020-02-01' AND '2020-02-29'
GROUP BY mo.title
ORDER BY AVG(m.rating) DESC,mo.title
LIMIT 1)