-- taller 1

-- 01. Los ID de los estudiantes que tienen una S en su nombre y pertenecen al departamento de “Comp. Sci”.
select ID
from student
where name like "%s%" and dept_name = "Comp. Sci.";

-- 02. El salón de clases con mayor capacidad de toda la universidad.
select room_number, capacity
from classroom
order by capacity desc
limit 1;

-- 03. El departamento con mayor número de profesores. 
select count(id) as conteo, dept_name
from instructor
group by dept_name
order by conteo desc
limit 1;

-- 04. El promedio del número de estudiantes por curso:
select course_id, avg(cantidad_por_curso) as promedio_curso_por_curso
from( 
	select course_id,year, count(*) as cantidad_por_curso
	from takes
	group by course_id, year
) as subquery
GROUP BY course_id;

-- 05. El número de cursos que cada docente ha dictado.
select instructor.name , count(*) as numero_de_cursos_dictados
from teaches join instructor on teaches.id = instructor.id
group by teaches.ID;

select id, count(*) as numero_de_cursos_dictados
from teaches
group by id;






