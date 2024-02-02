use Northwind
go

Join--clause used in select statement

--with which we are able to combine the rows from one or more tables, using a common column
between the tables that we want to join, this condtition is called joining condition.
The output is called "Join"

select * from orders
select * from [Order Details]
			
			comparision
			operator
ORderid---condition---joining column
types
1)Equi Joins--- =(equal) operator in the condition. Also called inner join/join
2) NonEqui Join--- other than (equal) non equi
3) Self Joins----when a table is joined to itself
4) Outer Joins----forcefully join tables to extract data non existing in one of the tables

select  * from Orders

select distinct o.OrderID, Customerid,EmployeeID
from [Orders] o inner join  [Order Details] od
on o.OrderID=od.OrderID

select * from  [Order Details]

select * from Orders
select * from Employees

select o.orderid,o.customerid,c.companyname,Firstname from customers c inner join  Orders o 
on o.CustomerID=c.CustomerID 
inner join 
Employees e
 on o.EmployeeID=e.EmployeeID

 select * from products
 select * from Categories
 select * from Suppliers

 select productid,ProductName,p.CategoryID,CategoryName,p.SupplierID,CompanyName from Products p inner join Categories c
 on p.CategoryID=c.CategoryID
 inner join Suppliers s
 on p.SupplierID=s.SupplierID


 select * from Employees

 select employeeid,firstname,title,lastname,reportsto from employees

 select concat(firstname,lastname) from employees
 select firstname + ' ' + lastname Fullname
 from Employees

 select emp.EmployeeID,emp.firstname + ' ' +emp.lastname EmpFullname, emp.ReportsTo,mgr.firstname + ' ' +mgr.lastname ManagerFullName
 from
 employees emp, Employees mgr
 where emp.reportsto=mgr.Employeeid

 
 select * from Customers--91

 2---not even placed orders even once
 select distinct customerid from Orders--89
 1)
 LHS                          RHS
 select companyname,c.CustomerID ,orderid from
 Customers c   left outer join orders o
 on c.customerid=o.customerid
order by o.OrderID

2)
 select c.CustomerID, companyname,orderid from
 Customers c   right outer  join orders o
 on c.customerid=o.customerid
order by o.OrderID

3) 
 select c.CustomerID, companyname,orderid from
 Customers c  full outer join orders o
 on c.customerid=o.customerid
order by o.OrderID

4) select c.CustomerID, companyname,orderid from 
orders o  left outer join    Customers c 
 on c.customerid=o.customerid
order by o.OrderID

