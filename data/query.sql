-- queries
-- join the salary and the employee tables together with the emp key
SELECT  emp.emp_no, emp.last_name, emp.first_name, emp.sex, sal.salary
FROM employees as emp
    LEFT JOIN salaries as sal
    ON (emp.emp_no = sal.emp_no)
ORDER BY emp.emp_no;

-- find the employees who were hired between 1986
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

-- find the managers of all the departments
SELECT  dm.dept_no,d.dept_name,dm.emp_no,e.last_name,e.first_name
FROM dept_manager AS dm
    INNER JOIN departments AS d
        ON (dm.dept_no = d.dept_no)
    INNER JOIN employees AS e
        ON (dm.emp_no = e.emp_no);


-- find department for each employee
SELECT  e.emp_no, e.last_name, e.first_name,d.dept_name
FROM employees AS e
    INNER JOIN dept_emp AS de
        ON (e.emp_no = de.emp_no)
    INNER JOIN departments AS d
        ON (de.dept_no = d.dept_no)
ORDER BY e.emp_no;

-- find the employees in the sales department
SELECT  e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
    INNER JOIN dept_emp AS de
        ON (e.emp_no = de.emp_no)
    INNER JOIN departments AS d
        ON (de.dept_no = d.dept_no)
WHERE d.dept_name = 'Sales'
ORDER BY e.emp_no;

