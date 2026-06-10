SELECT CONCAT(d.DepartmentName, ',', s.Name, ',', s.GPA) AS A
FROM Students s
JOIN Departments d
ON s.DepartmentId = d.DepartmentId
WHERE (s.DepartmentId, s.GPA) IN (
    SELECT DepartmentId, MIN(GPA)
    FROM Students
    GROUP BY DepartmentId
)
ORDER BY d.DepartmentName;