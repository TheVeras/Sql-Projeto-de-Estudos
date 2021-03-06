/*CREATE TABLES*/

/* TABELA CLIENTE
	IDCLIENTE, NOME, CPF, SEXO

   TABELA CARROS
    IDCARRO, MODELO, MARCA, ID_CLIENTE

   TABELA CORES_CARROS
    IDCORES, COR, ID_CARRO

   TABELA TELEFONE
    IDTELEFONE, NUMERO, TIPO, ID_CLIENTE
*/
CREATE TABLE CLIENTE(
	IDCLIENTE INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(30)NOT NULL,
	SEXO ENUM ('M','F') NOT NULL,
	ID_CARRO INT UNIQUE
);



CREATE TABLE COR(
	IDCOR INT PRIMARY KEY AUTO_INCREMENT,
	COR VARCHAR(30) UNIQUE
);

CREATE TABLE TELEFONE(
	IDTELEFONE INT PRIMARY KEY AUTO_INCREMENT,
	TIPO ENUM ('CEL', 'RES', 'COM')NOT NULL,
	NUMERO VARCHAR(30)NOT NULL,
	ID_CLIENTE INT
);

CREATE TABLE MARCA(
	IDMARCA INT PRIMARY KEY AUTO_INCREMENT,
	MARCA VARCHAR(30) UNIQUE
);

CREATE TABLE CARRO_COR(
	ID_CARRO INT,
	ID_COR INT,
	PRIMARY KEY(ID_CARRO, ID_COR)
);

CREATE TABLE CARRO(
	IDCARRO INT PRIMARY KEY AUTO_INCREMENT,
	MODELO VARCHAR(30)NOT NULL,
	PLACA VARCHAR (30)NOT NULL UNIQUE,
	ID_MARCA INT
);