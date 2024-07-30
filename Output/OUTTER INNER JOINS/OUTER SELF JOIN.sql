-- Outself Self Join:

USE sql_hr;

SELECT e.first_name, e.last_name, m.first_name AS Manager
FROM employees e
LEFT JOIN employees m
ON e.reports_to = m.employee_id