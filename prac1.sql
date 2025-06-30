Create table sales (
id int, 
sales_date date,
product varchar(255),
quantity int,
revenue decimal(10,2)
);

Insert into sales(id, sales_date, product, quantity, revenue)
Values
(2,'2021-01-02', 'Product B', 5, 50.00),
(3,'2021-01-03', 'Product C', 15, 150.00),
(4,'2021-01-04', 'Product A', 8, 80.00),
(5,'2021-01-05', 'Product B', 12, 120.00),
(6,'2021-01-06', 'Product C', 20, 200.00),
(7,'2021-01-07', 'Product A', 6, 60.00),
(8,'2021-01-08', 'Product B', 18, 180.00),
(9,'2021-01-09', 'Product C', 18, 180.00),
(10,'2021-01-10', 'Product A', 4, 40.00);

Select * from sales;

Select count(*) from sales where product='Product A';

Select sales_date, sum(revenue) from sales group by sales_date;

Select product, sum(revenue) from sales group by product order by sum(revenue) desc;

Select * from sales where product ilike '%A' or product ilike '%B';

Select * from sales where quantity between 5 and 10;

Alter table sales rename column id to sales_id;

Alter table sales add column retailer varchar(2);

Alter table sales alter column retailer type varchar(1);
