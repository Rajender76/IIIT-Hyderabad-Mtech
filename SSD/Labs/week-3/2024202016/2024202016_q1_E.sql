use classicmodels;
SELECT emp.employeeNumber,emp.firstName,emp.lastName,emp.jobTitle FROM employees emp
WHERE emp.reportsTo NOT IN (
 SELECT emp.employeeNumber FROM employees);