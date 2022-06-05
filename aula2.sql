drop database if exists aula_banco;
create database aula_banco;
use aula_banco;

-- Criando tabela:
create table estado(
	id int not null auto_increment, -- primary key,
    nome varchar(200) not null unique, -- constraint inline.
    sigla char(2) not null unique,
    ativo char(1) not null default 'S',
    data_cadastro datetime not null default current_timestamp,
    constraint pk_estado primary key(id),
    -- check(ativo in('S', 'N')) -- constraint out of line -- regra sem nome
    constraint coluna_ativo_deve_ser_S_ou_N check(ativo in('S', 'N')) -- constraint out of line. Regra com nome
);

-- Inserindo dados na tabela:
-- insert into estado(id, nome, sigla, ativo, data_cadastro) value(1, 'Paraná', 'PR', 'S', '2022-06-05');
-- insert into estado(id, nome, sigla, ativo, data_cadastro) value(2, 'São Paulo', 'SP', 'N', '2022-06-05');
insert into estado(nome, sigla) value('Maranhão', 'MA');
insert into estado(nome, sigla) value('Goiás', 'GO');

select * from estado;