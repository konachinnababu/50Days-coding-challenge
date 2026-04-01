create database E_commerce;

use e_commerce

CREATE TABLE customers ( 
customer_id INT PRIMARY KEY,
 customer_name VARCHAR(100), 
 city VARCHAR(50));

INSERT INTO customers
 VALUES (1, 'Amit', 'Bangalore'),
 (2, 'Sneha', 'Mumbai'),
 (3, 'Rahul', 'Delhi'),
 (4, 'Priya', 'Chennai');
 
 select * from customers;
 
 
 CREATE TABLE orders ( order_id INT PRIMARY KEY, 
 customer_id INT, order_date DATE,
amount DECIMAL(10,2)); 

INSERT INTO orders 
VALUES
(101, 1, '2024-01-10', 500),
 (102, 1, '2024-02-15', 700),
 (103, 2, '2024-03-01', 300),
 (104, 5, '2024-03-05', 900);
 select * from orders;
 
 CREATE TABLE payments ( payment_id INT PRIMARY KEY, order_id INT, payment_status VARCHAR(20)) ;
 
 INSERT INTO payments VALUES (1, 101, 'Completed'), (2, 102, 'Pending'), (3, 103, 'Completed');
 select * from payments;
 
##Task 1: Customer Orders @@ Write a query to display:
#•customer_name
#•order_id
#•amount
_#_Include only customers who placed orders.


 select c.customer_id,o.order_id,o.amount
 from customers c
 inner join orders o
 on
 c.customer_id= o.customer_id;
 
 #Task 2: All Customers Write a query to display:
##•all customers•their order_id (if any) Customers without orders should still appear.
 
 SELECT c.customer_name, o.order_id
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id;


##Task 3: Invalid Orders Write a query to find:
##•orders that do NOT have a matching customer

SELECT o.*
FROM orders o
LEFT JOIN customers c
ON o.customer_id = c.customer_id
WHERE c.customer_id IS NULL;

##Task 4: Order Payment Status Write a query to display:
##•customer_name•order_id•payment_status Include all orders, even if payment is missing

SELECT c.customer_name, o.order_id, p.payment_status
FROM orders o
LEFT JOIN customers c
ON o.customer_id = c.customer_id
LEFT JOIN payments p
ON o.order_id = p.order_id;


##Task 5: Customers Without Orders
##Find customers who have never placed an order

SELECT c.customer_name
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;


##Task 6: Orders Without Payment
##Find all orders that do not have a payment record.

SELECT o.order_id
FROM orders o
LEFT JOIN payments p
ON o.order_id = p.order_id
WHERE p.payment_id IS NULL;

##Task 7: Total Spending
## Write a query to calculate:•total amount spent by each customer

SELECT c.customer_name, SUM(o.amount) AS total_spent
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name;


##Task 8: Fully Paid Customers
##Find customers whose all orders are marked as 'Completed'.

SELECT c.customer_name
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN payments p ON o.order_id = p.order_id
GROUP BY c.customer_name
HAVING COUNT(*) = SUM(CASE WHEN p.payment_status = 'Completed' THEN 1 ELSE 0 END);


##Task 9: Highest Order Per Customer
##Display:•customer_name•highest order amount

SELECT c.customer_name, MAX(o.amount) AS highest_order
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name;

##Task 10: Top Customers
##Find top 2 customers based on total spending.

SELECT c.customer_name, SUM(o.amount) AS total_spent
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name
ORDER BY total_spent DESC
LIMIT 2;







 
 
 
 
 
 
 
 
 
 
 
 
