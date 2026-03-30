#  College Student Management System (SQL Project)

##  Project Overview

This project is based on a **College Student Management System** where we analyze student data, courses, and marks using SQL queries.

As a Data Analyst, the goal is to:

* Manage student details
* Track courses
* Analyze marks

---

##  Database Structure

### 1️.StudentsTable

Stores student details:

* student_id (Primary Key)
* student_name
* gender
* city
* join_year

---

### 2️.Courses Table

Stores course information:

* course_id (Primary Key)
* course_name
* department


### 3️.Marks1 Table

Stores student marks:

* mark_id (Primary Key)
* student_id (Foreign Key)
* course_id (Foreign Key)
* marks

##  Steps Performed

1. Created Database: `college_db`
2. Created Tables: students, courses, marks1
3. Inserted sample data
4. Performed SQL queries 

## SQL Queries

### Level 1: Basic Queries

* Display all students
* Show student name and city
* Display all courses
* Filter students by city
* Filter students by join year

###  Level 2: Filtering

* Filter by gender
* Marks greater than 80
* Courses from Commerce department
* Students not from Bengaluru
* Marks between 70 and 90

###  Level 3: Sorting

* Sort students by name
* Sort marks (highest to lowest)
* Sort students by join year

###  Level 4: Aggregation

* Total number of students
* Average marks
* Highest marks
* Lowest marks
* Total marks

---

## Key Learnings

* SQL Basics (SELECT, WHERE, ORDER BY)
* Filtering data
* Aggregate functions (COUNT, AVG, SUM, MIN, MAX)
* Database design using Primary & Foreign Keys

---

## Files Included

* `college_management.sql` → Contains all SQL queries
* `README.md` → Project documentation

---

## Conclusion

This project helps in understanding how to work with real-world data using SQL and perform analysis effectively.
