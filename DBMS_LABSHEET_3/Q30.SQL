-- Q30: Complete administrative maintenance script
CREATE USER IF NOT EXISTS 'test_maint'@'localhost' IDENTIFIED BY 'MaintPass2026!';
GRANT SELECT, INSERT, UPDATE ON company_db.* TO 'test_maint'@'localhost';

START TRANSACTION;
UPDATE employees
SET is_active = FALSE
WHERE emp_id = 104;
ROLLBACK;

SHOW GRANTS FOR 'test_maint'@'localhost';
REVOKE SELECT, INSERT, UPDATE ON company_db.* FROM 'test_maint'@'localhost';
ALTER USER 'test_maint'@'localhost' ACCOUNT LOCK;
FLUSH PRIVILEGES;
