-- Task 1
SELECT emp_name, departments.dept_name
FROM employees
INNER JOIN departments
ON employees.dept_id = departments.dept_id;

-- Task 2
SELECT emp_id, emp_name, departments.dept_name
FROM employees
INNER JOIN departments
ON employees.dept_id = departments.dept_id;

-- Task 3
SELECT *
FROM employees
LEFT JOIN departments
ON employees.dept_id = departments.dept_id;

-- Task 4
SELECT *
FROM departments
RIGHT JOIN employees
ON employees.dept_id = departments.dept_id;

-- Task 5
SELECT *
FROM employees
LEFT JOIN departments
ON employees.dept_id = departments.dept_id
WHERE departments.dept_id IS NULL;

-- Task 6
SELECT dept_name, projects.project_name
FROM departments
INNER JOIN projects
ON departments.dept_id = projects.dept_id;

-- Task 7
SELECT *
FROM projects
LEFT JOIN departments
ON projects.dept_id = departments.dept_id;

-- Task 8
SELECT emp_name, departments.dept_name, projects.project_name
FROM employees
INNER JOIN departments
ON employees.dept_id = departments.dept_id
INNER JOIN projects
ON departments.dept_id = projects.dept_id;

-- Task 9
SELECT *
FROM departments
LEFT JOIN employees
ON departments.dept_id = employees.dept_id
WHERE emp_name IS NULL;

-- Task 10
SELECT e.emp_name AS Employee_name,
       m.emp_name AS Manager_name
FROM employees e
LEFT JOIN employees m
ON e.manager_id = m.emp_id;
