ALTER TABLE dept_emp ADD COLUMN id_dept_emp SERIAL;
ALTER TABLE employees ADD COLUMN id_emp SERIAL;
ALTER TABLE dept_manager ADD COLUMN id_dept_man SERIAL;
ALTER TABLE salaries ADD COLUMN id_sal SERIAL;

DELETE FROM
    dept_emp a
        USING dept_emp b
WHERE
    a.id_dept_emp < b.id_dept_emp
    AND a.emp_no = b.emp_no;

CREATE VIEW hw_query AS

select
 employees.emp_no, emp_title_id, birth_date, 
 first_name, last_name, sex, hire_date, title, salary, 
 dept_emp.dept_no, dept_name, dept_manager.emp_no as manager_emp_no
FROM employees
INNER JOIN titles
ON titles.title_id = employees.emp_title_id
INNER JOIN salaries
on salaries.emp_no = employees.emp_no
INNER JOIN dept_emp
on dept_emp.emp_no = employees.emp_no
INNER JOIN departments
on departments.dept_no = dept_emp.dept_no
Left JOIN dept_manager
ON dept_manager.emp_no = employees.emp_no


