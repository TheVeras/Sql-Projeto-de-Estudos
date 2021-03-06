/*CRIANDO BANCO DE DADOS*/
CREATE DATABASE CONSULTORIO;

/*LOGANDO NO BANCO*/
USE CONSULTORIO;

/*CRIANDO TABELAS*/
/*CRIANDO TABELA PACIENTE*/
CREATE TABLE PACIENTE(
	IDPACIENTE INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR (30),
	SEXO ENUM('M','F'),
	EMAIL VARCHAR(30),
	NASCIMENTO DATE
);

/*CRIANDO TABELA MEDICO*/
/*ESPECIALIDADE PODERIA ESTAR EM OUTRA TABELA, POREM NESSA TABELA O MEDICO SO TERA UMA ESPECIALIZAÇÃO*/
CREATE TABLE MEDICO(
	IDMEDICO INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(30),
	SEXO ENUM('M','F'),
	ESPECIALIDADE VARCHAR(30),
	FUNCIONARIO ENUM('S','N')
);

/*CRIANDO TABELA HOSPITAL*/
/*ENDEREÇO PODERIA SER OUTRA TABELA TAMBÉM, MAS AQUI O HOSPITAL POSSUI APENAS 1 ENDEREÇO
E NÃO HÁ A NECESSIDADE DE UMA OUTRA TABELA*/
CREATE TABLE HOSPITAL(
	IDHOSPITAL INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(30),
	BAIRRO VARCHAR(30),
	CIDADE VARCHAR(30),
	ESTADO CHAR(2)
);

/*CRIANDO TABELA CONSULTA*/
CREATE TABLE CONSULTA(
	IDCONSULTA INT PRIMARY KEY AUTO_INCREMENT,
	ID_PACIENTE INT,
	ID_MEDICO INT,
	ID_HOSPITAL INT,
	DATA DATETIME,
	DIAGNOSTICO VARCHAR(50)
);

/*CRIANDO TABELA INTERNACAO*/
CREATE TABLE INTERNACAO(
	IDINTERNACAO INT PRIMARY KEY AUTO_INCREMENT,
	ENTRADA DATETIME,
	QUARTO INT,
	SAIDA DATETIME,
	OBSERVACOES VARCHAR(50),
	ID_CONSULTA INT UNIQUE
);
