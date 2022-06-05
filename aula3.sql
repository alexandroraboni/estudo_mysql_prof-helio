-- Criando tabela:
create table cidade(
	id int not null auto_increment,
    nome varchar(200) not null,
    ativo char(1) not null default 'S',
    data_cadastro datetime not null default current_timestamp,
    estado_id int not null,
    constraint pk_cidade primary key(id),
    constraint fk_cidade_estado foreign key(estado_id) references estado(id),
    constraint cidade_ativo_deve_ser_S_ou_N check(ativo in('S', 'N')),
    constraint cidade_unica unique(nome, estado_id)
);

-- Inserindo dados na tabela:
insert into cidade(nome, estado_id) value('Cidade de Goiás', 2);
insert into cidade(nome, estado_id) value('Bacabal', 1);
insert into cidade(nome, estado_id) value('Goiânia', 2);
insert into cidade(nome, estado_id) value('São Luís', 1);

select * from estado;
select * from cidade;