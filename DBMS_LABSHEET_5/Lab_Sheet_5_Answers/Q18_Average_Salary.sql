-- Q18. Average Salary
-- Use INNER JOIN and GROUP BY to calculate average salary for each matched department.

SELECT d.DeptName, ROUND(AVG(e.Salary), 2) AS AvgSalary
FROM Employees e
INNER JOIN Departments d
ON e.DeptID = d.DeptID
GROUP BY d.DeptName
ORDER BY AvgSalary DESC;

-- Output / Observation:
-- +-------------------+-----------+
-- | DeptName          | AvgSalary |
-- +-------------------+-----------+
-- | Management        | 67000.00  |
-- | Pharmacy          | 63500.00  |
-- | Computer Science  | 56500.00  |
-- +-------------------+-----------+
