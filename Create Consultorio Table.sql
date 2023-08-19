create database consultorio;

create table paciente (
    pac_cd_id serial,
    pac_tx_nome varchar(50),
    pac_int_cpf integer,
    pac_dt_data_nasc date,
    pac_int_telefones integer,
    pac_tx_end varchar(200),
    primary key (pac_cd_id)
);

create table senha(
    sen_cd_id_serial,
    sen_int_num integer,
    sen_dt_data_senha timestamp,
    fk_pac_cd_id integer,
    primary key (sen_cd_id),
    foreign key (fk_pac_cd_id) references paciente(pac_cd_id),
);
