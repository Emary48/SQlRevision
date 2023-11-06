-- DDL 
-- Data Defination language 
-- query like ..> create insert based on select , drop  

-- > create database 
--Declartivce programming  
create database Company 
use company
--DDL -- create table 
--varchar  char(100)  nvarchar(150) 
create table Department 
(
DeptId int primary key identity ,
DeptName nvarchar(150) ,
)

select * from Dummy
create table Dummy (id int , name nvarchar(20))

insert  into Dummy  values (200,'HP') , (500,'ss') , (300,'Kamal')

delete from Dummy   --> you can delete all data or specific data 
delete from Dummy where id = 300
truncate table Dummy  -- > faster than Delete  delete all data only 
drop table Dummy
select * from Department

Drop table Department 
-- truncare .. delete 

-- remove data and structrue 


--DML 

-- Insert Data at the table 

select * from Department
--insert into Department values ('SW')

insert into Department values 
('HR'),('IT') , ('Marketing')

select * from Department

--> 

create table Employee 
(
Id int primary key identity , 
Fname nvarchar (150) , 
Lname nvarchar(100),
Age int ,
Salary int , 
DeptId  int ,

)

drop table Employee  
alter table Employee Add Constraint c11 foreign key (DeptId) 
references Department(DeptId) On delete set null on update cascade

-- 1 2 3 4 

select * from Employee

insert into Employee Values ('Ahmed','ibrahim',29,2500,1)

insert into Employee (Fname , Lname ) values ('mohames','Emary') 

update Employee set salary=20000 
where id=3

-----dql -->  data  --> EF ORM  .. ORM Dapper you will need understand row sql 


 -- connection op = new connection () ; op.open() , op.execute(''); .closed()


 select * from Employee

 select Fname +' '+Lname as FullName , Salary as [net salary] from Employee
 


 -- join three lecture 

 select * from Employee

update employee set fname='Mohammed'
where id = 3


--- join cross join 


--select * from Employee cross join Department
-- multiple first table by second table 


--inner join ---> 

select * from  Employee emp  inner join Department dept 
on dept.deptid=emp.deptid


-- left outer join 
select * from  Employee emp  left outer join Department dept 
on dept.deptid=emp.deptid

-- right outer join 


select * from Employee emp right outer join Department dept 
on Dept.deptid=emp.deptid


-- full outer join 


select * from Employee emp full outer join Department dept 
on Dept.deptid=emp.deptid


select * from Employee
select * from department
insert into Employee (fname , lname , age , salary)
values ('abdelrahman' , 'amr' , 24 , 200)



 -- self join 


 create table Instructor (id int primary key identity , name nvarchar(100) not null
, supId int 
 )

 select * from Instructor

 insert into instructor (name) values ('ahmed') , ('Emary')

 alter table Instructor add constraint c2 foreign key (supId) references Instructor(id)

select * from Instructor
insert into Instructor values ('abdelrahman',1) , ('islam', 1)


insert into Instructor (name) values ('Ekram')

insert into Instructor  values ('wessam', 5) , ('sally' , 5 ) , ('assmaa',5)

-- fetch name manager and name of it's employee 

select emp.name as [employee name] , sup.name as [manager name] from Instructor emp  inner join Instructor sup 
on sup.id = emp.supId



select  * from Instructor manager , Instructor employee 
where manager.id = employee.supId 


-- join is finsied 







