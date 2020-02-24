select * from departments
select * from dept_emp
select * from dept_manager
select * from employees
select * from salaries
select * from titles

--List the following details of each employee: employee number, last name, first name, gender, and salary.

select employees.emp_no, first_name, last_name, gender, salaries.salary
from employees
inner join salaries on employees.emp_no = salaries.emp_no;


--List employees who were hired in 1986.

select * from employees where hire_date LIKE '1986%';

--List the manager of each department with the following information: 
--department number, department name, 
--the manager's employee number, last name, first name, and start and end employment dates.
--(Follow syntax for triple table inner join)

select employees.emp_no, first_name, last_name, gender, salaries.salary
from employees
inner join salaries on employees.emp_no = salaries.emp_no;

--List the department of each employee with the following information: 
--employee number, last name, first name, and department name
--(similar join to first join activity)

select employees.emp_no, first_name, last_name, dept_emp.dept_no
from employees
inner join dept_emp on employees.emp_no = dept_emp.emp_no;

ALTER TABLE dept_emp
ALTER COLUMN emp_no integer;

--List all employees whose first name is "Hercules" and last names begin with "B."
--(subquery)

select * from employees where first_name like 'Hercules' and last_name like 'B%';

--List all employees in the Sales department, 
--including their employee number, last name, first name, and department name.
--(inner join 3 different tables)

--List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.
--(similar to above but with one more where statement)

--In descending order, list the frequency count of employee last names, 
--i.e., how many employees share each last name.
--(SQL groupby)

SELECT count(emp_no), (last_name)
from employees
group by last_name
ORDER BY COUNT(emp_no) DESC;

select * from employees where last_name like 'Baba'


