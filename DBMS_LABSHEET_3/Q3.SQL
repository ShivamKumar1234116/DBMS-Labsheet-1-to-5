-- Q3: Revoke INSERT privilege on employees from alice@localhost
USE company_db;
REVOKE INSERT ON company_db.employees FROM 'alice'@'localhost';
