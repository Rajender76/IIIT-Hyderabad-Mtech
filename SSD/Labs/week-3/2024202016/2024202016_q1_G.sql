use classicmodels;
SELECT cust.customerName FROM customers cust 
WHERE cust.customerNumber NOT IN (SELECT ord.customerNumber FROM orders ord);
