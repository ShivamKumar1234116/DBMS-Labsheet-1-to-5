

DROP DATABASE IF EXISTS sql_lab;
CREATE DATABASE sql_lab;
USE sql_lab;

CREATE TABLE Department (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(50) NOT NULL
);

CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100),
    Age INT,
    DeptID INT,
    JoiningDate DATE
);

CREATE TABLE Enrollment (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseName VARCHAR(100)
);

INSERT INTO Department (DeptID, DeptName) VALUES
(10, 'Computer Science'),
(20, 'Information Technology'),
(30, 'Pharmacy'),
(40, 'Management');

INSERT INTO Student (StudentID, Name, Email, Age, DeptID, JoiningDate) VALUES
(101, 'Amit Sharma', 'amit@example.com', 20, 10, '2026-07-01'),
(102, 'Priya Singh', 'priya@example.com', 21, 20, '2026-07-03'),
(103, 'Rahul Verma', 'rahul@example.com', 22, 30, '2026-07-05'),
(104, 'Neha Gupta', 'neha@example.com', 20, 10, '2026-07-08'),
(105, 'Arjun Mehta', 'arjun@example.com', 23, 40, '2026-07-10');

INSERT INTO Enrollment (EnrollmentID, StudentID, CourseName) VALUES
(1, 101, 'DBMS'),
(2, 102, 'Operating Systems'),
(3, 103, 'Pharmacology'),
(4, 104, 'Python');

-- Q1
SELECT * FROM Department;

-- Q2
SELECT * FROM Student;

-- Q3
SELECT * FROM Enrollment;

ALTER TABLE Student
ADD CONSTRAINT fk_student_department
FOREIGN KEY (DeptID) REFERENCES Department(DeptID);

ALTER TABLE Enrollment
ADD CONSTRAINT fk_enrollment_student
FOREIGN KEY (StudentID) REFERENCES Student(StudentID);

-- Q4
SELECT s.StudentID, s.Name, d.DeptName
FROM Student s
INNER JOIN Department d ON s.DeptID = d.DeptID;

-- Q5
SELECT e.EnrollmentID, s.Name, e.CourseName
FROM Enrollment e
INNER JOIN Student s ON e.StudentID = s.StudentID;

CREATE TABLE Department2 (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(50) NOT NULL
);

ALTER TABLE Student
ADD CONSTRAINT uq_student_email UNIQUE (Email);

CREATE TABLE Library (
    BookID INT UNIQUE,
    Title VARCHAR(150) NOT NULL
);

INSERT INTO Library (BookID, Title) VALUES
(1, 'Database Systems'),
(2, 'Operating Systems'),
(3, 'Computer Networks'),
(4, 'Python Programming'),
(5, 'Data Mining');

ALTER TABLE Student
ADD CONSTRAINT chk_student_age CHECK (Age > 18);

CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100),
    Credits INT CHECK (Credits BETWEEN 1 AND 6)
);

ALTER TABLE Student
ADD COLUMN JoiningDate2 DATE DEFAULT (CURRENT_DATE);

CREATE TABLE Faculty (
    FacultyID INT PRIMARY KEY,
    FacultyName VARCHAR(100) NOT NULL,
    Designation VARCHAR(50) DEFAULT 'Lecturer'
);

INSERT INTO Faculty (FacultyID, FacultyName)
VALUES (1, 'Dr. Meera Sharma');

SELECT * FROM Faculty;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(80),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    hire_date DATE
);

INSERT INTO employees VALUES (101, 'John Smith', 'IT', 55000, '2024-01-15');

INSERT INTO employees VALUES
(102, 'Sarah Johnson', 'HR', 48000, '2024-02-10'),
(103, 'Mike Davis', 'Finance', 52000, '2024-01-20'),
(104, 'Lisa Wilson', 'Marketing', 45000, '2024-03-01');

INSERT INTO employees (emp_id, name, department) VALUES (107, 'David Clark', 'Sales');

-- Q6
SELECT * FROM employees;

-- Q7
SELECT name, salary FROM employees;

-- Q8
SELECT * FROM employees WHERE department = 'IT';

-- Q9
SELECT * FROM employees WHERE salary > 50000;

-- Q10
SELECT * FROM employees WHERE hire_date BETWEEN '2024-01-01' AND '2024-01-31';

-- Q11
SELECT DISTINCT department FROM employees;

-- Q12
SELECT COUNT(*) AS total_employees FROM employees;

-- Q13
SELECT MAX(salary) AS maximum_salary,
       MIN(salary) AS minimum_salary,
       AVG(salary) AS average_salary
FROM employees;

