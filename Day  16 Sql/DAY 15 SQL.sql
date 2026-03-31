

create database Customers
use Customers

CREATE TABLE customers ( customer_id INT, 
customer_name VARCHAR(50), 
city VARCHAR(50), age INT,
 total_spent DECIMAL(10,2),
 number_of_orders INT );
 
 INSERT INTO customers VALUES 
 (1, 'Amit', 'Bangalore', 25, 12000, 5),
 (2, 'Neha', 'Mumbai', 30, 45000, 12), 
 (3, 'Raj', 'Delhi', 22, 8000, 3),
 (4, 'Sneha', 'Bangalore', 28, 60000, 15),
 (5, 'Karan', 'Mumbai', 35, 20000, 7), 
 (6, 'Pooja', 'Delhi', 27, 15000, 6), 
 (7, 'Arjun', 'Bangalore', 40, 70000, 20), 
 (8, 'Meera', 'Mumbai', 23, 5000, 2);
 
 ##Questions
 ##1.Show all customers from Bangalore
 select * from customers where city ='bangalore';
 
 ##2.Display customers with total_spent > 20000
 select* from customers where total_spent >20000;
 
 ##3.List customers aged between 25 and 35
 select * from customers where age between 25 and 35;
 
 ##4.Show all customers sorted by total_spent (highest first)
 select * from customers order by total_spent desc;
 
 ##5.Find the total revenue generated
 select sum(total_Spent) as total_revenue from customers ;
 
 ##6.Find the average spending per customer
 select avg(total_spent) as avg_Spent from customers;
 
 ##7.Find total spending per city 
 select city,sum(total_spent) as Total_spending from customers group by city;
 
##8.Count number of customers in each city
select city,count(*) as total_customers_each_city from customers group by city;

##9.Count how many customers fall into each segment
SELECT 
    CASE 
        WHEN total_spent > 50000 THEN 'High Value'
        WHEN total_spent BETWEEN 20000 AND 50000 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS customer_segment,
    COUNT(*) AS total_customers
FROM customers
GROUP BY customer_segment;
SELECT customer_name, total_spent,
    CASE 
        WHEN total_spent > 50000 THEN 'High Value'
        WHEN total_spent BETWEEN 20000 AND 50000 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS segment
FROM customers;


##10.Show cities where total spending is greater than 50000
select	city,sum(total_spent) as Total_spending from customers group by city having sum(total_spent)>50000;



 