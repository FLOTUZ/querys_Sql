-- 26 Consultar genero que fue más visto
select G.DESCRIPCION,count(G.DESCRIPCION) as B_vendidos
from BOLETO B
inner join FUNCION F on B.ID_FUNCION = F.ID_FUNCION
inner join PELICULA P on F.ID_PELICULA = P.ID_PELICULA
inner join GENERO G on P.ID_GENERO = G.ID_GENERO
group by G.DESCRIPCION
order by B_vendidos DESC;

--22. Consultar nombre de la película con el número de boletos que ha vendido cada una.
select NOMBRE, count(B.ID_BOLETO) as B_vendidos
from PELICULA
inner join FUNCION F on PELICULA.ID_PELICULA = F.ID_PELICULA
inner join BOLETO B on F.ID_FUNCION = B.ID_FUNCION
group by NOMBRE;

--23. Consultar el número de funciones que se han proyectado sin tomar en cuenta el idioma.
