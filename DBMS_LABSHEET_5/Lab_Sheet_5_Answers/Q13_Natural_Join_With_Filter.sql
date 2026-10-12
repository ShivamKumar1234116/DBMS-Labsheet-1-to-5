-- Q13. Natural Join with Filter
-- Using NATURAL JOIN, display employees belonging to the department located in Block B.

SELECT e.EmpName, e.DeptID, d.DeptName, d.Location
FROM Employees e
NATURAL JOIN Departments d
WHERE d.Location = 'Block B';

-- Output / Observation:
-- +---------+--------+-----------+----------+
-- | EmpName | DeptID | DeptName  | Location |
-- +---------+--------+-----------+----------+
-- | Priya   | 20     | Pharmacy  | Block B  |
-- | Vikram  | 20     | Pharmacy  | Block B  |
-- +---------+--------+-----------+----------+
