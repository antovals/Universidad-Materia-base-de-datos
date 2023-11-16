SELECT * 
from employee;

select *
from invoice;

select now();

select *
from employee
where birthdate between '1968-01-01' and '1970-12-31';

select *
from employee
where birthdate between '1958-01-01' and '1962-12-31';

select *
from employee
where year(birthdate) between 1968 and 1970;

select *
from instructor;

select id, salary
from instructor
order by salary desc
limit 1;

select max(salary)
from instructor;