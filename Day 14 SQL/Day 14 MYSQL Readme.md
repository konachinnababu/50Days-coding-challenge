# SQL Sales Analysis Challenge

## Project Overview

This project contains a set of SQL queries performed on a **Sales dataset**.
The goal is to practice basic to intermediate SQL concepts like filtering, sorting, and data analysis.

---

##  Database Structure

### Table: `Sales`

| Column Name   | Data Type         |
| ------------- | ----------------- |
| sale_id       | INT (Primary Key) |
| customer_name | VARCHAR(50)       |
| city          | VARCHAR(50)       |
| product_name  | VARCHAR(50)       |
| category      | VARCHAR(50)       |
| quantity      | INT               |
| price         | DECIMAL(10,2)     |
| sale_date     | DATE              |

---

## Sample Data

The dataset includes sales records from different cities and categories like:

* Electronics
* Furniture
* Accessories

---

##  SQL Concepts Covered

* SELECT statements
* WHERE filtering
* ORDER BY (sorting)
* DISTINCT values
* LIMIT / TOP
* BETWEEN (range filtering)
* CASE statement (for categorization)

---

##  Queries Implemented

### 1. View all records

```sql
SELECT * FROM Sales;
```

### 2. Display customer names and cities

```sql
SELECT customer_name, city FROM Sales;
```

### 3. Show product name and price

```sql
SELECT product_name, price FROM Sales;
```

### 4. Filter sales by city

```sql
SELECT * FROM Sales WHERE city = 'Bangalore';
```

### 5. Filter by category

```sql
SELECT * FROM Sales WHERE category = 'Electronics';
```

### 6. Price greater than 10,000

```sql
SELECT * FROM Sales WHERE price > 10000;
```

### 7. Quantity more than 2

```sql
SELECT * FROM Sales WHERE quantity > 2;
```

### 8. Sort by price (low to high)

```sql
SELECT * FROM Sales ORDER BY price ASC;
```

### 9. Sort by quantity (high to low)

```sql
SELECT * FROM Sales ORDER BY quantity DESC;
```

### 10. Unique cities

```sql
SELECT DISTINCT city FROM Sales;

```
### Learning Outcome

By completing this project, you will understand:

* How to query and filter data
* How to sort and analyze datasets
* How to create meaningful insights using SQL

