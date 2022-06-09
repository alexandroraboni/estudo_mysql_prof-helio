/*
INSERT -Lista Exercício 
Caso queira fazer na prática, execute o script do link: https://github.com/heliokamakawa/curso_bd/blob/master/05a-SELECT%20-%20script%20aula.sql
*/

-- 1) Escreva o comando para inserir um registro da tabela estado com todas as colunas. 
INSERT INTO estado VALUES (NULL,'ACRE','AC','S','2021-05-01'); 
/* 
Como id é um campo com auto incremento, definimos NULL no comando.
Como estamos inserindo todas as colunas não precisamos informar a descrição das colunas. 
Porém, devemos informar os dados na sequência correta 
**/ 

-- 2) Escreva o comando para inserir um registro da tabela estado, definindo todos os dados, exceto a  chave primária que é auto incremento.  
INSERT INTO estado (nome,sigla,ativo,data_cadastro) VALUES ('ALAGOAS','AL','S','2021-05-02'); 
-- Como não estamos informando todos os dados, é necessário especificar de quais colunas são 

-- 3) Escreva o comando para inserir um registro da tabela estado, definindo somente os dados  necessários.  
INSERT INTO estado (nome,sigla) VALUES ('AMAPÁ','AP'); 
/** 
id → não precisa informar porque é auto incremento  
ativo e data_cadastro → não precisa informar porque possui o valor padrão  
**/ 

-- 4) Escreva o comando para inserir registros da tabela cidade das 3 formas apresentadas nos exercícios  anteriores.  
-- O registro de uma cidade requer a referência do estado (cidade é dependente  do estado). Assim, é necessário, primeiro, fazer a inserção dos estados. 
INSERT INTO cidade (id,nome,estado_id,ativo,data_cadastro) VALUES (NULL, 'ACRELANDIA',1,'S','2021-04-28'); 
INSERT INTO cidade (nome,estado_id,ativo,data_cadastro) VALUES ('ASSIS  BRASIL',1,'S','2021-03-14'); 
INSERT INTO cidade (nome,estado_id) VALUES ('BRASILEIA',1);


/*
AGORA É A SUA VEZ!!!! Para que você aprenda, é muito importante que não copie e cole,  digite os comandos e mentalize o que está fazendo 
na medida que digita cada comando. Uma dica  importante é que você digite primeiro no bloco de notas, com intuito de testar se realmente
consegue digitar os comandos sem a ajuda do IDE – depois teste os comandos. 

5. Escreva o comando para inserir 3 registros da tabela estado com todas as colunas. 
INSERT INTO estado VALUES(NULL, 'MATO GROSSO', 'MT', 'CENTRO-OESTE', 'N', '2022-06-05');
INSERT INTO estado VALUES(NULL, 'MATO GROSSO DO SUL', 'MS', 'CENTRO-OESTE', 'S', '2022-06-05');
INSERT INTO estado VALUES(NULL, 'PARÁ', 'PA', 'NORTE', 'S', '2022-06-05');

6. Escreva o comando para inserir 2 registros da tabela estado, definindo todos os dados, exceto a chave  primária que é auto incremento. 
INSERT INTO estado(nome, sigla, regiao_estado, ativo, data_cadastro) VALUES('TOCANTINS', 'TO', 'NORTE', 'S', '2022-06-04');
INSERT INTO estado(nome, sigla, regiao_estado, ativo, data_cadastro) VALUES('MINAS GERAIS', 'MG', 'SUDESTE', 'N', '2022-06-03');

7. Escreva o comando para inserir 2 registros da tabela estado, definindo somente os dados necessários.
INSERT INTO estado(nome, sigla, regiao_estado) VALUES('CAMPINA GRANDE', 'PB', 'NORDESTE');
INSERT INTO estado(nome, sigla, regiao_estado) VALUES('ESPÍRITO SANTO', 'ES', 'SUDESTE');

8. Escreva o comando para inserir registros da tabela cidade das 3 formas apresentadas nos exercícios  anteriores.  
INSERT INTO cidade(nome, ativo, data_cadastro, estado_id) VALUES('MANAUS', 'S', '2022-05-03', 15);
INSERT INTO cidade VALUES(NULL, 'ARAGUAÍNA', 'S', '2022-04-28', 10);
INSERT INTO cidade(nome, estado_id) VALUES('CAMPINA GRANDE', 12);

9. Faça a inserção de 2 registros de cliente.  
INSERT INTO cliente VALUES(NULL, 'ALEXANDRO', '123456', '(46)99999-1010', 'ALEXANDRO', 'S', '2022-06-05', 11);
INSERT INTO cliente(nome, cpf_cnpj, telefone, contato, cidade_id) VALUES('ADRIANA', '445566', '(46)98889-0010', 'ADRIANA', 1);

10. DESAFIO!!! Tente fazer todas as inserções necessárias para que se tenha um item de caixa. Na medida  que esteja digitando o código, tente associar
os dados inseridos com o contexto real.

-- Funcionário:
INSERT INTO funcionario(nome, cpf, endereco, status, data_cadastro, cidade_id) VALUES('MARTHA', '12345600', 'AV. DAS FLORES', 'S', current_timestamp(), 3);
INSERT INTO funcionario(nome, cpf, endereco, status, data_cadastro, cidade_id) VALUES('ZINIA', '12344477801', 'R. MARANHÃO SOBRINHO, 100', 'S', current_timestamp(), 2);
INSERT INTO funcionario(nome, cpf, endereco, status, data_cadastro, cidade_id) VALUES('MARTHA', '10123458974', 'AV. CÔNEGO J. LIMA, S/N', 'S', current_timestamp(), 11);

-- Telefone:
INSERT INTO telefone VALUES(NULL, 'CELULAR', '(46)990144558', 'S', current_timestamp(), 1);
INSERT INTO telefone VALUES(NULL, 'CELULAR', '(46)988440558', 'S', current_timestamp(), 2);
INSERT INTO telefone VALUES(NULL, 'FIXO', '(46)34149901', 'S', current_timestamp(), 3);

-- Caixa:
INSERT INTO caixa(data, saldo, funcionario_id) VALUES(current_timestamp(), 1000, 1);
INSERT INTO caixa(data, saldo, funcionario_id) VALUES(current_timestamp(), 250, 2);
INSERT INTO caixa(data, saldo, funcionario_id) VALUES(current_timestamp(), 400.69, 3);
    
- Itens de caixa:
INSERT INTO item_caixa(descricao, valor, natureza, hora, caixa_id) VALUES('VENDA', 20, 'VENDA', current_time(), 1);
INSERT INTO item_caixa(descricao, valor, natureza, hora, caixa_id) VALUES('ORDEM DE SERVIÇO', 12.88, 'SERVIÇO', current_time(), 1);
INSERT INTO item_caixa(descricao, valor, natureza, hora, caixa_id) VALUES('RECEBIMENTO DE DUPLICATAS', 8.76, 'RECEBIMENTO', current_time(), 2);


*/