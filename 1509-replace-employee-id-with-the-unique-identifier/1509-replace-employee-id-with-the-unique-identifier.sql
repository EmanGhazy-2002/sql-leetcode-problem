# Write your MySQL query statement below
SELECT 
    em.name, emu.unique_id 
FROM 
    Employees AS em 
left join 
    EmployeeUNI AS emu
ON
    emu.id=em.id
