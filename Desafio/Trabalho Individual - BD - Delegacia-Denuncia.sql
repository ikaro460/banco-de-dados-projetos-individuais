-- CRIAR BANCO DE DADOS
create database disquedenuncia;

-- APAGAR BANCO DE DADOS
drop database disquedenuncia;

-- CRIAR TABELA DELEGACIA
create table delegacia(
	del_cd_id serial,
	del_tx_nome varchar(255),
	del_tx_end varchar(255),
	del_tx_tel varchar(255),
	primary key (del_cd_id)
);

-- DELETAR TABELA DELEGACIA
drop table delegacia;

-- CRIAR TABELA DENUNCIA
create table denuncia(
	den_cd_id serial,
	den_tx_denunciante varchar(255),
	den_tx_motivo varchar(255),
	den_dt_data timestamp,
	fk_del_cd_id integer,
	primary key (den_cd_id),
	foreign key (fk_del_cd_id) references delegacia (del_cd_id)
);

-- DELETAR TABELA DENUNCIA
drop table denuncia;

-- CRIAR SEQUENCE PARA DELEGACIA
create sequence del_id_seq
start with 1
increment by 1;

-- DELETE SEQUENCE
drop sequence del_id_seq;

-- INSERT DELEGACIA
insert into delegacia (del_cd_id, del_tx_nome, del_tx_end, del_tx_tel)
values (nextval('del_id_seq'), 'DPM 13', 'Rua Barão do Rio Branco', '24 22492541');

-- ATUALIZAR / CORRIGIR REGISTROS
update delegacia set del_tx_nome = 'DPM 18', del_tx_end = 'Rua Lavradio', del_tx_tel = '24 22526894' where del_cd_id = 2

-- SELECT DELEGACIA
select * from delegacia;

-- DELETE INSERT DELEGACIA
delete from delegacia where del_cd_id = 5;

-- CRIAR SEQUENCE PARA DELEGACIA
create sequence den_id_seq
start with 1
increment by 1;

-- DELETE SEQUENCE
drop sequence den_id_seq;

-- INSERT DENUNCIA
insert into denuncia (den_cd_id, den_tx_denunciante, den_tx_motivo, den_dt_data, fk_del_cd_id)
values (nextval('den_id_seq'), 'Anônimo', 'Estrupo', '2023-08-19 12:00:00', 2);

-- SELECT DENUNCIA
select * from denuncia;

-- DELETE INSERT DENUNCIA
delete from denuncia where del_cd_id = 1;

-- DELEGACIA INNER JOIN DENUNCIA
select * from delegacia del inner join denuncia den on del.del_cd_id = den.fk_del_cd_id;

-- DENUNCIAS WHERE DELEGACIA = 1
select * from denuncia where fk_del_cd_id = 1;

-- DENUNCIAS ORDER BY MOTIVO
select * from denuncia order by den_tx_motivo;

-- DENUNCIAS GROUP BY
select den_tx_motivo, den_tx_denunciante, den_cd_id  from denuncia  group by den_tx_motivo, den_tx_denunciante, den_cd_id ;

-- DELEGACIA JOIN DENUNCIA
select
	den_tx_denunciante,
	den_tx_motivo,
	del.del_tx_nome
from
	denuncia den
join delegacia del on
	del.del_cd_id = den.fk_del_cd_id;

-- DELEGACIA INNER JOIN DENUNCIA
select
	den_tx_denunciante,
	den_tx_motivo,
	del.del_tx_nome
from
	denuncia den
inner join delegacia del on
	del.del_cd_id = den.fk_del_cd_id;

-- DELEGACIA OUTER JOIN DENUNCIA
select
	den_tx_denunciante,
	den_tx_motivo,
	del.del_tx_nome
from
	denuncia den
left join delegacia del on
	del.del_cd_id = den.fk_del_cd_id;