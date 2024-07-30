-- Tables Joining By Themselves

USE sql_hr;

SELECT *
FROM employees e
JOIN employees m
ON e.reports_to = m.employee_id;

-- More specificity:

SELECT e.employee_id, e.first_name, m.first_name AS 'Manager'
FROM employees e
JOIN employees m
ON e.reports_to = m.employee_id;