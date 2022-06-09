select * from cidade;
select * from estado;

-- Alterar o nome da cidade id = 1 para maiúscula:
UPDATE cidade SET nome = 'CIDADE DE GOIÁS' WHERE (id = 1);

-- Alterar o nome da cidade id = 2 para maiúscula e desativá-la:
UPDATE cidade SET nome = 'BACABAL', ativo = 'N' WHERE (id = 2);

-- Alterar o nome de todas as cidades para maiúscula:
UPDATE cidade SET nome = UPPER(nome);

-- Alterar o nome de todas os stados para maiúscula:
UPDATE estado SET nome = UPPER(nome);

-- Mudar a cidade BRASILEIA (id = 5) que está em MARANHÃO para o estado de GOIÁS (id = 2):
UPDATE cidade SET estado_id = 2 WHERE (id = 5);

-- Excluir o estado de PE (id = 19) e RJ (17) ao mesmo tempo:
DELETE FROM estado WHERE (id = 17 OR id = 19);

-- Excluir todos os estados que não possui uma região definida:
DELETE FROM estado WHERE (regiao_estado = 'Valor não informado');