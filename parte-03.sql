-- 1
SELECT * FROM enderecos;
-- 2
SELECT
e.id, e.rua, e.pais, e.cidade, u.id, u.nome, u.email, u.senha, u.endereco_id
FROM enderecos AS e 
JOIN usuarios AS u 
ON e.id = u.endereco_id;
-- 3
SELECT rs.id, rs.nome, u.id, u.nome, u.email, u.senha, u.endereco_id
FROM rede_sociais AS rs 
JOIN usuario_rede_sociais AS usr
ON usr.rede_social_id = rs.id
JOIN usuarios as u
ON u.id = usr.usuario_id;
-- 4
SELECT rs.id, rs.nome, u.id, u.nome, u.email, u.senha, u.endereco_id, e.id, e.rua, e.pais, e.cidade
FROM rede_sociais AS rs 
JOIN usuario_rede_sociais AS usr
ON rs.id = usr.rede_social_id
JOIN usuarios AS u
ON u.id = usr.usuario_id
JOIN enderecos AS e 
ON u.endereco_id = e.id;
-- 5
SELECT rs.nome, u.nome, u.email, e.cidade
FROM rede_sociais AS rs 
JOIN usuario_rede_sociais AS usr
ON usr.rede_social_id = rs.id
JOIN usuarios AS u 
ON usr.usuario_id = u.id
JOIN enderecos AS e 
ON u.endereco_id = e.id;
-- 6
SELECT rs.nome, u.nome, u.email, e.cidade 
FROM rede_sociais AS rs 
JOIN usuario_rede_sociais AS usr
ON rs.id = usr.rede_social_id
JOIN usuarios AS u
ON u.id = usr.usuario_id
JOIN enderecos AS e 
ON u.endereco_id = e.id 
WHERE rs.nome = 'Youtube';
-- 7
SELECT rs.nome, u.nome, u.email, e.cidade
FROM rede_sociais AS rs
JOIN usuario_rede_sociais AS usr
ON rs.id = usr.rede_social_id
JOIN usuarios AS u
ON u.id = usr.usuario_id
JOIN enderecos AS e
ON e.id = u.endereco_id
WHERE rs.nome = 'Instagram';
-- 8
SELECT rs.nome, u.nome, u.email, e.cidade
FROM rede_sociais AS rs
JOIN usuario_rede_sociais as usr
ON rs.id = usr.rede_social_id
JOIN usuarios AS u
ON usr.usuario_id = u.id
JOIN enderecos AS e
ON e.id = u.endereco_id
WHERE rs.nome = 'Facebook';
-- 9
SELECT rs.nome, u.nome, u.email, e.cidade
FROM rede_sociais AS rs
JOIN usuario_rede_sociais AS usr
ON rs.id = usr.rede_social_id
JOIN usuarios AS u
ON u.id = usr.usuario_id
JOIN enderecos AS e
ON e.id = u.endereco_id
WHERE rs.nome = 'TikTok';
-- 10
SELECT rs.nome, u.nome, u.email, e.cidade
FROM rede_sociais AS rs
JOIN usuario_rede_sociais AS usr
ON rs.id = usr.rede_social_id
JOIN usuarios AS u
ON u.id = usr.usuario_id
JOIN enderecos AS e
ON e.id = u.endereco_id
WHERE rs.nome = 'Twitter';
