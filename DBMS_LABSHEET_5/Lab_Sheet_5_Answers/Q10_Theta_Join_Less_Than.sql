-- Q10. Theta Join – Less Than
-- Display employee names and salary grades where employee salary is less than the grade maximum salary.

SELECT e.EmpName, e.Salary, sg.Grade, sg.MaxSalary
FROM Employees e
JOIN SalaryGrades sg
ON e.Salary < sg.MaxSalary;

-- Output / Observation:
-- This query returns every grade whose maximum salary is greater than the employee salary.
-- Example rows:
-- Aarav    65000.00 G2 69999.00
-- Aarav    65000.00 G3 89999.00
-- Aarav    65000.00 G4 120000.00
-- Priya    72000.00 G3 89999.00
-- Priya    72000.00 G4 120000.00
-- Rahul    48000.00 G1 49999.00
-- Rahul    48000.00 G2 69999.00
-- Rahul    48000.00 G3 89999.00
-- Rahul    48000.00 G4 120000.00
-- Sneha    91000.00 G4 120000.00
-- Vikram   55000.00 G2 69999.00
-- Vikram   55000.00 G3 89999.00
-- Vikram   55000.00 G4 120000.00
-- Neha     80000.00 G3 89999.00
-- Neha     80000.00 G4 120000.00
-- Kabir    43000.00 G1 49999.00
-- Kabir    43000.00 G2 69999.00
-- Kabir    43000.00 G3 89999.00
-- Kabir    43000.00 G4 120000.00
