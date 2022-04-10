--DROP TABLE rede_sociais, enderecos, usuarios, usuario_rede_sociais;

CREATE TABLE IF NOT EXISTS rede_sociais(
    id BIGSERIAL PRIMARY KEY,
    nome VARCHAR NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS enderecos(
    id BIGSERIAL PRIMARY KEY,
    rua VARCHAR(100) NOT NULL,
    pais VARCHAR(100) NOT NULL,
    cidade VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS usuarios(
    id BIGSERIAL PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR NOT NULL UNIQUE,
    senha VARCHAR NOT NULL,
    endereco_id INTEGER NOT NULL,
    FOREIGN KEY (endereco_id) REFERENCES enderecos("id"),
    FOREIGN KEY (id) REFERENCES rede_sociais("id")
);

CREATE TABLE IF NOT EXISTS usuario_rede_sociais(
    id BIGSERIAL PRIMARY KEY,
    usuario_id INTEGER NOT NULL,
    rede_social_id INTEGER NOT NULL,
    FOREIGN KEY (rede_social_id) REFERENCES rede_sociais("id"),
    FOREIGN KEY (usuario_id) REFERENCES usuarios("id")
);