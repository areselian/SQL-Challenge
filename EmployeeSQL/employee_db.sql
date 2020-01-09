-- Data Engineering --
-- create a table schema for each of the six CSV files. Remember to specify data types, primary keys, foreign keys, and other constraints.
--Import each CSV file into the corresponding SQL table.

-- DROP TABLE departments;
-- DROP TABLE dept_emp;
-- DROP TABLE dept_manager;
-- DROP TABLE employees;
-- DROP TABLE salaries;
-- DROP TABLE titles;

DROP TABLE departments CASCADE;
DROP TABLE dept_emp CASCADE;
DROP TABLE dept_manager CASCADE;
DROP TABLE salaries CASCADE;
DROP TABLE employees CASCADE;
DROP TABLE titles CASCADE;

CREATE TABLE departments (
	dept_no VARCHAR NOT NULL,
	dept_name VARCHAR NOT NULL,
	PRIMARY KEY (dept_no)
);

CREATE TABLE dept_emp (
	emp_no INT NOT NULL, 
	dept_no VARCHAR	NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL
);


CREATE TABLE dept_manager (
	dept_no VARCHAR NOT NULL,
	emp_no INT NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL
);

CREATE TABLE employees (
	emp_no INT NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	gender VARCHAR NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no)
);

CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary VARCHAR NOT NULL, 
	from_date DATE NOT NULL,
	to_date DATE NOT NULL
);

CREATE TABLE titles (
	emp_no INT NOT NULL,
	title VARCHAR NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL
);

ALTER TABLE dept_emp
ADD CONSTRAINT PK_dept_emp
PRIMARY KEY(emp_no,dept_no)

ALTER TABLE dept_manager
ADD CONSTRAINT PK_dept_manager
PRIMARY KEY(emp_no,dept_no)

Select * from departments; 
Select * from dept_emp; 
Select * from dept_manager; 
Select * from employees; 
Select * from salaries; 
Select * from titles; 