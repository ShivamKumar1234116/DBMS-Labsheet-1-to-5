-- Q1. Basic Inner Join
-- Display employee names, department names, and department locations for employees with matching departments.

SELECT e.EmpName, d.DeptName, d.Location
FROM Employees e
INNER JOIN Departments d
ON e.DeptID = d.DeptID;

-- Output / Observation:
-- +----------+-------------------+----------+
-- | EmpName  | DeptName          | Location |
-- +----------+-------------------+----------+
-- | Aarav    | Computer Science  | Block A  |
-- | Priya    | Pharmacy          | Block B  |
-- | Rahul    | Computer Science  | Block A  |
-- | Sneha    | Management        | Block C  |
-- | Vikram   | Pharmacy          | Block B  |
-- | Kabir    | Management        | Block C  |
-- +----------+-------------------+----------+
