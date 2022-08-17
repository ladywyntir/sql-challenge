-- Creating the SQL Tables

-- Create "titles" table
-- DROP TABLE titles; Drop the table if it exists already

DROP TABLE titles; 
CREATE TABLE titles (
    title_id VARCHAR(20) NOT NULL,
    title VARCHAR(20) NOT NULL,
    PRIMARY KEY (title_id)
);

SELECT * FROM titles;

-- Create "employees" table
-- DROP TABLE employees; Drop the table if it exists already
DROP TABLE employees;
Create TABLE employees (
    emp_no INT NOT NULL,
    emp_title_id VARCHAR(20) NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    sex VARCHAR(20) NOT NULL,
    hire_date DATE NOT NULL,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

SELECT * FROM employees;

-- Create "departments" table
-- DROP TABLE departments; Drop the table if it exists already
DROP TABLE departments;
CREATE TABLE departments (
    dept_no VARCHAR(20),
    dept_name VARCHAR(30),
    PRIMARY KEY (dept_no)
);

SELECT * FROM departments;

-- Create "dept_manager" table
-- DROP TABLE dept_manager; Drop the table if it exists already
DROP TABLE dept_manager;
CREATE TABLE dept_manager (
    dept_no VARCHAR(20) NOT NULL,
    emp_no INT NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * FROM dept_manager;


-- Create "dept_emp" table
-- DROP TABLE dept_emp; Drop the table if it exists already
DROP TABLE dept_emp;
CREATE TABLE dept_emp (
    emp_no INT NOT NULL,
    dept_no VARCHAR (20) NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * FROM dept_emp;


-- Create "salaries" table
-- DROP TABLE salaries; Drop the table if it exists already
DROP TABLE salaries;
CREATE TABLE salaries (
    emp_no INT NOT NULL,
    salary INT NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM salaries;