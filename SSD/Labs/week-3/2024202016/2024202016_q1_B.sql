USE classicmodels;
select productName,buyPrice from (select productName,buyPrice from products order by buyPrice desc LIMIT 15) AS TOP15VALUES LIMIT 10 OFFSET 5;
