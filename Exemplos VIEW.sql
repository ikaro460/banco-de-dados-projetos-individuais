--Mostrar view
select * from short_films;
select * from ordered_films;


--Delete view
drop view short_films ;
drop view ordered_films;

--Exemplo 1
create view short_films as
select
	title,
	length
from
	film f
where f.length < 60;


--Exemplo 2

create view ordered_films as
select
	film_id,
	title
from
	film f
order by
	f.title;


--Exemplo 3
create view short_films as
select
	title,
	length
from
	film f
where f.length < 60;





--Exemplo 1
create view film_language as
select
	*
from
	language l
inner join film f on
	l.language_id = f.language_id;


--exemplo 2

create view film_language_2 as
select
	*
from
	language l
inner join film f on
	l.language_id = f.language_id;