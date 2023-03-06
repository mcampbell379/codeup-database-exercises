use ymir_employees;

select d.dept_name as 'Department Name', concat(first_name, ' ', last_name) as 'Department Manager'
from employees e
         join dept_manager dm on dm.emp_no = e.emp_no
         join departments d on dm.dept_no = d.dept_no
where dm.to_date = '9999-01-01'
order by d.dept_name;

select d.dept_name as 'Department Name', concat(first_name, ' ', last_name) as 'Department Manager'
from employees e
         join dept_manager dm on dm.emp_no = e.emp_no
         join departments d on dm.dept_no = d.dept_no
where dm.to_date = '9999-01-01'
  and gender = 'F'
order by d.dept_name;

select title, count(title) as 'Total'
from titles as t
         join dept_emp de on t.emp_no = de.emp_no
         join departments d on de.dept_no = d.dept_no
where d.dept_name = 'Customer Service'
  and de.to_date = '9999-01-01'
  and t.to_date = '9999-01-01'
group by title
order by count(title) desc;

select d.dept_name                        as 'Department Name',
       concat(first_name, ' ', last_name) as 'Department Manager',
       s.salary                           as 'Salary'
from employees e
         join dept_manager dm on dm.emp_no = e.emp_no
         join departments d on dm.dept_no = d.dept_no
         join salaries s on e.emp_no = s.emp_no
where dm.to_date = '9999-01-01'
  and s.to_date = '9999-01-01'
order by d.dept_name;