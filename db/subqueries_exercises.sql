use ymir_employees;

select first_name, last_name
from employees e
where e.hire_date in (select hire_date
                      from employees
                      where emp_no = 101010);

select title
from titles as t
where emp_no in (select emp_no
                 from employees as e
                 where first_name = 'Aamod');

select first_name, last_name
from employees e
where gender = 'F'
  and emp_no in (select emp_no
                 from dept_manager dm
                 where to_date = '9999-01-01');



