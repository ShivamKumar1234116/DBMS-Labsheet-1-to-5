-- Q24: Apply query throttling and connection limits to auditor
ALTER USER 'auditor'@'localhost'
WITH MAX_QUERIES_PER_HOUR 100 MAX_USER_CONNECTIONS 2;
