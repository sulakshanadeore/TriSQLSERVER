--DQL--Query---Select
---------------------
--DDL-----Data Definition Language: Structure of the objects
--Create/alter/drop--- table,view,synonym,index
--****************
--create table

--alter table
--drop table

----------------------
--DML---Data Manipulation Language
--insert/update/deleting data: Physically the data exists in the table, physical changes to the data 
-----------------------
--DCL--Data Control Language
--grant/revoke----rights
--grant--give
--revoke---take back

--commit/rollback---data saving to the server/ undo the save
--commit---saving the data to the database
--rollback----
--User 1:
--    insert 1 row--12345

--	save
--	edit
--	save
--don't save cannot be said after saving
--insert but not yet saved-----he can rollback(undo the changes) that he was doing


--User 2:
--    insert 1 row
------------------------------------------------
create database HR
go

use HR
go

create table Dept
(Deptno int  identity(100,1) primary key,
Dname varchar(23),
Loc varchar(20))


--Dname(20)		Gender
1--Purchase-8		M
2--Sales-5			F
3--Training-8		
4--Development-11
5--Artificial Intelligence-23

numeric(3)----999
12,2------ 9,99,99,99,99,9.99
create table Emp
(Empno numeric(3) identity(1,1) primary key,
Ename varchar(25),
City varchar(20),
Sal numeric(12,2) not null,
Deptno int foreign key references Dept(Deptno)
)

insert into Dept values('Purchase','Pune');
insert into Dept values ('Sales','Bangalore'),('Learning','Bhopal'),('Development','Mumbai')
select * from Dept
insert into Emp values('Jay','Pune',120000,100)

insert into Emp values('Ajay','Mumbai',10000,100),('Vijay','Bhopal',10000,102),('Ajay','Mumbai',10000,101)

select * from Emp
----------------------------------------------
sp_help dept

alter table dept
alter column Dname varchar(25)
insert into Dept values('Data Science-Python etc','Pune',null);

alter table dept
alter column Dname varchar(20)

alter table dept
add MgrName varchar(20)


update dept 
set mgrname='Ananya'
where deptno in (101,103)

select * from dept

--edit existing records
update dept 
set mgrname='Suganya',loc='Kochi'
where deptno =100 

delete from dept
where deptno=104

--create table from exiting table along with data
select * into deptDuplicate from dept

//table structure and data gets copied but constraints ie primary key etc is not considered for creation
sp_help deptDuplicate

select * from deptDuplicate

drop table deptDuplicate