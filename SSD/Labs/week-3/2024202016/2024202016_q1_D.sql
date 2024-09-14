USE classicmodels;
SELECT DISTINCT cust.customerName,cust.customerNumber
  FROM customers cust
  INNER JOIN orders ord
  ON cust.customerNumber = ord.customerNumber
  INNER JOIN payments pay
  ON ord.customerNumber = pay.customerNumber;