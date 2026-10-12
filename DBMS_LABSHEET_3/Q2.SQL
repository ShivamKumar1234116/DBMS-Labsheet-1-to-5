-- Q2: Grant SELECT and INSERT on employees to alice@localhost
USE company_db;
GRANT SELECT, INSERT ON company_db.employees TO 'alice'@'localhost';
