-- Q7: Create savepoint
START TRANSACTION;
INSERT INTO departments (dept_id, dept_name, location, budget)
VALUES (70, 'Support', 'Building F', 180000.00);
SAVEPOINT sp_before_update;
