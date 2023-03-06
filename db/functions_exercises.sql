use ymir_employees;

select *
from employees
where first_name in ('Irena', 'Vidya', 'Maya')
order by last_name, first_name;

select *
from employees
where first_name = 'Irena'
   or first_name = 'Vidya'
   or first_name = 'Maya';

select *
from employees
where last_name like 'E%';

select *
from employees
where last_name like '%q%';

select *
from employees
where last_name like 'E%'
  and last_name like '%E'
order by emp_no;

select *
from employees
where last_name like '%q%'
  and last_name not like '%qu%';

select concat(first_name, ' ', last_name) as full_name
from employees
where last_name like 'E%E';

select *
from employees
where month(birth_date) = 12
  and day(birth_date) = 25;

select *
from employees
  where month(birth_date) = 12
  and day(birth_date) = 25
  and year(hire_date) between 1990 and 1999
order by birth_date, hire_date desc;

select datediff(curdate(), hire_date)
from employees
where year(birth_date) between 1950 and 2000
  and month(birth_date) = 12
  and day(birth_date) = 25
  and year(hire_date) > 1990


