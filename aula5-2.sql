-- Total de usuários cadastrados
SELECT COUNT(*) FROM usuarios;
-- outra forma de pesquisar Total de usuários cadastrados
SELECT COUNT(*) as total_usuarios FROM usuarios;
-- outra forma
SELECT COUNT(*) as total_usuarios FROM usuarios us INNER JOIN reservas rs ON us.id = rs.id_usuario;

-- Media da idade dos usuarios
SELECT AVG(TIMESTAMPDIFF(YEAR, data_nascimento, CURRENT_DATE())) AS idade
FROM usuarios;

-- Soma da idade dos usuarios
SELECT SUM(TIMESTAMPDIFF(YEAR, data_nascimento, CURRENT_DATE())) AS media_idade
FROM usuarios;

-- Menor Idade
SELECT MIN(TIMESTAMPDIFF(YEAR, data_nascimento, CURRENT_DATE())) AS menor_idade
FROM usuarios;

-- Maior Idade
SELECT MAX(TIMESTAMPDIFF(YEAR, data_nascimento, CURRENT_DATE())) AS maior_idade
FROM usuarios;

--COUNT
-- Calcula quantidade de reservas por destino --
SELECT COUNT(*), id_destino FROM reservas GROUP BY id_destino;
SELECT *, COUNT(*) AS total_reservas FROM reservas GROUP BY id_destino ;

-- ORNDENAÇÃO DE RESULTADOS
--Colocando por ordem o destino que tem mais reservas
SELECT COUNT(*) AS qtd_reservas, id_destino FROM reservas GROUP BY id_destino ORDER BY qtd_reservas;
--Colocando por ordem o destino que tem MENOS reservas (indicativo é o DESC, de descendente)
SELECT COUNT(*) AS qtd_reservas, id_destino FROM reservas GROUP BY id_destino ORDER BY qtd_reservas DESC;

-- Limit
SELECT *, COUNT(*) AS total_reservas FROM reservas GROUP BY id_destino LIMIT 1 OFFSET 2;

SELECT *, COUNT(*) AS total_reservas FROM reservas GROUP BY id_destino LIMIT 1;

-- Ordenação
SELECT nome
FROM usuarios
ORDER BY nome;

SELECT nome, data_nascimento
FROM usuarios
ORDER BY data_nascimento, nome;

SELECT nome, data_nascimento
FROM usuarios
ORDER BY data_nascimento, nome DESC;




