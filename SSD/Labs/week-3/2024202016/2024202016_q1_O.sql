USE classicmodels;
SELECT cust.customerName,count(*) AS Count from customers cust,orders ord
WHERE cust.customerNumber = ord.customerNumber GROUP BY cust.customerNumber HAVING count(*)>=1;