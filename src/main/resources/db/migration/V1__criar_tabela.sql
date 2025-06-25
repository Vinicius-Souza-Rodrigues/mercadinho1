-- Tabela Produto
CREATE TABLE produto (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    tipo VARCHAR(50),
    quantidade INTEGER NOT NULL,
    preco NUMERIC(10, 2) NOT NULL
);

-- Tabela Carrinho
CREATE TABLE carrinho (
    id SERIAL PRIMARY KEY,
    total NUMERIC(10, 2),
    pagamento VARCHAR(50)
);

-- Tabela de associação Carrinho_Produto
CREATE TABLE carrinho_produto (
    id SERIAL PRIMARY KEY,
    id_carrinho INTEGER NOT NULL,
    id_produtos INTEGER NOT NULL,
    FOREIGN KEY (id_carrinho) REFERENCES carrinho(id) ON DELETE CASCADE,
    FOREIGN KEY (id_produtos) REFERENCES produto(id) ON DELETE CASCADE
);
