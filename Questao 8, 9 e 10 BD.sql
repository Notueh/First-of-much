CREATE DATABASE QUESTAO8;

USE QUESTAO8;
CREATE TABLE ENDERECO (
ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
RUA VARCHAR(30),
CEP VARCHAR(8),
BAIRRO VARCHAR(100),
CIDADE VARCHAR(100),
UF_ESTADO VARCHAR(2),
COMPLEMENTO VARCHAR(255)
);

CREATE TABLE EDITORA (
ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
NOME VARCHAR(100),
ID_ENDERECO INT NOT NULL,
FOREIGN KEY (ID_ENDERECO) REFERENCES ENDERECO (ID)
);

CREATE TABLE AUTOR (
ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
NOME VARCHAR(100),
ID_ENDERECO INT NOT NULL,
FOREIGN KEY (ID_ENDERECO) REFERENCES ENDERECO (ID)
);

CREATE TABLE LIVRO (
ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
TITULO VARCHAR(100),
ID_EDITORA INT,
ID_AUTOR INT,
CATEGORIA VARCHAR(30),
FOREIGN KEY (ID_EDITORA) REFERENCES EDITORA (ID),
FOREIGN KEY (ID_AUTOR) REFERENCES AUTOR (ID)
);

CREATE TABLE LEITOR (
ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
NOME VARCHAR(100),
ID_ENDERECO INT NOT NULL,
FOREIGN KEY (ID_ENDERECO) REFERENCES ENDERECO (ID)
);

CREATE TABLE EMPRESTIMO (
ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
DATA_EMPRESTIMO DATE,
ID_LEITOR INT NOT NULL,
ID_LIVRO INT NOT NULL,
FOREIGN KEY (ID_LEITOR) REFERENCES LEITOR (ID),
FOREIGN KEY (ID_LIVRO) REFERENCES LIVRO (ID)
);

INSERT INTO ENDERECO (RUA, CEP, BAIRRO, CIDADE, UF_ESTADO, COMPLEMENTO)
VALUES ("Travessa Penha", "88305405","Barra do Rio", "Itajaí", "SC", "N/A"),
("Rua Lúcia Antunes", "13617734", "Jardim Ana Lúcia", "Leme", "SP", "N/A"),
("Rua Primeiro de Abril", "65095260", "Tibiri", "São Luís", "MA", "N/A"),
("Rua José Nicolau dos Santos", "63043130", "Frei Damião", "Juazeiro do Norte", "CE", "N/A"),
("Rua 7", "75907025","Vila Promissão", "Rio Verde", "GO", "N/A"),
("Rua Monte Alegre", "74946651", "Setor Belo Horizonte", "Aparecida de Goiânia", "GO", "N/A");

INSERT INTO EDITORA (NOME, ID_ENDERECO)
VALUES ("Editora The Obsequious", "4"),
("Jasper Editora", "2"),
("Editora Off", "5"),
("Editora Adie", "3"),
("Parched Editora", "2");

INSERT INTO AUTOR (NOME, ID_ENDERECO)
VALUES ("Renata Lívia Drumond", "5"),
("Daniel Jorge Melo", "2"),
("Jaqueline Sara Nicole Galvão", "1"),
("Lorenzo Juan Mateus Moura", "1"),
("José Augusto Bernardes", "4");

INSERT INTO LIVRO (TITULO, ID_EDITORA, ID_AUTOR, CATEGORIA)
VALUES ("Criptografia e Segurança de Redes", "2", "1", "INFORMATICA"),
("Engenharia de Software", "5", "5", "INFORMATICA"),
("História da Matemática", "3", "4", "MATEMATICA"),
("Buracos Negros", "1", "3", "CIENCIAS"),
("A  Primeira Guerra Mundial", "4", "2", "HISTORIA");

INSERT INTO LEITOR (NOME, ID_ENDERECO)
VALUES ("Kevin Filipe Melo", "1"),
("José Carlos Eduardo Novaes", "2"),
("Luís Thales Moura", "3"),
("Luiz Bryan Benício ", "4"),
("Julia  Alice Nogueira", "5");

INSERT INTO EMPRESTIMO (DATA_EMPRESTIMO, ID_LEITOR, ID_LIVRO)
VALUES ("2021-05-04", "1", "1"),
("2021-05-08", "2", "5"),
("2021-05-15", "5", "1"),
("2021-05-18", "3", "2"),
("2021-05-25", "4", "3");

SELECT LEITOR.NOME, ENDERECO.RUA,ENDERECO.CEP, ENDERECO.BAIRRO, ENDERECO.CIDADE, EMPRESTIMO.DATA_EMPRESTIMO
FROM LEITOR
INNER JOIN ENDERECO ON ENDERECO.ID = LEITOR.ID_ENDERECO
INNER JOIN EMPRESTIMO ON LEITOR.ID = EMPRESTIMO.iD_LEITOR
WHERE EMPRESTIMO.ID_LIVRO = "1"

SELECT * 
FROM EMPRESTIMO
WHERE DATA_EMPRESTIMO > "2021-05-01" AND DATA_EMPRESTIMO < "2021-05-31"
