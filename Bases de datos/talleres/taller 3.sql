-- taller 3
-- 1. Las compras realizadas en el primer semestre de cualquier año.
select *
from invoice
where InvoiceDate between "2009-01-01" and "2009-06-1";

-- 2. El álbum con la mayor cantidad de canciones.
select AlbumId as album, count(*) as Cantidad_canciones
from track
group by AlbumId
order by Cantidad_canciones desc
limit 1;

-- 3. Los clientes del empleado de la empresa de mayor edad.
select EmployeeId, TIMESTAMPDIFF(year, BirthDate, curdate()) as edad
from employee
where timestampdiff(year, BirthDate, curdate()) >= 18;

-- 4. El promedio de duración de las canciones por cada género musical.
select GenreId as genero_musical, AVG(sum_por_cancion_genero) AS promedio_duracion_por_genero
from(
	select  GenreId, sum(Milliseconds) as sum_por_cancion_genero
	from track
	group by GenreId
) as subquery
group by GenreId;

-- 5. La mayor cantidad vendida por año en una factura.
select YEAR(InvoiceDate) AS Year, count(*) as cantidad_vendida
from invoice
group by Year;






