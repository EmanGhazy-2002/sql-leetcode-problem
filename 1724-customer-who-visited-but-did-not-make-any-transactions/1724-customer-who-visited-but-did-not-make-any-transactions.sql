# Write your MySQL query statement below
SELECT
   v.customer_id,count(v.customer_id) AS count_no_trans
FROM
   Visits AS v
LEFT JOIN
   Transactions AS t
ON 
   t.visit_id =v.visit_id
WHERE
   t.transaction_id is NULL
GROUP BY
    v.customer_id;