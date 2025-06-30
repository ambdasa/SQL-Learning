create table employees
(employee_id integer primary key, employee_name text not null, employee_salary numeric(10,2) check(employee_salary>0));

Insert into employees values(1,'Kranthi', 2000);

Update employees set employee_salary=20000 where employee_id=1;

Alter table employees alter column employee_salary set not null;

Select * from employees;