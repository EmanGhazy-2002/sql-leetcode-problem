# Write your MySQL query statement below
SELECT 
    name
FROM
    Customer
WHERE
    COALESCE(referee_id,-1)!=2 ;
/* COALESCE(referee_id,'')!=2
*   referee_id!=2 or referee_id is null */
