create database Sales

use Sales


create table Sales ( Sale_Id int primary key,Customer_Name varchar(50),City varchar(50),Product_Name varchar(50),Category varchar(50),Quantity int, pricedecimal(10,2),Sale_Date date );



INSERT INTO Sales VALUES
 (1, 'Ravi', 'Bangalore', 'Laptop', 'Electronics', 1, 60000, '2023-06-01'),
 (2, 'Priya', 'Chennai', 'Mobile', 'Electronics', 2, 20000, '2023-06-03'),
 (3, 'Amit', 'Delhi', 'Headphones', 'Accessories', 3, 2000, '2023-06-05'), 
 (4, 'Neha', 'Mumbai', 'Chair', 'Furniture', 2, 5000, '2023-06-07'), 
 (5, 'Ravi', 'Bangalore', 'Mobile', 'Electronics', 1, 20000, '2023-06-10'), 
 (6, 'Priya', 'Chennai', 'Laptop', 'Electronics', 1, 60000, '2023-06-12'), 
 (7, 'Amit', 'Delhi', 'Chair', 'Furniture', 4, 5000, '2023-06-15'), 
 (8, 'Neha', 'Mumbai', 'Headphones', 'Accessories', 2, 2000, '2023-06-18');
 
 
 
 ##Show all records from the Sales table.
 select * from Sales;
 
 ##Display only customer names and cities. 
 Select customer_name,city from sales;
 
 ##Show product name and price. 
  select price,Product_Name from sales;  
  
 ##Show all sales where city is 'Bangalore'. 
 select * from sales where city ='Bangalore';
 
 ##Find all products in 'Electronics' category.
 select*from sales where category ='Electronics';  
 
 SELECT Sale_id, product_Name, price
FROM Sales
WHERE category = 'Electronics';

##Show sales where price is greater than 10,000.
select* from	sales where price >10000

##Display sales where quantity is more than 2.
select * from	sales where quantity >2

##Show all sales sorted by price (high to low ).
select * from sales order by price desc;

##Display sales sorted by quantity (Low to high).
select * from sales order by price asc;

##Show unique cities.
select distinct city from sales;
 
 
 SELECT  * 
FROM Sales
ORDER BY price DESC limit 5;

Select * from sales  where category= 'furniture' order by price desc limit 5;

Select * from sales  where category and city = 'Mumbai' 'furniture' order by price desc limit 5;
SELECT * FROM Sales
WHERE city = 'Mumbai' 
  AND category = 'Furniture'
ORDER BY price DESC
LIMIT 1;

 