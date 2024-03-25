DROP TABLE departments;
DROP TABLE dept_emp;
DROP TABLE dept_manager;
DROP TABLE employees;
DROP TABLE salaries;
DROP TABLE titles;


CREATE TABLE departments (
dept_no varchar(30) not null,
dept_name varchar(30) not null, 
	PRIMARY KEY(dept_no))

select * from departments

CREATE TABLE dept_emp (
	emp_no INT not null, 
	dept_no Varchar(30) not null,
	PRIMARY KEY(emp_no))
select * from dept_emp

CREATE TABLE dept_manager(
	dept_no Varchar(30),
	emp_no int,
	PRIMARY KEY(emp_no))
select * from dept_manager

CREATE TABLE employees( 
	emp_no varchar(30) not null,
	emp_title_id varchar(30) not null,
	birth_date varchar(30) not null,
	first_name varchar(30) not null,
	last_name varchar(30) not null,
	sex varchar(10) not null,
	hire_date varchar(30) not null,
	PRIMARY KEY(emp_no))
select * from employees
	
CREATE TABLE salaries(
	emp_no INT not null,
	salary INT,
	PRIMARY KEY(emp_no))
	
CREATE TABLE titles(
	title_id varchar(30),
	title varchar(30),
	PRIMARY KEY(title_id))	



)