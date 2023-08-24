# Banco de dados - Ícaro Gaspar Nascimento 🖥️

Meu repositório de projetos individuais da disciplina de Banco de Dados da residência em TIC do Serratec.

## Trabalho Final Individual
### 
Relacionamento: delegacia - denuncia

#### 

Este é um banco de dados pensado para um disque-denúncia onde serão feitas denuncias para uma delegacia.

A relação entre as entidades delegacia e denúncia é de 1 para muitos. Uma delegacia pode ter muitas denúncias, mas uma denúncia só pode estar relacionada a uma delegacia.

A delegacia é a entidade responsável por receber e investigar as denúncias. A denúncia é o relato de um crime ou de uma infração que foi cometido.

### Diagramas:

1. Modelo Conceitual

![image](https://github.com/ikaro460/banco-de-dados-projetos-individuais/assets/82971009/edb0da84-625e-4aea-8e14-7757ee881f77)

2. Modelo Lógico

![image](https://github.com/ikaro460/banco-de-dados-projetos-individuais/assets/82971009/03619ca0-2703-4537-ba78-02c22dad90a4)

3. Modelo Físico

```
-- CRIAR BANCO DE DADOS
create database disquedenuncia;

-- CRIAR TABELA DELEGACIA
create table delegacia(
	del_cd_id serial,
	del_tx_nome varchar(255),
	del_tx_end varchar(255),
	del_tx_tel varchar(255),
	primary key (del_cd_id)
);

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
```
