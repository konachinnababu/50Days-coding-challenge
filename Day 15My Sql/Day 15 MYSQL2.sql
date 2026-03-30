create database College_DB

use College_DB

CREATE TABLE Students (
 Student_id INT PRIMARY KEY,
 Student_name VARCHAR(50),
 Gender VARCHAR(10),
 City VARCHAR(50),
 Join_year INT
);

CREATE TABLE Courses (
 Course_id INT PRIMARY KEY,
 Course_name VARCHAR(100),
 Department VARCHAR(50)
);


create table Marks1( 
Mark_id int primary key,
Student_Id int,
Course_Id int,
Marks int,
foreign key (Student_Id) references Students(Student_Id),
foreign key (Course_Id) references Courses (Course_Id)
);


select * from Marks1

INSERT INTO Students (Student_Id, Student_name, Gender, City, Join_year) VALUES
(1, 'Anu', 'F', 'Tumakuru', 2024),
(2, 'Ravi', 'M', 'Bengaluru', 2023),
(3, 'Kiran', 'M', 'Tumakuru', 2024),
(4, 'Sneha', 'F', 'Mysuru', 2023),
(5, 'Manu', 'M', 'Tumakuru', 2022);


INSERT INTO Courses (Course_Id, Course_name, Department) VALUES
(101, 'SQL Basics', 'Computer Science'),
(102, 'Excel for Analysts', 'Commerce'),
(103, 'Statistics', 'Mathematics');

INSERT INTO marks1 (mark_id, student_id, course_id, marks) VALUES
(1, 1, 101, 85),
(2, 2, 101, 72),
(3, 3, 101, 90),
(4, 4, 102, 88),
(5, 5, 103, 67),
(6, 1, 103, 79),
(7, 2, 102, 81);


 ##1.Display all students. 
 select * FROM STUDENTS;

##2. Display only student_name and city from students table. 
SELECT STUDENT_NAME,CITY FROM STUDENTS;

##3.Show all courses.
select *FROM COURSES 

##4. Display students who are from Tumakuru. 
SELECT * FROM STUDENTS WHERE CITY='TUMAKURU';

##5. Display students who joined in 2024. 
select* FROM STUDENTS WHERE JOIN_YEAR=2024;

##6. Show students whose gender is F.
SELECT * FROM STUDENTS WHERE GENDER ='F';

##7. Show marks greater than 80. 
SELECT * FROM MARKS1 WHERE MARKS >80;

##8. Display course names from Commerce department.
SELECT * FROM COURSES where department='COMMERCE';

##9. Show students who are not from Bengaluru. 
SELECT * FROM STUDENTS WHERE not CITY ='BENGALURU'; 

##10. Display marks between 70 and 90. 
SELECT * FROM MARKS1 WHERE MARKS between 70 AND 90;

##11. Display all students ordered by student_name ascending.
SELECT * FROM STUDENTS order by STUDENT_NAME asc;

##12. Show marks ordered from highest to lowest. 
SELECT	* FROM MARKS1 order by MARKS desc;

##13. Display students ordered by join_year descending. 
SELECT * FROM STUDENTS order by JOIN_YEAR desc;
 
 ##14. Find total number of students.
 SELECT count(*)  FROM STUDENTS ;
 
 ##15. Find average marks. 
 select avg(MARKS) FROM MARKS1;
 
 ##16. Find highest marks.
 select max(MARKS) FROM MARKS1;
 
 ##17. Find lowest marks.
 SELECT	min(MARKS) FROM MARKS1;
 
 ##18. Find total marks scored by all students.
 SELECT sum(MARKS) FROM MARKS1;
 

