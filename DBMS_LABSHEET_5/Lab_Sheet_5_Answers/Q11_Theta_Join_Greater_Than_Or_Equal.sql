-- Q11. Theta Join – Greater Than or Equal
-- Display employee name, salary, and grade where employee salary is >= the grade minimum.

SELECT e.EmpName, e.Salary, sg.Grade, sg.MinSalary
FROM Employees e
JOIN SalaryGrades sg
ON e.Salary >= sg.MinSalary;

-- Output / Observation:
-- Example result rows:
-- Aarav    65000.00 G2 50000.00
-- Aarav    65000.00 G1 0.00
-- Priya    72000.00 G3 70000.00
-- Priya    72000.00 G2 50000.00
-- Priya    72000.00 G1 0.00
-- Rahul    48000.00 G1 0.00
-- Sneha    91000.00 G4 90000.00
-- Sneha    91000.00 G3 70000.00
-- Sneha    91000.00 G2 50000.00
-- Sneha    91000.00 G1 0.00
-- Vikram   55000.00 G2 50000.00
-- Vikram   55000.00 G1 0.00
-- Neha     80000.00 G3 70000.00
-- Neha     80000.00 G2 50000.00
-- Neha     80000.00 G1 0.00
-- Kabir    43000.00 G1 0.00
