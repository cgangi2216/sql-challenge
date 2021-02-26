/* 1 */
SELECT	  e.emp_no AS "Employee Number"
		, e.last_name AS "Last Name"
		, e.first_name AS "First Name"
		, s.salary AS "Salary"
	FROM employee e
	INNER JOIN emp_salary s ON e.emp_no = s.emp_no;

/* 2 */
SELECT	  first_name AS "First Name"
		, last_name AS "Last Name"
		, hire_date AS "Hire Date"
	FROM employee
	WHERE date_part('year', hire_date) = 1986;

/* 3. */
SELECT	  d.dept_no AS "Department Number"
		, d.dept_name AS "Department Name"
		, m.emp_no AS "Department Manager Employee Number"
		, m.last_name AS "Department Manager Last Name"
		, m.first_name AS "Department Manager First Name"
	FROM department d
	INNER JOIN dep_manager dm ON d.dept_no = dm.dept_no
	INNER JOIN employee m ON dm.emp_no = m.emp_no;

/* 4 */
SELECT	  e.emp_no AS "Employee Number"
		, e.last_name AS "Last Name"
		, e.first_name AS "First Name"
		, d.dept_name AS "Department Name"
	FROM department d
	INNER JOIN dep_emp de ON d.dept_no = de.dept_no
	INNER JOIN employee e ON de.emp_no = e.emp_no;

/* 5 */
SELECT	  first_name AS "First Name"
		, last_name AS "Last Name"
		, sex AS "Sex"
	FROM employee
	WHERE first_name = 'Hercules'
	AND last_name LIKE 'B%';
	
/* 6 */
SELECT	  e.emp_no AS "Employee Number"
		, e.last_name AS "Last Name"
		, e.first_name AS "First Name"
		, d.dept_name AS "Department Name"
	FROM department d
	INNER JOIN dep_emp de ON d.dept_no = de.dept_no
	INNER JOIN employee e ON de.emp_no = e.emp_no
	WHERE d.dept_name = 'Sales';
	
/* 7 */
SELECT	  e.emp_no AS "Employee Number"
		, e.last_name AS "Last Name"
		, e.first_name AS "First Name"
		, d.dept_name AS "Department Name"
	FROM department d
	INNER JOIN dep_emp de ON d.dept_no = de.dept_no
	INNER JOIN employee e ON de.emp_no = e.emp_no
	WHERE d.dept_name IN ('Sales','Development');

/* 8 */
SELECT	  last_name AS "Last Name"
		, COUNT(*) AS "Count"
	FROM employee
	GROUP BY last_name
	ORDER BY COUNT(*) DESC;

