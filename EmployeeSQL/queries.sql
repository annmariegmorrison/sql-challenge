-- List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT 
emp.emp_no AS "Employee Number", 
emp.last_name AS "Last Name", 
emp.first_name AS "First Name", 
emp.sex AS "Sex", 
sal.salary AS "Salary"
FROM employees AS emp
LEFT JOIN salaries AS sal
ON (emp.emp_no = sal.emp_no
);

-- List first name, last name, and hire date for employees who were hired in 1986.

SELECT 
first_name AS "First Name", 
last_name AS "Last Name",
employees.hire_date as "Hire Date"
FROM employees
WHERE hire_date between '1986-01-01' and '1986-12-31'

-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

SELECT 
dep_man.emp_no AS "Employee Number",
emp.last_name AS "Last Name",
emp.first_name AS "First Name",
dep_man AS "Department Number",
dep.dept_name AS "Department Name"
FROM departments AS dep
LEFT JOIN dept_emp
ON (dep.dept_no = dept_emp.dept_no)
LEFT JOIN employees AS emp
ON (emp.emp_no = dept_emp.emp_no)
LEFT JOIN dept_manager AS dep_man
ON (emp.emp_no = dep_man.emp_no)
ORDER by dep_man.emp_no;

-- List the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT
dept.dept_name AS "Department Name",
dep_em.emp_no AS "Employee Number",
emp.last_name AS "Last Name",
emp.first_name AS "First Name"
FROM departments AS dept
LEFT JOIN dept_emp AS dep_em
ON (dept.dept_no = dep_em.dept_no)
LEFT JOIN employees AS emp
ON (dep_em.emp_no = emp.emp_no)
ORDER BY emp.emp_no;


-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

SELECT
emp.first_name AS "First Name",
emp.last_name AS "Last Name",
emp.sex AS "Sex"
FROM employees AS emp
WHERE first_name = 'Hercules' and last_name like 'B%'

-- List all employees in the Sales department, including their employee number, last name, first name, and department nam

SELECT
dep_em.emp_no AS "Employee Number",
dept.dept_name AS "Department Name",
emp.last_name AS "Last Name",
emp.first_name AS "First Name"
FROM dept_emp AS dep_em
LEFT JOIN departments as dept
ON (dep_em.dept_no = dept.dept_no)
LEFT JOIN employees AS emp
ON (dep_em.emp_no = emp.emp_no)
WHERE dept.dept_name = 'Sales'

-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT
dep_em.emp_no AS "Employee Number",
dept.dept_name AS "Department Name",
emp.last_name AS "Last Name",
emp.first_name AS "First Name"
FROM dept_emp AS dep_em
LEFT JOIN departments as dept
ON (dep_em.dept_no = dept.dept_no)
LEFT JOIN employees AS emp
ON (dep_em.emp_no = emp.emp_no)
WHERE dept.dept_name = 'Sales' or dept.dept_name ='Development'
ORDER BY dept.dept_name

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT last_name, COUNT(last_name) 
FROM employees
GROUP BY last_name 
ORDER BY last_name DESC
