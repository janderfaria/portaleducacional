CREATE TABLE cidades
(
  id serial NOT NULL,
  nome character varying,
  estado_fk integer,
  CONSTRAINT pk_cidade_id PRIMARY KEY (id),
  CONSTRAINT fk_estado_id FOREIGN KEY (estado_fk)
      REFERENCES estados (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE CASCADE
);

CREATE TABLE estados
(
  id serial NOT NULL,
  nome character varying,
  sigla character varying,
  CONSTRAINT pk_estados_id PRIMARY KEY (id)
);

CREATE TABLE disciplina
(
  id serial NOT NULL,
  nome character varying(100),
  CONSTRAINT disciplina_pkey PRIMARY KEY (id)
);

CREATE TABLE imagem
(
  id serial NOT NULL,
  img bytea NOT NULL,
  CONSTRAINT imagem_pkey PRIMARY KEY (id)
);

CREATE TABLE nivel
(
  id serial NOT NULL,
  nome character varying(100),
  CONSTRAINT nivel_pkey PRIMARY KEY (id)
);

CREATE TABLE nivel_disciplina
(
  nivel_fk bigint NOT NULL,
  disciplina_fk bigint NOT NULL,
  CONSTRAINT nivel_disciplina_pkey PRIMARY KEY (nivel_fk, disciplina_fk),
  CONSTRAINT nivel_disciplina_disciplina_fk FOREIGN KEY (disciplina_fk)
      REFERENCES disciplina (id) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT nivel_disciplina_nivel_fk FOREIGN KEY (nivel_fk)
      REFERENCES nivel (id) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE questao
(
  id serial NOT NULL,
  usuario_fk bigint,
  titulo character varying(256),
  texto text,
  resposta_fk bigint,
  imagem_fk bigint,
  tipo bigint,
  disciplina_fk bigint,
  nivel_fk bigint,
  status integer,
  nota integer,
  qtde_avaliacoes integer,
  CONSTRAINT questao_pkey PRIMARY KEY (id)
);

CREATE TABLE resposta
(
  id serial NOT NULL,
  texto text,
  imagem_fk bigint,
  CONSTRAINT resposta_pkey PRIMARY KEY (id)
);

CREATE TABLE usuario
(
  id serial NOT NULL,
  tipo integer NOT NULL,
  nome character varying(256) NOT NULL,
  estado_fk bigint,
  cidade_fk bigint,
  profissao character varying(50),
  escola character varying(50),
  email character varying(256) NOT NULL,
  senha character varying(64) NOT NULL,
  CONSTRAINT usuario_pkey PRIMARY KEY (id),
  CONSTRAINT usuario_email_key UNIQUE (email)
);