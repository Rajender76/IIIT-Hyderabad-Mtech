use classicmodels;
SELECT SUM(ord.quantityOrdered) AS total,pr.productName FROM orderdetails ord
JOIN products pr
ON pr.productCode = ord.productCode 
GROUP BY ord.productCode;
