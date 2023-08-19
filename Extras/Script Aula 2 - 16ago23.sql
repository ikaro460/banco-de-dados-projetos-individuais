--listar os filmes com language_id igual a 3
select
	*
from
	film
where
	language_id = 1;
--listar os filmes com language_id diferente de 1
select
	*
from
	film
where
	language_id <> 1;

select
	*
from
	film
where
	not language_id = 1;

--listar as colynas da tabela lannguage junto com as colunas da tabela film
select
	*
from
	language l
inner join film f on
	l.language_id = f.language_id;
	

--listar os filmes com as colunas especificas e 

select
	f.title,
	f.description,
	f.release_year,
	l.name
from
	language l
inner join film f on
	l.language_id = f.language_id
where
	l.language_id = 1;
	
-- Tabela= Entidade
-- Linhas que ligam tabelas=relacionamento
-- Tipo de relacionamento=cardinalidade

-- (0,N) 
-- 0 - cardinalidade mínima
-- N - cardinalidade máxima
--
-- Tipo de relacionamento=cardinalidade. 
-- São 4 tipos: 
--  -Muitos pra um; N--1
--  -Um pra muitos; 1--N
--  -Muitos pra muitos; N--N
--  -Um pra um. 1--1

