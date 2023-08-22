CREATE TABLE departments(
	dept_no VARCHAR(10) PRIMARY KEY,
	dept_name VARCHAR(50)
);

CREATE TABLE titles(
	title_id VARCHAR(10) PRIMARY KEY,
	title VARCHAR(50)
);

CREATE TABLE employees(
	emp_no INT PRIMARY KEY,
	emp_title_id VARCHAR (10),
	birth_date VARCHAR(15),
	first_name VARCHAR(25),
	last_name VARCHAR(25),
	sex VARCHAR(5),
	hire_date VARCHAR(15),
	CONSTRAINT fk_emp_title
		FOREIGN KEY(emp_title_id)
			REFERENCES titles(title_id)
);

CREATE TABLE salaries(
	emp_no INT,
	salary INT,
	CONSTRAINT fk_emp_no
		FOREIGN KEY(emp_no)
			REFERENCES employees(emp_no)
);

CREATE TABLE dept_emp(
	emp_no INT,
	dept_no VARCHAR(10),
	PRIMARY KEY(emp_no, dept_no)
);

CREATE TABLE dept_manager(
	dept_no VARCHAR(10),
	emp_no INT,
	PRIMARY KEY(dept_no, emp_no)
);

