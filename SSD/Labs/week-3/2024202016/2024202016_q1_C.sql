USE classicmodels;
SELECT DISTINCT cust.customerName,cust.customerNumber
  FROM customers cust
  INNER JOIN orders ord
  ON cust.customerNumber = ord.customerNumber
  UNION
SELECT DISTINCT cust.customerName,cust.customerNumber
  FROM customers cust
  INNER JOIN payments pay
  ON cust.customerNumber = pay.customerNumber;
  
