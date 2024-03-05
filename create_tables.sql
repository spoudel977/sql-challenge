-- Create Title table
CREATE TABLE Title (
    title_id VARCHAR(10) PRIMARY KEY,
    title VARCHAR(100)
);

-- Create Employee table
CREATE TABLE Employee (
    emp_no INT PRIMARY KEY,
    emp_title_id VARCHAR(10) REFERENCES Title(title_id),
    birth_date DATE,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    sex VARCHAR(1),
    hire_date DATE
);

-- Create Salary table
CREATE TABLE Salary (
    emp_no INT REFERENCES Employee(emp_no),
    salary INT,
    PRIMARY KEY (emp_no)
);

-- Create Department table
CREATE TABLE Department (
    dept_no VARCHAR(10) PRIMARY KEY,
    dept_name VARCHAR(100)
);

-- Create Dept_emp table
CREATE TABLE Dept_emp (
    emp_no INT REFERENCES Employee(emp_no),
    dept_no VARCHAR(10) REFERENCES Department(dept_no),
    PRIMARY KEY (emp_no, dept_no)
);

-- Create Dept_manager table
CREATE TABLE Dept_manager (
    dept_no VARCHAR(10) REFERENCES Department(dept_no),
    emp_no INT REFERENCES Employee(emp_no),
    PRIMARY KEY (dept_no, emp_no)
);