UPDATE employees SET salary = 58000 WHERE name = 'John Smith';

UPDATE employees SET salary = salary * 1.05 WHERE department = 'HR';

UPDATE employees
SET salary = 47000, hire_date = '2024-03-05'
WHERE name = 'Lisa Wilson';

UPDATE employees SET department = 'Operations' WHERE salary < 50000;

UPDATE employees SET salary = salary + 2000 WHERE department = 'Finance';

UPDATE employees SET department = 'Senior Staff' WHERE hire_date < '2024-02-01';

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2),
    stock_quantity INT
);

INSERT INTO products VALUES
(1, 'Laptop', 'Electronics', 999.99, 5),
(2, 'Mouse', 'Electronics', 25.5, 0),
(3, 'Desk Chair', 'Furniture', 150.0, 3),
(4, 'Monitor', 'Electronics', 1200.0, 2),
(5, 'Keyboard', 'Electronics', 75.0, 0),
(6, 'Coffee Mug', 'Office', 12.99, 10),
(7, 'Notebook', 'Office', 5.99, 8),
(8, 'Smartphone', 'Electronics', 1500.0, 1);

DELETE FROM products WHERE stock_quantity = 0;
DELETE FROM products WHERE category = 'Electronics' AND price > 1000;
DELETE FROM products WHERE product_name = 'Desk Chair';
DELETE FROM products WHERE price < 100;

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    course VARCHAR(100),
    marks INT,
    city VARCHAR(50)
);

INSERT INTO students (student_id, student_name, course, marks, city) VALUES
(1, 'Alice Brown', 'Computer Science', 85, 'Mumbai'),
(2, 'Bob Wilson', 'Mathematics', 92, 'Delhi'),
(3, 'Carol Davis', 'Computer Science', 78, 'Mumbai'),
(4, 'David Miller', 'Physics', 88, 'Chennai'),
(5, 'Eva Garcia', 'Mathematics', 95, 'Delhi'),
(6, 'Frank Johnson', 'Computer Science', 82, 'Bangalore'),
(7, 'Grace Lee', 'Physics', 90, 'Mumbai'),
(8, 'Henry Smith', 'Mathematics', 76, 'Chennai'),
(9, 'Ivy Chen', 'Computer Science', 89, 'Delhi'),
(10, 'Jack Taylor', 'Physics', 84, 'Bangalore');

-- Q14
SELECT * FROM students ORDER BY marks DESC;

-- Q15
SELECT * FROM students ORDER BY marks DESC LIMIT 5;

-- Q16
SELECT * FROM students
WHERE course = 'Computer Science'
ORDER BY student_name ASC;

-- Q17
SELECT * FROM students ORDER BY marks ASC LIMIT 3;

-- Q18
SELECT * FROM students WHERE marks BETWEEN 80 AND 90;

-- Q19
SELECT * FROM students WHERE student_name LIKE 'A%';

-- Q20
SELECT * FROM students WHERE city IN ('Mumbai', 'Delhi');

CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255),
    isbn VARCHAR(13) UNIQUE,
    genre VARCHAR(50)
);

CREATE TABLE Members (
    member_id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE,
    phone_number VARCHAR(20)
);

CREATE TABLE Loans (
    loan_id INT PRIMARY KEY,
    book_id INT,
    member_id INT,
    loan_date DATE,
    return_date DATE NULL,
    FOREIGN KEY (book_id) REFERENCES Books(book_id),
    FOREIGN KEY (member_id) REFERENCES Members(member_id)
);

INSERT INTO Books (book_id, title, author, isbn, genre) VALUES
(1, 'Database System Concepts', 'Korth', '9780073523323', 'Database'),
(2, 'Operating System Concepts', 'Silberschatz', '9781119456339', 'OS'),
(3, 'Python Crash Course', 'Eric Matthes', '9781718502703', 'Programming');

INSERT INTO Members (member_id, name, email, phone_number) VALUES
(101, 'Amit Sharma', 'amit.lib@example.com', '9876500001'),
(102, 'Priya Singh', 'priya.lib@example.com', '9876500002'),
(103, 'Rahul Verma', 'rahul.lib@example.com', '9876500003');

INSERT INTO Loans (loan_id, book_id, member_id, loan_date, return_date) VALUES
(1, 1, 101, '2026-09-01', NULL),
(2, 2, 102, '2026-09-02', '2026-09-06'),
(3, 3, 103, '2026-09-04', NULL);

-- Q21
SELECT l.loan_id, b.title, m.name, l.loan_date, l.return_date
FROM Loans l
INNER JOIN Books b ON l.book_id = b.book_id
INNER JOIN Members m ON l.member_id = m.member_id;
