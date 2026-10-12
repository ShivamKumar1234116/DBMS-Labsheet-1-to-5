-- Q13: Revoke UPDATE on employees from hr_assistant
USE company_db;
REVOKE UPDATE ON company_db.employees FROM 'hr_assistant'@'localhost';
