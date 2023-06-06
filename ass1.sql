create database assignment;
use assignment;

create table employees(employee_id int primary key ,
first_name char(25),last_name char(25),job_title char(20),salary int(6) not null,
department_id int ,
constraint fkey FOREIGN KEY(department_id) REFERENCES departments(department_id)on delete set null );

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name CHAR(20)
);





insert into employees values(1,'john','smith','ceo',100000,1)
,(2,'jane','doe','manager',70000,2)
,(3,'bob','johnson','sales assosiate',50000,1),(4,'mary','jones','accountant',60000,2),
(5,'bill','brown','developer',85000,3);

drop table departments;
drop table employees;

select * from departments;

select first_name , last_name , job_title from employees; 

select first_name , last_name ,salary from employees where salary >= 60000;

select avg(salary) Avg_salary from employees;

update employees set salary = 85000 where employee_id = 5;

delete from employees where employee_id = 3;
  
select first_name ,last_name ,job_title from employees order by last_name;

select first_name ,last_name,salary from employees order by  salary  desc;


select first_name , last_name,job_title from employees where job_title = 'manager';

alter table employees add column department_id int(2);

update employees set department_id = 1 where employee_id =1;
update employees set department_id = 2 where employee_id =2;
update employees set department_id = 1 where employee_id =3;
update employees set department_id = 2 where employee_id =4;
update employees set department_id = 3 where employee_id =5;




insert into departments values(1,'sales'),(2,'marketing'),(3,'engineering');

select * from employees;

select employees.first_name , employees.last_name, departments.department_name from employees  inner join 
departments  on employees.department_id = departments.department_id;

select first_name,last_name,department_name from employees join departments on
employees.department_id=departments.department_id where department_name="marketing";
 
 select first_name,last_name,department_name from employees join departments
 on employees.department_id=departments.department_id 
 where department_name="sales" and last_name like "j%";

insert into employees values 
(6,'harish','ryt','',20000,null),
(7,'Anand','Doe','',20000,null);

select  first_name,last_name,department_name from employees left join
departments on employees.department_id=departments.department_id ;

select departments.department_name,count(employees.department_id) from employees join departments on 
employees.department_id=departments.department_id group by employees.department_id;

select first_name,last_name,ifnull(department_name,"Unassigned") from employees left join
 departments on employees.department_id=departments.department_id ;
 
 select first_name,last_name,coalesce(department_name,"unassigned") from employees left join 
 departments on employees.department_id = departments.department_id order by department_name asc;