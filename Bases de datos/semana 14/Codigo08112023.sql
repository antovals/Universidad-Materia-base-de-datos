-- Join Clasico
select name, instructor.dept_name, budget
from instructor, department
where instructor.dept_name = department.dept_name;

-- Usar alias
select name, i.dept_name, budget
from instructor as i, department d
where i.dept_name = d.dept_name;

-- 3 Tablas
select distinct name, i.id, s_id
from instructor as i, department d, advisor as a
where i.dept_name = d.dept_name and i.ID = a.i_ID;

-- Join ON
select name, i.dept_name, budget
from instructor as i inner join department d 
on i.dept_name = d.dept_name;

select name, i.dept_name, budget, salary
from instructor as i inner join department d 
on i.dept_name = d.dept_name
where i.salary > 70000
order by salary;

-- 3 Tablas con Join ON
select distinct name, i.id, s_id
from instructor as i inner join department d 
on i.dept_name = d.dept_name 
inner join advisor as a
on i.ID = a.i_ID;

-- Funciones
select dept_name, dept_count(dept_name) as teachers
from department
order by teachers;

select dept_name, budget
from department
where dept_count(dept_name) > 4;

select ID, name, teacher_advisor(ID) as TeacherLevel
from instructor
order by TeacherLevel;

-- Procedimientos
call getDepartments(4);

call getDepartments(0);
