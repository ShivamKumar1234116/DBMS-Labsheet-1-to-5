-- Q23: Shared lock using FOR SHARE before report query
START TRANSACTION;
SELECT * FROM departments WHERE dept_id = 10 FOR SHARE;
-- analytical report queries here
COMMIT;
