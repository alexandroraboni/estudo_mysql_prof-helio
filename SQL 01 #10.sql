/**
Lista de exercícios - JOIN 
Responda as questões:
**/

-- 01 - O que é JOIN? Quando é necessário?
	-- É uma combinação ou junção de tabelas, ele permite que unimos em um conjunto de dados registros de várias tabelas.
    -- É neceessário nos casos que precisamos retornar dados de várias tabelas.

-- 02 - Qual a sintaxe do JOIN? Maiúscula ou minúscula faz diferença? Existe algum padrão? Explique.
	-- Sintaxe: INNER JOIN <nome da tabela que se deseja adicionar à instrução sql> ON <relacionamento entre as tabelas>
		-- Ex.: SELECT cidade.id, cidade.nome, estado.sigla FROM cidade inner join estado ON (cidade.estado_id = estado.id);
	-- Não faz diferença entre maiúscula/minúscula.

-- 04 - O que é primordial para que o resultado tenha sentido em consultas com JOIN? Explique.
	-- É necessário que se identifique as tabelas que estão envolvidas na operação e posteriormente identificar as colunas, pois pode haver
    -- coluna com nomes repetidos ou que não façam muito sentido naquele contexto.

-- 05 - Existe mais de uma maneira de realizar o JOIN? Quantas? Qual é a mais eficiente? 
	-- Basicamente pode-se fazer join usando o padrão SQL 9 e SQL 92, ambos possuem a mesma eficiência.

-- 06 - Para realizar o JOIN de 1523 tabelas, quantas comparações de junções são necessárias? Explique.

-- 07 - O que é análise semântica e de sintaxe? Qual a diferença? Para que serve?
	-- Análise de sintaxe: uma validação feita pelo SGDB para verificar se a maneira que os comando foram digitados estão corretos. 
		-- Ex.: o comando INSERT sempre precisa de um VALUE, já o UPDATE, presisa de um SET. Com isso a estrutura fica consistente.
	-- Análise semântica está relacionada ao sentido que esses comando fazem ou tem.
		-- Ex.: o comando INSERT traz o sentido de inserir um registro no banco de dados, ao passo que o UPDATE remete ao sentido de atualizar ou alterar,
          -- não sós isso, mas todo o sentido como o comando é estruturado (sintaxe).
    
-- 08 - Em uma consulta com JOIN, há casos em que seja necessário atribuir o nome da tabela na projeção das colunas? Explique.
  -- Em casos em que o nome da coluna de uma tabela coincide com o nome de outra coluna em outra tabela.

-- 09 - De acordo com o estudo de caso, cite 4 exemplos em que seja possível utilizar o JOIN e 3 exemplos que não seja possível realizar o JOIN.
   
