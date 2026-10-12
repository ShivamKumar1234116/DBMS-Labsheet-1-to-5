-- Q17. Employee Count
-- Use INNER JOIN, GROUP BY, and COUNT to show the number of employees in each matched department.

SELECT d.DeptName, COUNT(*) AS EmployeeCount
FROM Employees e
INNER JOIN Departments d
ON e.DeptID = d.DeptID
GROUP BY d.DeptName
ORDER BY d.DeptName;

-- Output / Observation:
-- +-------------------+---------------+
-- | DeptName          | EmployeeCount |
-- +-------------------+---------------+
-- | Computer Science  | 2             |
-- | Management        | 2             |
-- | Pharmacy          | 2             |
-- +-------------------+---------------+
