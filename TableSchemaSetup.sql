-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/3TlSJI
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

--Changes had to be made after exporting due to errors in PK/FK and relationships.  Added into each section.

--Drop all tables incase they were created earlier and add in this order so that foreign keys are recognized and don't return an error
DROP TABLE departments;
DROP TABLE titles;
DROP TABLE employees;
DROP TABLE dept_emp;
DROP TABLE salaries;
DROP TABLE dept_manager;

--Create table 1: departments and select all from departments:
CREATE TABLE "departments" (
    "dept_no" VARCHAR(25)   NOT NULL,
    "dept_name" VARCHAR(25)   NOT NULL,
   PRIMARY KEY ("dept_no"));
select * from departments;


--Create table 2: titles and select all from titles:
CREATE TABLE "titles" (
    "title_id" VARCHAR(25)   NOT NULL,
    "title" VARCHAR(25)   NOT NULL,
    PRIMARY KEY ("title_id"));
select * from titles


--Create table 3: employees and select all from employees	
CREATE TABLE "employees" (
    "emp_no" INT   NOT NULL,
    "emp_title_id" VARCHAR(25)   NOT NULL,
    "birth_date" DATE   NOT NULL,
    "first_name" VARCHAR(25)   NOT NULL,
    "last_name" VARCHAR(25)   NOT NULL,
    "sex" VARCHAR(10)   NOT NULL,
    "hire_date" DATE  NOT NULL,
    PRIMARY KEY ("emp_no"),
	FOREIGN KEY ("emp_title_id") REFERENCES titles ("title_id"));
select * from employees


--Create table 4: dept_emp and select all from dept_emp
CREATE TABLE "dept_emp" (
    "emp_no" INT   NOT NULL,
    "dept_no" VARCHAR(25)   NOT NULL,
    PRIMARY KEY ("emp_no", "dept_no"),
	FOREIGN KEY ("emp_no") REFERENCES employees ("emp_no"),
	FOREIGN KEY ("dept_no") REFERENCES departments ("dept_no"));
select * from dept_emp;


--Create table 5: salaries and select all from salaries
CREATE TABLE "salaries" (
    "emp_no" INT   NOT NULL,
    "salary" INT   NOT NULL,
    PRIMARY KEY ("emp_no"),
	FOREIGN KEY ("emp_no") REFERENCES employees ("emp_no"));
select * from salaries


--Create table 6: dept_manager and select all from dept_manager
CREATE TABLE "dept_manager" (
    "dept_no" VARCHAR(25)   NOT NULL,
    "emp_no" INT   NOT NULL,
    PRIMARY KEY ("emp_no"),
	FOREIGN KEY ("dept_no") REFERENCES departments ("dept_no"),
	FOREIGN KEY ("emp_no") REFERENCES employees ("emp_no"));
select * from dept_manager;
	


--Ensure that all of these contraints are added above
--ALTER TABLE "departments" ADD CONSTRAINT "fk_departments_dept_no" FOREIGN KEY("dept_no")REFERENCES "dept_manager" ("dept_no");
--ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY("emp_no")REFERENCES "employees" ("emp_no");
--ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_emp_no" FOREIGN KEY("emp_no")REFERENCES "dept_emp" ("emp_no");
--ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_emp_title_id" FOREIGN KEY("emp_title_id")REFERENCES "titles" ("title_id");
--ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries__emp_no" FOREIGN KEY("", "emp_no")REFERENCES "employees" ("", "emp_no");

