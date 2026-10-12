-- Q7. Computer Science
-- Find all employees belonging to Computer Science using an equality-based INNER JOIN.

SELECT e.EmpName, e.City, d.DeptName
FROM Employees e
INNER JOIN Departments d
ON e.DeptID = d.DeptID
WHERE d.DeptName = 'Computer Science';

-- Output / Observation:
-- +---------+-------+-------------------+
-- | EmpName | City  | DeptName          |
-- +---------+-------+-------------------+
-- | Aarav   | Delhi | Computer Science  |
-- | Rahul   | Delhi | Computer Science  |
-- +---------+-------+-------------------+
