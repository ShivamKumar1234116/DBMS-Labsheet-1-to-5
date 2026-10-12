-- Q3. Pharmacy Employees
-- Use INNER JOIN and WHERE to display employees belonging to the Pharmacy department.

SELECT e.EmpID, e.EmpName, e.DeptID, d.DeptName
FROM Employees e
INNER JOIN Departments d
ON e.DeptID = d.DeptID
WHERE d.DeptName = 'Pharmacy';

-- Output / Observation:
-- +-------+---------+--------+-----------+
-- | EmpID | EmpName | DeptID | DeptName  |
-- +-------+---------+--------+-----------+
-- | 102   | Priya   | 20     | Pharmacy  |
-- | 105   | Vikram  | 20     | Pharmacy  |
-- +-------+---------+--------+-----------+
