-- List the following details of each employee: employee number, last name, first name, gender, and salary.

SELECT employees.emp_no, last_name, first_name, gender, salary
FROM employees JOIN salaries
ON salaries.emp_no = employees.emp_no;

-- List employees who were hired in 1986.

SELECT * FROM employees
WHERE hire_date between '1986-01-01' and '1986-12-31';

-- List the manager of each department with the following information: department number, department name, the manager's employee number, 
-- last name, first name, and start and end employment dates.
SELECT dept_manager.dept_no, dept_name, dept_manager.emp_no, last_name, first_name, from_date, to_date
FROM dept_manager
JOIN employees on employees.emp_no = dept_manager.emp_no
JOIN departments on departments.dept_no = dept_manager.dept_no;

-- List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT employees.emp_no, last_name, first_name, departments.dept_name
FROM employees
JOIN dept_emp on dept_emp.emp_no = employees.emp_no
JOIN departments on departments.dept_no = dept_emp.dept_no;

-- List all employees whose first name is "Hercules" and last names begin with "B."
SELECT * FROM employees
WHERE first_name = 'Hercules' and last_name like 'B%';

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT employees.emp_no, last_name, first_name, departments.dept_name
FROM employees
JOIN dept_emp on dept_emp.emp_no=employees.emp_no
JOIN departments on departments.dept_no = dept_emp.dept_no
WHERE dept_name = 'Sales';

-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT employees.emp_no, last_name, first_name, departments.dept_name
FROM employees
JOIN dept_emp on dept_emp.emp_no = employees.emp_no
JOIN departments on departments.dept_no = dept_emp.dept_no
WHERE dept_name = 'Sales' or dept_name = 'Development';

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name,
count(last_name) from employees 
GROUP BY last_name 
ORDER BY count DESC;
