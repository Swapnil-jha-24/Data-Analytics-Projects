create database Retail

use retail


select * from online_retail
where description is null


--Cheking Nulls

select
	   Sum(case when invoiceno is null then 1 else 0 end) as invoice_null,
	   Sum(case when stockcode is null then 1 else 0 end) as stock_null,
	   Sum(case when description is null then 1 else 0 end) as description_null,
	   Sum(case when Quantity is null then 1 else 0 end) as quantity_null,
	   Sum(case when invoicedate is null then 1 else 0 end) as invoicedate_null,
	   Sum(case when unitprice is null then 1 else 0 end) as unitprice_null,
	   Sum(case when customerid is null then 1 else 0 end) as customerid_null,
	   Sum(case when country is null then 1 else 0 end) as country_null
from Online_Retail

-- Removing Nulls 

delete from Online_Retail
where Description is null

delete from Online_Retail
where CustomerID is null

select * from Online_Retail

select distinct invoiceNo from Online_Retail



-- Checking for Negetive Values

select * from Online_Retail
where Quantity < 0


select count(*) from Online_Retail
where Quantity < 0

select count(*) from Online_Retail
where UnitPrice < 0

-- Checking for Cancelled Orders

select * from Online_Retail
where InvoiceNo lIKE 'C%'

select count(*) from Online_Retail
where InvoiceNo like 'C%'


-- Remove Cancelled Orders
Delete from Online_Retail
where Quantity < 0

select distinct(invoiceNo) from Online_Retail

select * from Online_Retail
where Patindex ('%[A-Za-z]%', InvoiceNo) > 0 

select * from Online_Retail

-- Calculate Revenue

select invoiceno, stockcode, quantity, unitprice, quantity*unitprice as Total_revenue
from Online_Retail

-- Monthly Revenue

select datefromparts(year(invoicedate), month(invoicedate), 1) as month,
sum(quantity * unitprice) as revenue
from Online_Retail 
group by DATEFROMPARTS(year(invoicedate), month(invoicedate),1) 
order by month



-- revenue by country

select country , sum (quantity * UnitPrice) as Revenue
from Online_Retail
group by country
order by Revenue desc

-- top Customers

select top 10 customerid, sum(quantity * UnitPrice) as total_spent
from Online_Retail
group by CustomerID
order by total_spent desc

select * from Online_Retail
