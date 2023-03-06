select u.email
from users as u
inner join ads a on u.id = a.user_id
where a.id = 2;

select c.name
from categories c
inner join ad_category ac on c.id = ac.category_id
where ac.ad_id = 2;

select a.*
from ads a
inner join ad_category ac on a.id = ac.ad_id
inner join categories c on ac.category_id = c.id
where c.name like 'plu%';

select a.*
from ads a
inner join users u on a.user_id = u.id
where u.name like 'bo%';