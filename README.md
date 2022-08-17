# sql-challenge
Module 9 Homework - SQL - EmployeeSQL

## Instructions
This Challenge is divided into three parts: data modeling, data engineering, and data analysis.

## Data Modeling
Inspect the CSV files, and then sketch an ERD of the tables. To create the sketch, feel free to use a tool like QuickDBD (Links to an external site.).

## Data Engineering
1. Use the provided information to create a table schema for each of the six CSV files. Be sure to do the following:
2. Import each CSV file into its corresponding SQL table.

## Data Analysis
1. List the employee number, last name, first name, sex, and salary of each employee.
2. List the first name, last name, and hire date for the employees who were hired in 1986.
3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
6. List each employee in the Sales department, including their employee number, last name, and first name.
7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).


## Code Theory

1. Checked the Excel files and wrote out the columns.
employees columns: emp_no, emp_title_id, birth_date, first_name, last_name, sex, hire_date
departments: dept_no, dept_name
dept_manager: dept_no, emp_no
dept_emp: emp_no, dept_no
salaries: emp_no, salary
titles: title_id, title
2. Created an ERD with QuickDBD to see where the associations should live
![Image](https://github.com/ladywyntir/sql-challenge/blob/main/EmployeeSQL/QuickDBD-SQL-challenge%20ERD.png)

3. Created each table using PostgreSQL and loaded the provided CSVs one at a time. This helps to handle the foreign keys/references. 
4. Saved the file to SQL_table_creation.sql
5. Went through the Data Analysis instructions and saved to SQL_queries.sql

