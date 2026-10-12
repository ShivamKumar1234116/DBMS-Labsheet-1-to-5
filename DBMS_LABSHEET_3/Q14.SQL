-- Q14: Read-only transaction mode for analyst
SET SESSION TRANSACTION READ ONLY;
START TRANSACTION;
SELECT * FROM company_db.employees;
SELECT * FROM company_db.departments;
COMMIT;
