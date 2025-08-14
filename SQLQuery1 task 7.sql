use vinaykumar
go
create table employesdata(emp_id int primary key,emp_name varchar(50),department_name varchar(50),salary float)

create table departmentsdata(dept_id int primary key,dept_name varchar(50))

insert into employesdata values(1,'vinay','HR',50000)
insert into employesdata values(2,'sunil','IT',60000)
insert into employesdata values(3,'pavan','FINANCE',70000)
insert into employesdata values(4,'uday','SALES',80000)

insert into departmentsdata values(1,'HR')
insert into departmentsdata values(2,'IT')
insert into departmentsdata values(3,'FINANCE')
insert into departmentsdata values(4,'SALES')
select*from employesdata
select*from departmentsdata

create view employesdatabasic as 
select emp_name,department_name from employesdata

create view highsalaryIT as 
select e.emp_name,e.salary,d.dept_name from employesdata e join departmentsdata d on e.department_name=d.dept_name where e.salary>6000

select*from employesdatabasic
select*from highsalaryIT

update employesdatabasic set department_name='FINANCE' where emp_name='vinay'

drop view employesdatabasic