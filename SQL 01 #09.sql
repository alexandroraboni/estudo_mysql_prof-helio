/*
Conforme o estudo de caso, elabore as consultas solicitadas abaixo:
Link do DER: https://github.com/heliokamakawa/curso_bd/blob/master/00-estudo%20de%20caso%20loja%20-%20DER.png
Link do script: https://github.com/heliokamakawa/curso_bd/blob/master/00-estudo%20de%20caso%20%20loja%20-script.sql
obs: Para cada questão utilize o padrão SQL89 e SQL92
*/

SELECT * FROM cidade;
SELECT * FROM estado;

-- 01 - Liste o id e o nome de todas as cidades e as respectivas siglas do estado.
SELECT c.id, c.nome, e.sigla FROM cidade c, estado e WHERE (e.id = c.estado_id);

-- 02 - Em relação ao resultado do exercício anterior,note que os nomes das colunas não estão claras. Refaça o comando para que torne mais claras.
SELECT c.id 'Código da cidade', c.nome 'Nome da cidade' , e.sigla 'Sigla do estado' FROM cidade c, estado e WHERE (e.id = c.estado_id);

-- 03 - Refaça o exercício anterior atribuindo o nome completo da tabela em todos os atributos.
SELECT cidade.id 'Código da cidade', cidade.nome 'Nome da cidade' , estado.sigla 'Sigla do estado' FROM cidade, estado WHERE (estado.id = cidade.estado_id);

-- 04 - Refaça o exercício anterior definindo o apelido na tabela.
SELECT c.id 'Código da cidade', c.nome 'Nome da cidade' , e.sigla 'Sigla do estado' FROM cidade c, estado e WHERE (e.id = c.estado_id);

-- 05 - Explique a diferença entre o exercício 03 e 04. Qual é a melhor? Qual devemos estudar?
	-- A diferença é que no primeiro usamos o nome por extenso da entidade, já no segundo, podemos usar qualquer nome como apelido para nos referenciar à entidade
    -- isso é muito confortável pois nos permitir distinguir nomes de tabelas semelhantes, assim, evitar erros quando se esta´desenvolvendo um script complexo.
    -- Quanto ao melhor a resposta é depende do contexto.
    -- Devemos estudar todas as opções, pois a depender do contexto poderemos usar uma ou outra.
    
-- 06 - Quantos registros foram gerados no resultado do exercício 02?
-- O comando do exercício anterior pode ser utilizado para descobrir as cidades da região sul? Justifique/explique o que ocorre.
	-- Como já fiz diversas alteraçõe nos dados da minha tabela, ele me retornou 8 registros.
    -- Sim, podemos descobrir as cidades de uma certa região para isso, pode-se acrescentar a cláusula WHERE informando a região deseja, exemplo:
    SELECT c.id 'Código da cidade', c.nome 'Nome da cidade' , e.sigla 'Sigla do estado' FROM cidade c, estado e WHERE (e.id = c.estado_id) and (e.regiao_estado = 'SUL');

-- 07 - Liste o id e o nome de todas as cidades e as respectivas siglas do estado de São Paulo. 
SELECT c.id 'Código da cidade', c.nome 'Nome da cidade' , e.sigla 'Sigla do estado' FROM cidade c, estado e WHERE (e.id = c.estado_id) AND (e.sigla = 'SP');

-- 08 - Liste o id e o nome de todas as cidades da região sudeste e as respectivas siglas do estado.
SELECT c.id 'Código da cidade', c.nome 'Nome da cidade' , e.sigla 'Sigla do estado' FROM cidade c, estado e WHERE (e.id = c.estado_id) and (e.regiao_estado = 'SUDESTE');

-- 09 - Escreva a consulta que liste o nome dos Funcionários do estado Paraná.
SELECT f.nome FROM funcionario f, cidade c, estado e WHERE (f.cidade_id = c.id) AND (c.estado_id = e.id) AND (e.sigla = 'PR');

-- 10 - Escreva a consulta que liste o nome e o telefone dos Fornecedores da cidade de São Paulo.
SELECT f.nome, f.telefone FROM funcionario f, cidade c WHERE (f.cidade_id = c.id) AND (c.nome = 'SÃO PAULO');
