-- Q19. HAVING
-- Show departments whose average employee salary is greater than 60000.

SELECT d.DeptName, AVG(e.Salary) AS AvgSalary
FROM Employees e
INNER JOIN Departments d
ON e.DeptID = d.DeptID
GROUP BY d.DeptName
HAVING AVG(e.Salary) > 60000
ORDER BY AvgSalary DESC;

-- Output / Observation:
-- +-------------------+-----------+
-- | DeptName          | AvgSalary |
-- +-------------------+-----------+
-- | Management        | 67000.00  |
-- | Pharmacy          | 63500.00  |
-- +-------------------+-----------+
