-- Padrões:
select @@version, @@version_compile_os, @@lower_case_table_names;
drop TABLE cliente;
-- Criação de outras tabelas seguindo o padrão:
CREATE TABLE cliente(
	id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(200) NOT NULL,
    cpf_cnpj VARCHAR(18) UNIQUE,
    telefone CHAR(14),
    contato VARCHAR(100) NOT NULL,
    status CHAR(1) NOT NULL,
    data_cadastro DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    cidade_id INT NOT NULL,
    CONSTRAINT pk_cliente PRIMARY KEY(id),
    CONSTRAINT fk_cliente_cidade_id FOREIGN KEY(cidade_id) REFERENCES cidade(id)
);

ALTER TABLE cliente MODIFY COLUMN STATUS ENUM('S', 'N') not null;

CREATE TABLE funcionario(
	id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(200) NOT NULL,
    cpf CHAR(14),
    endereco VARCHAR(255) NOT NULL,
    status CHAR(1) NOT NULL,
    data_cadastro DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    cidade_id INT NOT NULL,
    CONSTRAINT pk_funcionario PRIMARY KEY(id),
    CONSTRAINT fk_funcionario_cidade_id FOREIGN KEY(cidade_id) REFERENCES cidade(id)
);

ALTER TABLE funcionario MODIFY COLUMN STATUS ENUM('S', 'N') not null;

CREATE TABLE telefone(
	id INT NOT NULL AUTO_INCREMENT,
    descricao VARCHAR(255) NOT NULL,
    telefone CHAR(14),
    status CHAR(1) NOT NULL,
    data_cadastro DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    funcionario_id INT NOT NULL,
    CONSTRAINT pk_telefone PRIMARY KEY(id),
    CONSTRAINT fk_telefone_funcionario_id FOREIGN KEY(funcionario_id) REFERENCES funcionario(id)
);

ALTER TABLE telefone MODIFY COLUMN STATUS ENUM('S', 'N') NOT NULL;

CREATE TABLE caixa(
	id INT NOT NULL AUTO_INCREMENT,
    data DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    status CHAR(1) NOT NULL DEFAULT 'S',
    saldo DECIMAL(9,2) NOT NULL,
    funcionario_id INT NOT NULL,
    CONSTRAINT pk_caixa PRIMARY KEY(id),
    CONSTRAINT fk_caixa_funcionario_id FOREIGN KEY(funcionario_id) REFERENCES funcionario(id)
);

ALTER TABLE caixa MODIFY COLUMN STATUS ENUM('S', 'N') NOT NULL;

CREATE TABLE item_caixa(
	id INT NOT NULL AUTO_INCREMENT,
    descricao VARCHAR(255) NOT NULL,
    valor VARCHAR(45) NOT NULL,
    natureza VARCHAR(45) NOT NULL,
    hora VARCHAR(45) NOT NULL,
    caixa_id INT NOT NULL,
    CONSTRAINT pk_item_caixa PRIMARY KEY(id),
    CONSTRAINT fk_item_caixa_caixa_id FOREIGN KEY(caixa_id) REFERENCES caixa(id)
);

