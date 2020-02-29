select * from departments
select * from dept_emp
select * from dept_manager
select * from employees
select * from salaries
select * from titles

drop table dept_emp

CREATE TABLE dept_emp (
   emp_no INTEGER,
dept_no VARCHAR, 
from_date VARCHAR,
to_date VARCHAR
	);

--List employees who were hired in 1986.

select * from employees where hire_date LIKE '1986%';

--List the manager of each department with the following information: 
--department number, department name, 
--the manager's employee number, last name, first name, and start and end employment dates.
--(Follow syntax for triple table inner join)

select dept_manager.dept_no, emp_no, from_date, to_date, 
from dept_manager
inner join 

select employees.emp_no, first_name, last_name, gender, salaries.salary
from employees
inner join salaries on employees.emp_no = salaries.emp_no;

--List the department of each employee with the following information: 
--employee number, last name, first name, and department name
--(similar join to first join activity)

select employees.emp_no, first_name, last_name, departments.dept_name
from employees
inner join dept_emp on employees.emp_no = dept_emp.emp_no
inner join departments on dept_emp.dept_no = departments.dept_no

--List all employees whose first name is "Hercules" and last names begin with "B."
--(subquery)

select * from employees where first_name like 'Hercules' and last_name like 'B%';

--List all employees in the Sales department, 
--including their employee number, last name, first name, and department name.
--(inner join 3 different tables)

select employees.emp_no, first_name, last_name, departments.dept_name
from employees
inner join dept_emp on employees.emp_no = dept_emp.emp_no
inner join departments on dept_emp.dept_no = departments.dept_no
where departments.dept_name in ('Sales')

--List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.
--(similar to above but with one more where statement)

select employees.emp_no, first_name, last_name, departments.dept_name
from employees
inner join dept_emp on employees.emp_no = dept_emp.emp_no
inner join departments on dept_emp.dept_no = departments.dept_no
where departments.dept_name in ('Sales','Development')

--In descending order, list the frequency count of employee last names, 
--i.e., how many employees share each last name.
--(SQL groupby)

SELECT count(emp_no), (last_name)
from employees
group by last_name
ORDER BY COUNT(emp_no) DESC;

select * from employees where last_name like 'Baba'