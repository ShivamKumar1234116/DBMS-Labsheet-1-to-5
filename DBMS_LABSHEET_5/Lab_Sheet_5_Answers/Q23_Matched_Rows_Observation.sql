-- Q23. Matched Rows Observation
-- Use INNER JOIN to display all matched employees. Observe which employee is excluded because no department has DeptID 50.

SELECT e.EmpID, e.EmpName, e.DeptID, d.DeptName
FROM Employees e
INNER JOIN Departments d
ON e.DeptID = d.DeptID;

-- Output / Observation:
-- The joined rows show employees with valid matching departments: 101, 102, 103, 104, 105, and 107.
-- Employee 106 (Neha, DeptID 50) is excluded because there is no matching department record with DeptID = 50.
-- +-------+---------+--------+-------------------+
-- | EmpID | EmpName | DeptID | DeptName          |
-- +-------+---------+--------+-------------------+
-- | 101   | Aarav   | 10     | Computer Science  |
-- | 102   | Priya   | 20     | Pharmacy          |
-- | 103   | Rahul   | 10     | Computer Science  |
-- | 104   | Sneha   | 30     | Management        |
-- | 105   | Vikram  | 20     | Pharmacy          |
-- | 107   | Kabir   | 30     | Management        |
-- +-------+---------+--------+-------------------+
