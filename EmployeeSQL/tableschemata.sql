CREATE TABLE departments (
	dept_no VARCHAR PRIMARY KEY NOT NULL,
	dept_name VARCHAR NOT NULL
);

-- Query all fields from the table
SELECT *
FROM departments;


CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR,
	PRIMARY KEY (emp_no, dept_no),
	foreign key (emp_no) references employees (emp_no),
	foreign key (dept_no) references departments (dept_no)
);

-- Query all fields from the table
SELECT *
FROM dept_emp;


CREATE TABLE dept_manager (
	dept_no VARCHAR,
	emp_no INT,
	PRIMARY KEY (dept_no, emp_no),
	foreign key (emp_no) references employees (emp_no),
	foreign key (dept_no) references departments (dept_no)
);

-- Query all fields from the table
SELECT *
FROM dept_manager;

CREATE TABLE employees (
	emp_no INT PRIMARY KEY NOT NULL,
	emp_title_id VARCHAR NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR NOT NULL,
	hire_date DATE NOT NULL
);

-- Query all fields from the table
SELECT *
FROM employees;

CREATE TABLE salaries (
	emp_no INT PRIMARY KEY NOT NULL,
	salary INT NOT NULL,
	foreign key (emp_no) references employees (emp_no)
);

-- Query all fields from the table
SELECT *
FROM salaries;

CREATE TABLE titles (
	title_id VARCHAR PRIMARY KEY,
	title VARCHAR NOT NULL
);

-- Query all fields from the table
SELECT *
FROM titles;





