### SQL LAB -3

Prerequisities

Products =pr , orders ord, Employess emp;


QB)


QE)

use classicmodels;
SELECT emp.employeeNumber,emp.firstName,emp.lastName,emp.jobTitle FROM employees emp
WHERE emp.reportsTo NOT IN (
 SELECT emp.employeeNumber FROM employees);
QK)
use classicmodels;
SELECT pr.productName,ord.productCode,SUM(ord.quantityOrdered) AS total FROM products pr
JOIN orderdetails ord
ON pr.productCode = ord.productCode 
GROUP BY pr.productCode HAVING total>1000;



