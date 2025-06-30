CREATE TABLE students (
    id int PRIMARY KEY,
    name varchar(50),
    age int,
    gender varchar(10),
    course_id int,
    FOREIGN KEY (course_id) REFERENCES courses(id)
);

CREATE TABLE courses (
    id int PRIMARY KEY,
    name varchar(50),
    duration int
);

Insert into courses(id,name, duration) values (1,'Math',20);

INSERT INTO students (id, name, age, gender, course_id)
VALUES (11, 'Ambica', 25, 'Female',1);

Select * from students;

CREATE TABLE employees (
    employee_id int,
    department_id int,
    name varchar(50),
    age int,
    gender varchar(10),
    PRIMARY KEY (employee_id, department_id)
);

CREATE TABLE managers (
    manager_id int,
    email varchar(50) UNIQUE,
    phone varchar(20),
    ssn varchar(15),
    PRIMARY KEY (manager_id)
);

CREATE TABLE employee (
    employee_id int,
    email varchar(50),
    phone varchar(20),
    ssn varchar(15),
    PRIMARY KEY (employee_id),
    UNIQUE (email),
    UNIQUE (phone),
    UNIQUE (ssn)
);

CREATE TABLE sales (
    sales_id int,
    product_id int,
    customer_id int,
    sales_date date,
    sales_amount decimal(10,2),
    PRIMARY KEY (sales_id),
    UNIQUE (product_id, customer_id, sales_date)
);

CREATE TABLE student (
    id int,
    roll_no int,
    name varchar(50),
    age int,
    gender varchar(10),
    PRIMARY KEY (id),
    UNIQUE (roll_no)
);