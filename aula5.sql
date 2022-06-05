-- Alterando uma tabela:
alter table estado add column regiao int;
alter table estado add column regiao varchar(100) not null;
alter table estado add column regiao varchar(100) not null default 'Valor não informado';
alter table estado add column regiao varchar(100) not null default 'Valor não informado' first; -- Cria uma coluna na primeira posição da tabela.
alter table estado add column regiao varchar(100) not null default 'Valor não informado' after nome; -- Cria uma coluna numa posição específica da tabela.

-- Alterando o tipo de uma coluna:
alter table estado modify column regiao varchar(10);
alter table estado modify column regiao varchar(100);
alter table estado modify column regiao varchar(100) not null; -- Neste caso a tabela não deverá ter registro.
alter table estado modify column regiao varchar(100) not null default 'Valor não informado' after sigla; -- Altera a posição da coluna em uma tabela.
alter table estado change regiao regiao_estado varchar(100) not null default 'Valor não informado' after sigla; -- Altera a posição da coluna em uma tabela.
alter table estado modify column ativo enum('S', 'N') not null;

-- Excluindo uma coluna:
alter table estado drop column regiao;

-- Excluíndo uma constraint:
alter table estado drop constraint coluna_ativo_deve_ser_S_ou_N;


-- Trazendo informações adicionais da tabela:
describe estado;
desc estado;