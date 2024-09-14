use classicmodels;
SELECT ord.orderNumber,p.productName,p.productCode from orderdetails ord
JOIN products p
ON p.productCode=ord.productCode;