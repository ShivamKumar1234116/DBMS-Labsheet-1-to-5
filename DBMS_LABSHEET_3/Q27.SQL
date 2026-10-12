-- Q27: Deadlock simulation between dev_user and hr_assistant
-- Session 1
START TRANSACTION;
UPDATE employees SET salary = salary + 1000 WHERE emp_id = 101;
-- Session 2
START TRANSACTION;
UPDATE employees SET salary = salary + 2000 WHERE emp_id = 102;
-- Session 1 then tries to lock emp_id = 102
-- Session 2 then tries to lock emp_id = 101
-- MySQL detects deadlock and rolls back one transaction.
