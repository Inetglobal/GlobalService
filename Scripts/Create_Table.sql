

CREATE TABLE TB_USUARIO(ID_USUARIO INT NOT NULL  PRIMARY KEY IDENTITY,
NM_USUARIO VARCHAR(50),TIPO_USUARIO CHAR(1),SENHA VARCHAR(12));
GO
CREATE TABLE TB_LOGIN(ID_LOGIN INT NOT NULL PRIMARY KEY IDENTITY,
DT_LOGIN DATETIME,DT_LOGOUT DATETIME,ID_USUARIO INT,
CONSTRAINT FOREIGN KEY(ID_USUARIO)REFERENCES TB_USUARIO(ID_USUARIO));
GO
CREATE TABLE TB_UF(ID_UF SMALLINT NOT NULL PRIMARY KEY IDENTITY,SIGLA_UF CHAR(2),
NM_ESTADO VARCHAR(25));
GO
CREATE TABLE TB_CIDADE(ID_CIDADE BIGINT NOT NULL PRIMARY KEY IDENTITY,
ID_UF SMALLINT, NM_CIDADE VARCHAR(50),
CONSTRAINT FOREIGN KEY(ID_UF)REFERENCES TB_UF(ID_UF));
GO
CREATE TABLE TB_ENDERECO(ID_ENDERECO BIGINT NOT NULL PRIMARY KEY IDENTITY,
ID_CIDADE BIGINT,LOGRADOURO VARCHAR(100),NUMERO CHAR(5))
GO
CREATE TABLE TB_EMPRESA(ID_EMPRESA BIGINT NOT NULL PRIMARY KEY IDENTITY,
RAZAO_SOCIAL VARCHAR(100),NM_FANTASIA VARCHAR(100),)