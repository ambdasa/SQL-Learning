Create table employees ( id int primary key, name varchar(50) not null, department varchar(50) not null);

Create table salaries( id int primary key, employee_id integer not null, salary integer not null);

INSERT INTO employees (id, name, department)
VALUES
(1, 'John Smith', 'Sales'),
(2, 'Jane Doe', 'Marketing'),
(3, 'Bob Brown', 'Sales'),
(5, 'Sarah Anderson', 'Marketing');

INSERT INTO salaries (id, employee_id, salary)
VALUES
(1, 1, 50000),
(2, 2, 60000),
(3, 3, 70000),
(4, 4, 80000);

select * from employees e INNER JOIN salaries s on e.id=s.employee_id;

select * from employees e LEFT JOIN salaries s on e.id=s.employee_id;

select * from employees e RIGHT JOIN salaries s on e.id=s.employee_id;

select * from employees e FULL OUTER JOIN salaries s on e.id=s.employee_id;

select * from employees e CROSS JOIN salaries s;

Select e.name, e.department from employees e JOIN salaries s on e.id=s.employee_id and salary>50000;




