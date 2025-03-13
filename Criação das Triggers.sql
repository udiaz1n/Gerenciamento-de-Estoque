
-- CRIA��O DAS TRIGGERS


-- Trigger para atualizar o estoque ap�s uma entrada
CREATE TRIGGER atualizar_estoque_entrada
AFTER INSERT ON Entradas
FOR EACH ROW
UPDATE Produtos
SET quantidade_estoque = quantidade_estoque + NEW.quantidade
WHERE id_produto = NEW.id_produto;

-- Trigger para atualizar o estoque ap�s uma sa�da
CREATE TRIGGER atualizar_estoque_saida
AFTER INSERT ON Saidas
FOR EACH ROW
UPDATE Produtos
SET quantidade_estoque = quantidade_estoque - NEW.quantidade
WHERE id_produto = NEW.id_produto;