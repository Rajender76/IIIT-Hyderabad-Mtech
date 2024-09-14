use classicmodels;
select distinct offs.city from offices offs WHERE offs.city IN (select cust.city FROM customers cust);