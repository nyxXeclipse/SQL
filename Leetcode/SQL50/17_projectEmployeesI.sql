# Write your MySQL query statement below
select project_id, 
round(sum(e.experience_years)/count(e.employee_id),2) as average_years
from Project p 
join Employee e
on p.employee_id = e.employee_id
group by project_id
order by average_years




-- using avg function
SELECT
    p.project_id,
    ROUND(AVG(e.experience_years), 2) AS average_years
FROM Project p
JOIN Employee e
ON p.employee_id = e.employee_id
GROUP BY p.project_id;