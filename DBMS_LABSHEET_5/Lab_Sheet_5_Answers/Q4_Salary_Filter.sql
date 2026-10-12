-- Q4. Salary Filter
-- Display matched employees whose salary is greater than 60000.

SELECT e.EmpName, e.Salary, d.DeptName
FROM Employees e
INNER JOIN Departments d
ON e.DeptID = d.DeptID
WHERE e.Salary > 60000;

-- Output / Observation:
-- +---------+---------+-------------------+
-- | EmpName | Salary  | DeptName          |
-- +---------+---------+-------------------+
-- | Aarav   | 65000.00| Computer Science  |
-- | Priya   | 72000.00| Pharmacy          |
-- | Sneha   | 91000.00| Management        |
-- +---------+---------+-------------------+
