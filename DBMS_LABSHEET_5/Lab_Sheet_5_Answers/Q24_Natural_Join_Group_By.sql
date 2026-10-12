-- Q24. Natural Join + GROUP BY
-- Using NATURAL JOIN, count employees in each department.

SELECT d.DeptName, COUNT(*) AS EmployeeCount
FROM Employees e
NATURAL JOIN Departments d
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
