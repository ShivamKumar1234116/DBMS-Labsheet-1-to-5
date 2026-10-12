-- Q20. Highest Paid Employee
-- Find the highest-paid employee among matched employees and display name, department, and salary.

SELECT e.EmpName, d.DeptName, e.Salary
FROM Employees e
INNER JOIN Departments d
ON e.DeptID = d.DeptID
ORDER BY e.Salary DESC
LIMIT 1;

-- Output / Observation:
-- +---------+-------------------+-----------+
-- | EmpName | DeptName          | Salary    |
-- +---------+-------------------+-----------+
-- | Sneha   | Management        | 91000.00  |
-- +---------+-------------------+-----------+
