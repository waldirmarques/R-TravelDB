/*Inserte de rotas*/
INSERT INTO rotas (nome) VALUES ('Baia da traição/Campina Grande');
INSERT INTO rotas (nome) VALUES ('Baia da traição/João Pessoa');

/*Inserte de comentarios*/
INSERT INTO comentarios (dataPostagem, descricao) VALUES 
    ('11/11/2019','Aqui na rodoviaria de Rio tinto o ônibus sempre chega 5 minutos atrasado');

INSERT INTO comentarios (dataPostagem, descricao) VALUES 
    ('12/08/2019','Aqui na rodoviaria de Mamanguape o ônibus chega no horario');

INSERT INTO comentarios (dataPostagem, descricao) VALUES 
    ('13/10/2019','As passagens dos onibus estão muito cara, não vale a pena andar neles');

INSERT INTO comentarios (dataPostagem, descricao) VALUES 
    ('14/11/2019','O onibus que vem da baia sempre para na frente a UFPB');

INSERT INTO comentarios (dataPostagem, descricao) VALUES 
    ('15/12/2019','O onibus que vai para JAMPA as 14 hora lá de Rio Tinto não tem arcondicionado');

/*Inserte de onibus*/
INSERT INTO onibus(empresa, localSaida,localDestino,
    modelo, maxPassageiro, motorista, horaSaida, horaChegada) VALUES
    ('Viação Rio Tinto','Baia da Traição','Campina Grande','Mercedes-Bens',50
	 ,'João Rafael da Silva','6:00','11:30');

INSERT INTO onibus(empresa, localSaida,localDestino,
    modelo, maxPassageiro, motorista, horaSaida, horaChegada) VALUES
    ('Viação Rio Tinto','Baia da Traição','Campina Grande',
    'Mercedes-Bens',50,'Bruco Dantas da Silva','16:30','22:00');


INSERT INTO onibus(empresa, localSaida,localDestino,
    modelo, maxPassageiro, motorista, horaSaida, horaChegada) VALUES
    ('Viação Rio Tinto','Baia da Traição','João Pessoa',
    'Mercedes-Bens',50,'Fernando Gabriel','6:30','09:00');

INSERT INTO onibus(empresa, localSaida,localDestino,
    modelo, maxPassageiro, motorista, horaSaida, horaChegada) VALUES
    ('Viação Rio Tinto','Baia da Traição','Rio Tinto',
    'Mercedes-Bens',50,'Emerson Ruan','6:30','07:10');

INSERT INTO onibus(empresa, localSaida,localDestino,
    modelo, maxPassageiro, motorista, horaSaida, horaChegada) VALUES
    ('Viação Rio Tinto','Baia da Traição','Mamanguape',
    'Mercedes-Bens',50,'Emerson Ruan','6:30','07:30');

/*Inserte de passageiros*/
INSERT INTO passageiros (nome, idade, sexo) VALUES
    ('Waldir Marques', 21, 'M');

INSERT INTO passageiros (nome, idade, sexo) VALUES
    ('Maria Fernada', 18, 'F');

INSERT INTO passageiros (nome, idade, sexo) VALUES
    ('Magno Fidelis', 24, 'M');

INSERT INTO passageiros (nome, idade, sexo) VALUES
    ('Adrielly Silva', 20, 'F');

INSERT INTO passageiros (nome, idade, sexo) VALUES
    ('Mariquina', 62, 'F');
	
/*inserte passagens*/
INSERT INTO passagens (preco, ID_Passageiro, validade, tipo) VALUES
    (25.30,3,'13/11/2019','inteira');

INSERT INTO passagens (preco, ID_Passageiro, validade, tipo) VALUES
    (15.00,2,'13/11/2019','inteira');

INSERT INTO passagens (preco, ID_Passageiro, validade, tipo) VALUES
    (7.50, 1,'13/11/2019','meia');

INSERT INTO passagens (preco, ID_Passageiro, validade, tipo) VALUES
    (30.00, 2, '13/11/2019','inteira');

INSERT INTO passagens (preco, ID_Passageiro, validade, tipo) VALUES
    (0.1, 5, '13/11/2019','grátis');

/*Inserte Passageiros*/
INSERT INTO cidades (rodoviaria,nome) VALUES
    ('São Sebastião', 'Rio Tinto');

INSERT INTO cidades (rodoviaria,nome) VALUES
    ('Presitente Gaisel', 'Guarabirra');

INSERT INTO cidades (rodoviaria,nome) VALUES
    ('São Clemente', 'Itapororoca');

INSERT INTO cidades (rodoviaria,nome) VALUES
    ('Nova cruz', 'Alagoinha');

INSERT INTO cidades (rodoviaria,nome) VALUES
    ('', 'Marcação');

/*Inserte Comentarios em rotas*/
INSERT INTO comentario_rotas (ID_Rota, ID_Comentario) VALUES (2,5);
INSERT INTO comentario_rotas (ID_Rota, ID_Comentario) VALUES (1,4);
INSERT INTO comentario_rotas (ID_Rota, ID_Comentario) VALUES (1,1);
INSERT INTO comentario_rotas (ID_Rota, ID_Comentario) VALUES (1,2);
INSERT INTO comentario_rotas (ID_Rota, ID_Comentario) VALUES (2,3);

/*Inserte de onibus_rotas*/
INSERT INTO onibus_rotas (ID_Rota,ID_Onibu) VALUES (1,1);
INSERT INTO onibus_rotas (ID_Rota,ID_Onibu) VALUES (1,2);
INSERT INTO onibus_rotas (ID_Rota,ID_Onibu) VALUES (2,3);
INSERT INTO onibus_rotas (ID_Rota,ID_Onibu) VALUES (1,4);
INSERT INTO onibus_rotas (ID_Rota,ID_Onibu) VALUES (2,5);

/*Inserte de onibus_cidades*/
INSERT INTO onibus_cidades(ID_Cidade,ID_Onibu) VALUES (1,1);
INSERT INTO onibus_cidades(ID_Cidade,ID_Onibu) VALUES (2,2);
INSERT INTO onibus_cidades(ID_Cidade,ID_Onibu) VALUES (3,3);
INSERT INTO onibus_cidades(ID_Cidade,ID_Onibu) VALUES (4,4);
INSERT INTO onibus_cidades(ID_Cidade,ID_Onibu) VALUES (5,5);

/*Inserte de comentarios_passageiros*/
INSERT INTO comentarios_passageiros(ID_Comentario,ID_passageiro) VALUES (1,2);
INSERT INTO comentarios_passageiros(ID_Comentario,ID_passageiro) VALUES (2,1);
INSERT INTO comentarios_passageiros(ID_Comentario,ID_passageiro) VALUES (3,2);
INSERT INTO comentarios_passageiros(ID_Comentario,ID_passageiro) VALUES (4,4);
INSERT INTO comentarios_passageiros(ID_Comentario,ID_passageiro) VALUES (5,3);