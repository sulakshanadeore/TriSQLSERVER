use Northwind
go
select * from Customers

select CustomerID,CompanyName,ContactTitle,Country from  Customers
where Country='Germany'

Software Engineering/DBMS Concepts
tablename----Entity
column names-----attributes
row-----tuple

relation---->relationship between entities
1) 1-1-------> One customer has only one GST no./ One person has only one aadhar no/one person--one pan_no
Customer
 cstname aadhar--pk
            123


aadhar data
regid     adharno
  101     123


The PK in both tables is important.
A unique + compulsory value is a primary key
              non-null

	NULL----> unknown, ITs different from a zero.

A employee who is salesman is eligible for commision on sales.
Empno       Ename         Job         Comm
1			A              Clerk        NULL
2           B              Salesman     0---------
3            c            salesman      100

	

2) 1-M-------->
1 Person---M Phone nos
1 Cart----M Products
1 Category----M Products
FK----referential integrity

categoryid(pk)
1                       dairy

products
            fk
101  milk   1

Category---> Products
Dairy:- Milk,Curd,Cheese etc

---------------------------------------
3) M-N
1 Person----> M Languages
M Persons------1 Languages
------------------------------------------
select * from categories
pk--fk ---search faster


select * from products
where categoryid=4



1 Supplier----M Products
Include the key attribute of one into many.
			(PK)            Supplier---->supplierid(Products)

The supplierid where it will repeated?--> Products


---show the details of supplier id 2
select * from suppliers
where supplierid=2

--Show the list of products supplied by supplierid 2
select * from products
where supplierid=2

sp_help suppliers
sp_help products

select getdate()
compute----function----return
action performed-----procedure---void
//list the customers who are from London or Berlin
select * from customers
where city='London' or city='Berlin'

//list the customers who are from London or Berlin and they must 'Sales Representatives'
select * from customers
where (city='London' or city='Berlin')  and ContactTitle='Sales Representative'

//query---->1) list the data from the products table
2) The supplierid can be 1 or 2 or 3
3) The category id=1

select * from products
where (supplierid=1 or supplierid=2 or supplierid=3) and categoryid=1

select * from products
where supplierid in(1,2,3) and categoryid=1


select * from products
where categoryid=1 and supplierid in(1,2,3) 

select * from products
where categoryid=1 and supplierid between 1 and 3 

--inlcusive(the values u mentioned will be included) operator to work with range (range of dates, ranges of nos)
select * from employees
where hiredate between '1993-10-17' and '1994-01-02'









