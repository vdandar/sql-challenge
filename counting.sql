
##1. List the following details of each employee: employee number, last name, first name, sex, and salary.

select
emp_no, last_name, first_name, sex, salary
from
hw_query

##2. List first name, last name, and hire date for employees who were hired in 1986.

select
first_name, last_name, hire_date
from
hw_query
Where hire_date between '1986-01-01' and '1986-12-31'
order by hire_date


##3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

select
dept_no, dept_name, manager_emp_no, first_name, last_name
from 
hw_query 
GROUP BY 
manager_emp_no, dept_name, dept_no, last_name, first_name LIMIT 24

##4. List the department of each employee with the following information: employee number, last name, first name, and department name.

select
emp_no, last_name, first_name, dept_name
from
hw_query

##5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

select
first_name, last_name, sex
from 
hw_query
where first_name = 'Hercules' and last_name like '%B%'

##6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

select
emp_no, last_name, first_name, dept_name
from
hw_query
where dept_name = 'Sales'

##7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

select
emp_no, last_name, first_name, dept_name
from
hw_query
where dept_name = 'Sales' or dept_name = 'Development'

##8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

select
last_name,
COUNT(last_name) as total_last_names
from
hw_query
group by last_name
order by last_name DESC










