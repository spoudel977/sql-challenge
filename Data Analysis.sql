--List the employee number, last name, first name, sex, and salary of each employee.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM Employee AS e
JOIN Salary s ON e.emp_no = s.emp_no
LIMIT 10; 


--List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM Employee
WHERE hire_date >= '1986-01-01' AND hire_date <= '1986-12-31';


--List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT d.dept_no, d.dept_name, m.emp_no AS manager_emp_no, e.last_name, e.first_name
FROM Department AS d
JOIN Dept_manager AS m ON d.dept_no = m.dept_no
JOIN Employee AS e ON m.emp_no = e.emp_no;


--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT e.emp_no, e.first_name, e.last_name, d.dept_no, d.dept_name
FROM Employee AS e
JOIN Dept_emp AS de ON e.emp_no = de.emp_no
JOIN Department AS d ON de.dept_no = d.dept_no;


--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

SELECT first_name, last_name, sex
FROM Employee
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--List each employee in the Sales department, including their employee number, last name, and first name.
SELECT e.emp_no, e.first_name, e.last_name
FROM Employee AS e
JOIN Dept_emp AS de ON e.emp_no = de.emp_no
JOIN Department AS d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';


--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)
SELECT e.emp_no, e.last_name, e.first_name
FROM Employee AS e
JOIN Dept_emp AS de ON e.emp_no = de.emp_no
JOIN Department AS d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';


