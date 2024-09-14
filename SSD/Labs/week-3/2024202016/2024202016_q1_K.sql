use classicmodels;
SELECT pr.productName,ord.productCode,SUM(ord.quantityOrdered) AS total FROM products pr
JOIN orderdetails ord
ON pr.productCode = ord.productCode 
GROUP BY pr.productCode HAVING total>1000;