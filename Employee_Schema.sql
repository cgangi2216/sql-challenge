/* Drop tables if they exist */
DROP TABLE IF EXISTS emp_salary;
DROP TABLE IF EXISTS dep_manager;
DROP TABLE IF EXISTS dep_emp;
DROP TABLE IF EXISTS employee;
DROP TABLE IF EXISTS department;
DROP TABLE IF EXISTS title;

/* Create Tables */
CREATE TABLE title
	( title_no VARCHAR(5) PRIMARY KEY
	, title VARCHAR(25)
	);

CREATE TABLE department
	( dept_no VARCHAR(5) PRIMARY KEY
	, dept_name VARCHAR(25)
	);

CREATE TABLE employee
	(emp_no INT PRIMARY KEY
	,emp_title_id VARCHAR(5) REFERENCES title
	,birth_date DATE
	,first_name VARCHAR(100)
	,last_name VARCHAR(100)
	,sex VARCHAR(1)
	,hire_date DATE
	);

CREATE TABLE dep_emp
	( emp_no INT REFERENCES employee
	, dept_no VARCHAR(5) REFERENCES department
	, PRIMARY KEY (emp_no, dept_no)
 	);

CREATE TABLE dep_manager
	( dept_no VARCHAR(5) REFERENCES department
	, emp_no INT REFERENCES employee
	, PRIMARY KEY (dept_no, emp_no)
	);
	
CREATE TABLE emp_salary
	( emp_no INT PRIMARY KEY REFERENCES employee
	, salary MONEY
	);
