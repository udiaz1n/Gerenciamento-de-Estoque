
-- EXEMPLOS DE CONSULTAS SIMPLES




-- Listar todos os produtos
SELECT * FROM Produtos;

-- Listar todos os fornecedores
SELECT * FROM Fornecedores;

-- Listar todas as entradas
SELECT * FROM Entradas;

-- Listar todas as saídas
SELECT * FROM Saidas;

-- Chamar a stored procedure para listar produtos em falta
CALL relatorio_produtos_em_falta();

-- Chamar a stored procedure para calcular o valor total do estoque
CALL relatorio_valor_total_estoque();