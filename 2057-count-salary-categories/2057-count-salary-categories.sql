# Write your MySQL query statement below
SELECT 'Low Salary' AS category,
    COUNT(IF(income < 20000 ,1,null)) AS accounts_count
FROM accounts 

UNION 
    
SELECT 'Average Salary' AS category,
    COUNT(IF(income BETWEEN 20000 AND 50000 ,1,null))
FROM accounts 
UNION 
SELECT 'High Salary' AS category,
    COUNT(IF(income > 50000 ,1,null))
FROM accounts 
