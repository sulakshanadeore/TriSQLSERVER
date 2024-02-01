select * from products

select productid,unitprice,2*unitprice from products
                               expression     alias(temporary name)
select productid, unitprice,(unitprice*0.10) discountAmt ,unitprice-(unitprice*0.10)finalAmt from products

select productid, unitprice,(unitprice*0.10) discountFig ,unitprice-(unitprice*0.10)SellingPriceAfterDiscount from products


select productid, unitprice,(unitprice*0.10) discountFig ,unitprice-(unitprice*0.10)SellingPriceAfterDiscount from products
where UnitPrice>10

--Null cannot be compared with >,<,>=,<=,!=,=
select * from customers
where Region is null

select * from customers
where Region is not null

select Customerid, region, isnull(region,'Absent') from Customers 

select * from Suppliers
select SupplierID,CompanyName,city,isnull(HomePage,'Cannot find') HomePage from Suppliers

select SupplierID,CompanyName,city,isnull(HomePage,'Cannot find') from Suppliers


select top 10 supplierid,CompanyName from Suppliers

select top 10 productid,productName from Products

select  productid,productName from Products
order by productname

select  productid,productName from Products
order by productname  desc

--top N analysis
select top 10 productid,productName from Products
order by ProductName desc

select ProductID,UnitPrice from Products
order by UnitPrice asc 

--top 10 cheapest products (price)-----ascending
select top 10 ProductID,UnitPrice from Products
order by UnitPrice asc 

select top 10 ProductID,UnitPrice from Products
order by UnitPrice desc 

select top 10 ProductID,unitprice from Products
order by productid,unitprice desc 


select getdate()

select getdate() +10

select getdate(), DATEADD(D,10,getdate())
select getdate(), DATEADD(M,10,getdate())
select getdate(), DATEADD(YYYY,10,getdate())

select hiredate,DATEDIFF(YYYY,hiredate,getdate()) from Employees

select datediff(YYYY,'2000-01-01',getdate())

select DATEPART(Year,getdate()),datepart(month,getdate()),DATEPART(day,getdate()),DATEPART(WK,getdate())

select DATENAME(Year,getdate()),datename(dayofyear,getdate()),DATENAME(weekday,getdate())

select unitprice from Products
where CategoryID=1
where ProductID=1 or Productid=2

select sum(unitprice) from Products
where ProductID=1 or Productid=2

select productid,productname,CategoryID,unitprice from Products
where CategoryID=1

select 18.00+19.00+4.50+14.00+18.00+263.50+18.00+46.00+14.00+15.00+7.75+18.00

select sum(unitprice) from Products
where CategoryID=1


select sum(unitprice) from Products
where CategoryID=1 or CategoryID=2 or CategoryID=3
--categoryid wise sum of unitprice(group by)
select categoryid,sum(unitprice) from Products
where CategoryID=1 or CategoryID=2 or CategoryID=3
group by CategoryID

categoryid  sum(unitprice)
   1             455.75
   2             276.75
   3             327.08

select categoryid,sum(unitprice) from Products
group by CategoryID


---Total number of products in each cateogy
select categoryid,count(productid) from Products
group by CategoryID

----max value of unitprice in each category
select categoryid,max(unitprice) from Products
group by CategoryID


----min value of unitprice in each category
select categoryid,min(unitprice) from Products
group by CategoryID

----avg value of unitprice in each category
select categoryid,avg(unitprice) average,min(unitprice) minimum,max(unitprice) maximum,count(unitprice) countprod,sum(unitprice) total from Products
group by CategoryID

select categoryid,min(unitprice) from Products
group by CategoryID
having min(unitprice)>=6.00  --after grouping and applied on aggregate function
order by min(unitprice)

select categoryid,avg(unitprice)average,  from Products
group by CategoryID




--top 10 products on basis of review
select top 10 ProductID,reviews from Products
order by reviews asc 

--bottom 10 products on basis of review
select top 10 ProductID,reviews from Products
order by reviews desc 


select top 10 ProductID,unitprice from Products
order by productid,unitprice desc 

