
-- CRIAÇÃO DAS PROCEDURES





DELIMITER //

-- Stored procedure para listar produtos em falta
CREATE PROCEDURE relatorio_produtos_em_falta()
BEGIN
    SELECT id_produto, nome, quantidade_estoque
    FROM Produtos
    WHERE quantidade_estoque <= 0;
END //

-- Stored procedure para calcular o valor total do estoque
CREATE PROCEDURE relatorio_valor_total_estoque()
BEGIN
    SELECT SUM(preco * quantidade_estoque) AS valor_total
    FROM Produtos;
END //

DELIMITER ;