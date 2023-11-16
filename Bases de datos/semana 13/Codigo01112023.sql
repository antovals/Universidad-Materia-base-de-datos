select name, id
from instructor;

SELECT NAME 
FROM INSTRUCTOR;

select distinct dept_name
from instructor;

select distinct course_id
from section;

select name, salary as "salario anual", salary/12 as salario_mensual
from instructor as i
where i.dept_name = "Accounting";

select * 
from student;

select *, year
from section;

select name
from instructor
where dept_name = "Comp. Sci.";

select name
from instructor
where dept_name = "Statistics";

select name
from instructor
where dept_name = "Comp. Sci." or dept_name = "Statistics";

select name, id
from student
where name like "Robin%";

select name, id
from student
where name like "%son";

select name, id
from student
where name like "___s";

select name, id
from student
where name like "R%o_";

select name, id
from student
where name like "R%o_"
order by name, id;

select salary, id
from instructor
order by salary desc
limit 1;

select salary, id
from instructor
where salary between 70000 and 90000;

select salary, id
from instructor
where salary >= 70000 and salary <= 90000;

select avg(salary)
from instructor
where dept_name = "Statistics";

select count(id)
from instructor
where dept_name = "Statistics";

select max(salary)
from instructor;

select count(id) as conteo, dept_name
from instructor
group by dept_name
having conteo > 4
order by conteo;

