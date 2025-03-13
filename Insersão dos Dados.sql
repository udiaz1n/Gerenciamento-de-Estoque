
-- INSERÇÃO DOS DADOS (EXEMPLOS)




-- Inserindo produtos
INSERT INTO Produtos (nome, descricao, preco) VALUES
('Notebook', 'Notebook Dell XPS 13', 5000.00),
('Mouse', 'Mouse Logitech MX Master 3', 300.00),
('Teclado', 'Teclado Mecânico HyperX Alloy FPS', 400.00);

-- Inserindo fornecedores
INSERT INTO Fornecedores (nome, contato) VALUES
('Fornecedor A', 'contato@fornecedora.com'),
('Fornecedor B', 'contato@fornecedorb.com');

-- Inserindo entradas
INSERT INTO Entradas (id_produto, quantidade, data_entrada, id_fornecedor) VALUES
(1, 10, '2024-01-10', 1),
(2, 50, '2024-01-11', 2),
(3, 20, '2024-01-12', 1);

-- Inserindo saídas
INSERT INTO Saidas (id_produto, quantidade, data_saida) VALUES
(1, 5, '2024-01-15'),
(2, 10, '2024-01-16');