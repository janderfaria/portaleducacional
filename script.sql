CREATE TABLE usuario(
  id serial UNIQUE NOT NULL,
  tipo integer NOT NULL,
  nome varchar(256) NOT NULL,
  estado_fk bigint,
  cidade_fk bigint,
  profissao varchar(50),
  escola varchar(50),
  email varchar(256) UNIQUE NOT NULL,
  senha varchar(12) NOT NULL,
  primary key(id)
);

CREATE TABLE categoria(
  id serial UNIQUE NOT NULL,
  tipo varchar(50) NOT NULL,
  ensino varchar(50) NOT NULL,
  disciplina varchar(50) NOT NULL,
  primary key(id)
);


CREATE TABLE questao(
  id serial UNIQUE NOT NULL,
  usuario_fk BIGINT,
  categoria_fk BIGINT,
  titulo varchar(256) NOT NULL,
  texto text NOT NULL,
  resposta_fk BIGINT,
  imagem_fk BIGINT,
  primary key(id)
);

CREATE TABLE imagem (
	id serial UNIQUE NOT NULL,
	caminho VARCHAR(256) NOT NULL
);

CREATE TABLE resposta (
	id serial UNIQUE NOT NULL,
	texto VARCHAR (1000),
	imagem_fk BIGINT
);

CREATE TABLE cidades (
  id serial UNIQUE NOT NULL,
  nome varchar(100) NOT NULL,
  estados_fk integer NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE estados (
  id serial UNIQUE NOT NULL,
  nome varchar(45) NOT NULL,
  sigla varchar(2) NOT NULL,
  PRIMARY KEY (id, sigla)
);

alter table usuario add constraint usuario_cidade_fk
foreign key (cidade_fk) references cidades(id)
on update cascade on delete cascade;

alter table cidades add constraint cidade_estado_fk
foreign key (estados_fk) references estados(id)
on update cascade on delete cascade;

alter table resposta add constraint resposta_imagem_fk
foreign key (imagem_fk) references imagem(id)
on update cascade on delete cascade;

alter table questao add constraint questao_categoria_fk
foreign key (categoria_fk) references categoria(id)
on delete cascade;

alter table questao add constraint questao_usuario_fk
foreign key (usuario_fk) references usuario(id)
on delete cascade;

alter table questao add constraint questao_resposta_fk
foreign key (resposta_fk) references resposta(id)
on delete cascade;

alter table questao add constraint questao_imagem_fk
foreign key (imagem_fk) references imagem(id)
on delete cascade;

