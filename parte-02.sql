INSERT INTO enderecos
    (rua, pais, cidade)
VALUES
    ('Avenida Higienópolis', 'Brasil', 'Londrina'),
    ('Avenida Paulista', 'Brasil', 'São Paulo'),
    ('Rua Marcelino Champagnat', 'Brasil', 'Curitiba')


INSERT INTO rede_sociais
    (nome)
VALUES
    ('Youtube'),
    ('Twitter'),
    ('Instagram'),
    ('Facebook'),
    ('TikTok')
    

INSERT INTO usuarios
    (nome, email, senha, endereco_id)
VALUES
    ('Cauan', 'cauan@exemple.com', 1234, (SELECT id FROM enderecos WHERE rua LIKE '%Paulista%' AND cidade = 'São Paulo')),
    ('Chrystian', 'chrystian@exemple.com', 4321, (SELECT id FROM enderecos WHERE rua LIKE '%Marcelino%' AND cidade = 'Curitiba')),
    ('Matheus', 'matheus@exemple.com', 3214, (SELECT id FROM enderecos WHERE rua LIKE '%Higienópolis%' AND cidade = 'Londrina'))


INSERT INTO usuario_rede_sociais
    (usuario_id, rede_social_id)
VALUES
    ((SELECT id from usuarios WHERE nome = 'Cauan'),     (SELECT id from rede_sociais WHERE nome = 'Youtube')),
    ((SELECT id from usuarios WHERE nome = 'Chrystian'), (SELECT id from rede_sociais WHERE nome = 'Youtube')),
    ((SELECT id from usuarios WHERE nome = 'Matheus'),   (SELECT id from rede_sociais WHERE nome = 'Youtube')),
    ((SELECT id from usuarios WHERE nome = 'Chrystian'), (SELECT id from rede_sociais WHERE nome = 'Twitter')),
    ((SELECT id from usuarios WHERE nome = 'Cauan'),     (SELECT id from rede_sociais WHERE nome = 'Twitter')),
    ((SELECT id from usuarios WHERE nome = 'Matheus'),   (SELECT id from rede_sociais WHERE nome = 'Instagram')),
    ((SELECT id from usuarios WHERE nome = 'Matheus'),   (SELECT id from rede_sociais WHERE nome = 'Facebook')),
    ((SELECT id from usuarios WHERE nome = 'Chrystian'), (SELECT id from rede_sociais WHERE nome = 'Instagram')),
    ((SELECT id from usuarios WHERE nome = 'Cauan'),     (SELECT id from rede_sociais WHERE nome = 'TikTok'))
