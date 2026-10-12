-- Q14. Natural Join with Salary
-- Using NATURAL JOIN, display employee name, department name, and salary for salaries >= 70000.

SELECT e.EmpName, d.DeptName, e.Salary
FROM Employees e
NATURAL JOIN Departments d
WHERE e.Salary >= 70000;

-- Output / Observation:
-- +---------+-------------------+-----------+
-- | EmpName | DeptName          | Salary    |
-- +---------+-------------------+-----------+
-- | Priya   | Pharmacy          | 72000.00 |
-- | Sneha   | Management        | 91000.00 |
-- +---------+-------------------+-----------+
