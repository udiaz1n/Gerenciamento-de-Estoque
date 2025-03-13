
-- CRIA��O DE TODAS AS TABELAS




-- Cria��o da tabela Produtos
CREATE TABLE Produtos (
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10, 2) NOT NULL,
    quantidade_estoque INT DEFAULT 0
);

-- Cria��o da tabela Fornecedores
CREATE TABLE Fornecedores (
    id_fornecedor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    contato VARCHAR(255)
);

-- Cria��o da tabela Entradas
CREATE TABLE Entradas (
    id_entrada INT PRIMARY KEY AUTO_INCREMENT,
    id_produto INT,
    quantidade INT NOT NULL,
    data_entrada DATE NOT NULL,
    id_fornecedor INT,
    FOREIGN KEY (id_produto) REFERENCES Produtos(id_produto),
    FOREIGN KEY (id_fornecedor) REFERENCES Fornecedores(id_fornecedor)
);

-- Cria��o da tabela Saidas
CREATE TABLE Saidas (
    id_saida INT PRIMARY KEY AUTO_INCREMENT,
    id_produto INT,
    quantidade INT NOT NULL,
    data_saida DATE NOT NULL,
    FOREIGN KEY (id_produto) REFERENCES Produtos(id_produto)
);