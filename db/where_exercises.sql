use ymir_employees;

select * from employees where first_name in ('Irena','Vidya','Maya');

select * from employees where first_name = 'Irena'
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
or last_name like '%E';

select *
from employees
where last_name like 'E%'
and last_name like '%E';

select *
from employees
where last_name like '%q%'
and last_name not like '%qu%';