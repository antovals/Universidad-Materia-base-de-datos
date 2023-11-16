-- taller 2

-- 1. El curso con mayor cantidad de estudiantes por año.
SELECT year, MAX(numero_estudiantes) AS mayor_cantidad_por_año
FROM (
    SELECT course_id, year, COUNT(*) AS numero_estudiantes
    FROM takes
    GROUP BY course_id, year
) AS subquery
GROUP BY year
order by year;

-- 02. El número de estudiantes por departamento.
SELECT dept_name, COUNT(*) as num_students
FROM student
group by dept_name;

-- 03. El número de estudiantes asesorados por cada docente.
select i_ID, count(*) as cantidad_estudiantes_asesorados
from advisor
group by i_ID;

-- 04. Los salones de cada curso dictado hasta la fecha.
select room_number, count(*) as cantidad_salones_usados_por_curso
from section
group by room_number;

-- 05. El número de cursos dictados por año
select year, count(*) as numero_de_cursos_por_año
from section
group by year;
