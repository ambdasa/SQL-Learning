Alter table sales alter column sales_id type int serial; 

CREATE TABLE items (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    price INTEGER NOT NULL
);

CREATE TABLE sales (
    id SERIAL PRIMARY KEY,
    item_id INTEGER NOT NULL,
    quantity INTEGER NOT NULL,
    sale_date DATE NOT NULL
);

INSERT INTO items (name, price) VALUES
    ('Product A', 100),
    ('Product B', 200),
    ('Product C', 300);

INSERT INTO sales (item_id, quantity, sale_date) VALUES
    (1, 10, '2022-01-01'),
    (2, 5, '2022-01-01'),
    (3, 2, '2022-01-01'),
    (1, 20, '2022-02-01'),
    (2, 10, '2022-02-01'),
    (3, 4, '2022-02-01'),
    (1, 30, '2022-03-01'),
    (2, 15, '2022-03-01'),
    (3, 6, '2022-03-01');
	
Select * from sales;

Select * from items;

WITH monthly_revenue as(
Select extract('month' from s.sale_date) as sale_month, sum(s.quantity * i.price) as revenue 
from sales s, items i where i.id=s.item_id group by sale_month
),
monthly_items_sold as (
Select extract('month' from s.sale_date) as sale_month, sum(s.quantity) as total_sales from sales s group by sale_month 
)
Select mr.sale_month, mr.revenue, mis.total_sales from monthly_revenue mr JOIN monthly_items_sold mis 
ON mr.sale_month=mis.sale_month order by mr.sale_month;
