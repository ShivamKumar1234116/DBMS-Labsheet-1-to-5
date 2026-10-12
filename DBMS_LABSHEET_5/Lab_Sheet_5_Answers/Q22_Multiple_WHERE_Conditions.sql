-- Q22. Multiple WHERE Conditions
-- Display employees from Delhi or Pune whose salary is at least 50000, with department names.

SELECT e.EmpName, e.City, e.Salary, d.DeptName
FROM Employees e
INNER JOIN Departments d
ON e.DeptID = d.DeptID
WHERE (e.City = 'Delhi' OR e.City = 'Pune')
AND e.Salary >= 50000;

-- Output / Observation:
-- +---------+-------+-----------+-------------------+
-- | EmpName | City  | Salary    | DeptName          |
-- +---------+-------+-----------+-------------------+
-- | Aarav   | Delhi | 65000.00  | Computer Science  |
-- | Sneha   | Pune  | 91000.00  | Management        |
-- +---------+-------+-----------+-------------------+
