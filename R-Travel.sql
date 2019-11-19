CREATE SEQUENCE rota_id_seq;
CREATE SEQUENCE comentario_id_seq;
CREATE SEQUENCE onibu_id_seq;
CREATE SEQUENCE passageiro_id_seq;
CREATE SEQUENCE passagem_id_seq;
CREATE SEQUENCE cidade_id_seq;

/*Tabela de rotas*/
CREATE TABLE rotas(
	
	ID_Rota INTEGER DEFAULT NEXTVAL('rota_id_seq'),
	nome VARCHAR(50) NOT NULL,
	
	PRIMARY KEY (ID_Rota)
	
);

/*Tabela de comentarios*/
CREATE TABLE comentarios(
	
	ID_Comentario INTEGER DEFAULT NEXTVAL('comentario_id_seq'),
	dataPostagem VARCHAR(50)  NOT NULL,
	descricao VARCHAR(100) NOT NULL,
	
	PRIMARY KEY (ID_Comentario)
	
);

/*Tabela de Onibus*/
CREATE TABLE onibus(

	ID_Onibu INTEGER DEFAULT NEXTVAL('onibu_id_seq'),
	empresa VARCHAR(50) NOT NULL,
	localSaida VARCHAR(50) NOT NULL,
	localDestino VARCHAR(50) NOT NULL,
	modelo VARCHAR(50) NOT NULL,
	maxPassageiro INTEGER NOT NULL,
	motorista VARCHAR(50) NOT NULL,
	horaSaida VARCHAR(50) NOT NULL,
	horaChegada VARCHAR(50) NOT NULL,
	
	
	PRIMARY KEY (ID_Onibu),
	CHECK(maxPassageiro > 0)

);

/*Tabela de passageiros*/
CREATE TABLE passageiros(

	ID_Passageiro INTEGER DEFAULT NEXTVAL('passageiro_id_seq'),
	nome VARCHAR(50) NOT NULL,
	idade INTEGER NOT NULL,
	sexo CHAR(1) NOT NULL,
	
	PRIMARY KEY (ID_Passageiro),
	CHECK(idade > 0),
	CHECK(sexo IN ('M','F'))
);


/*Tabela de passagens*/
CREATE TABLE passagens(

	ID_Passagem INTEGER DEFAULT NEXTVAL('passagem_id_seq'),
	ID_Passageiro INTEGER NOT NULL,
	preco NUMERIC(6,3) NOT NULL,
	validade VARCHAR(50) NOT NULL,
	tipo CHAR(10) NOT NULL,
	
	PRIMARY KEY (ID_Passagem),
	FOREIGN KEY (ID_Passageiro) REFERENCES passageiros (ID_Passageiro),
	CHECK (tipo IN('grátis','meia','inteira')),
	CHECK(preco >= 0)
);

/*Tabela de Cidades*/
CREATE TABLE cidades(

	ID_Cidade INTEGER  DEFAULT NEXTVAL('cidade_id_seq'),
	rodoviaria VARCHAR(50) NOT NULL,
	nome VARCHAR(50) NOT NULL,
	
	PRIMARY KEY (ID_Cidade)
);

/*Tabela de Comentarios em rotas*/
CREATE TABLE comentario_rotas(

	ID_Rota INTEGER NOT NULL,
	ID_Comentario INTEGER NOT NULL,

	FOREIGN KEY (ID_Rota) REFERENCES rotas (ID_Rota),
	FOREIGN KEY (ID_Comentario) REFERENCES comentarios (ID_Comentario)
);

/*Tabela de onibus com suas rotas*/
CREATE TABLE onibus_rotas(

	ID_Rota INTEGER NOT NULL,
	ID_Onibu INTEGER NOT NULL,

	FOREIGN KEY (ID_Rota) REFERENCES rotas (ID_Rota),
	FOREIGN KEY (ID_Onibu) REFERENCES onibus (ID_Onibu)
);

/*Tabela de Onibus e as cidades*/
CREATE TABLE onibus_cidades(

	ID_Cidade INTEGER NOT NULL,
	ID_Onibu INTEGER NOT NULL,

	FOREIGN KEY (ID_Cidade) REFERENCES cidades (ID_Cidade),
	FOREIGN KEY (ID_Onibu) REFERENCES onibus (ID_Onibu)
);

/*Tabela de comentariso de passageiros*/
CREATE TABLE comentarios_passageiros(

	ID_Comentario INTEGER NOT NULL,
	ID_passageiro INTEGER NOT NULL,

	FOREIGN KEY (ID_Comentario) REFERENCES comentarios (ID_Comentario),
	FOREIGN KEY (ID_Passageiro) REFERENCES passageiros (ID_Passageiro)
);