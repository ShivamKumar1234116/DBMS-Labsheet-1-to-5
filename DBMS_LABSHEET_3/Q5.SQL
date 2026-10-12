-- Q5: Commit departmental insertion
START TRANSACTION;
INSERT INTO departments (dept_id, dept_name, location, budget)
VALUES (60, 'Operations', 'Building E', 250000.00);
COMMIT;
