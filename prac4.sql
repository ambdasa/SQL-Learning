Create table employees_2( id SERIAL primary key, name text, age integer, salary numeric);

Insert into employees_2(name, age, salary) values('Kranthi Kumar Dunna', 25, 130000);

Select * from employees_2 order by id asc;

Update employees_2 set name = 'Ambica Dasari', salary= 140000 where id=2;

Delete from employees_2 where id=4 and age =25;