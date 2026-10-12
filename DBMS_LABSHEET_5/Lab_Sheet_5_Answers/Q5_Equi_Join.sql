-- Q5. Equi Join
-- Perform an Equi Join between Employees and Departments using DeptID = DeptID.

SELECT e.EmpID, e.EmpName, e.DeptID, d.DeptName, d.Location
FROM Employees e, Departments d
WHERE e.DeptID = d.DeptID;

-- Output / Observation:
-- +-------+---------+--------+-------------------+----------+
-- | EmpID | EmpName | DeptID | DeptName          | Location |
-- +-------+---------+--------+-------------------+----------+
-- | 101   | Aarav   | 10     | Computer Science  | Block A  |
-- | 102   | Priya   | 20     | Pharmacy          | Block B  |
-- | 103   | Rahul   | 10     | Computer Science  | Block A  |
-- | 104   | Sneha   | 30     | Management        | Block C  |
-- | 105   | Vikram  | 20     | Pharmacy          | Block B  |
-- | 107   | Kabir   | 30     | Management        | Block C  |
-- +-------+---------+--------+-------------------+----------+
