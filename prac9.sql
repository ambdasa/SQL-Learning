CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    department VARCHAR(50) NOT NULL,
    salary INTEGER NOT NULL
);

INSERT INTO employees (name, department, salary) VALUES
('John Doe', 'Sales', 50000),
('Jane Smith', 'Marketing', 60000),
('Bob Johnson', 'Finance', 70000),
('Karen Williams', 'Sales', 55000),
('Mike Johnson', 'Marketing', 65000),
('Sarah Lee', 'Finance', 75000);

Create table employee_salary_60 as(
Select id, name, salary from employees where salary> 60000);

Select * from employee_salary_60;

Create temp table temp_employee( id serial, name varchar(50) not null, age int);

Select * from pg_catalog.pg_tables where tablename = 'temp_employee';

CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    age INTEGER,
    marks FLOAT(2)
);

INSERT INTO students (name, age, marks) VALUES
('John', 20, 78.5),
('Jane', 22, 89.2),
('Peter', 21, 92.3),
('Mary', 23, 86.7),
('David', 19, 73.9);

Select * from students;

Select age, marks::int from students; 

Select age, cast(marks as numeric) from students;

Select extract(day from cast('2025-04-11' as date));

