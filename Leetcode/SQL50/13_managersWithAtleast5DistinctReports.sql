SELECT e.name
FROM Employee e
JOIN Employee emp
ON e.id = emp.managerId
GROUP BY e.id, e.name
HAVING COUNT(*) >= 5;





-- another soln
SELECT e.name
FROM Employee e
JOIN (
    SELECT managerId
    FROM Employee
    WHERE managerId IS NOT NULL
    GROUP BY managerId
    HAVING COUNT(*) >= 5
) t
ON e.id = t.managerId;