#02-10-2020

# Criação de Base de dados - Biblioteca

CREATE DATABASE biblioteca_animals;

USE biblioteca_animals;

# Criação das tabelas

CREATE TABLE categorias
(
  id_categoria INT NOT NULL AUTO_INCREMENT,
  descritivo VARCHAR(30) NOT NULL,
  PRIMARY KEY (id_categoria) 
);

CREATE TABLE nacionalidades
(
  id_nacionalidade INT NOT NULL AUTO_INCREMENT,
  descritivo VARCHAR(40) NOT NULL, 
  PRIMARY KEY(id_nacionalidade)
);

CREATE TABLE bibliotecas
(
  id_biblioteca INT NOT NULL AUTO_INCREMENT,
  telefone INT NOT NULL,
  logradouro VARCHAR(40) NOT NULL,
  bairro VARCHAR(30) NOT NULL,
  cidade VARCHAR(40) NOT NULL,
  PRIMARY KEY(id_biblioteca)
);

CREATE TABLE livros
(
  id_livro INT NOT NULL AUTO_INCREMENT,
  isbn INT UNIQUE NOT NULL,
  ano INT NOT NULL,
  titulo VARCHAR(40) NOT NULL,  
  id_categoria INT NOT NULL,
  id_biblioteca INT NOT NULL,
  PRIMARY KEY (id_livro),
  FOREIGN KEY (id_categoria) REFERENCES categorias (id_categoria),
  FOREIGN KEY (id_biblioteca) REFERENCES bibliotecas (id_biblioteca)
);


CREATE TABLE autores
(
 id_autor INT NOT NULL AUTO_INCREMENT,
 nome VARCHAR(40) NOT NULL,
 id_nacionalidade INT NOT NULL,
 PRIMARY KEY (id_autor),
 FOREIGN KEY (id_nacionalidade) REFERENCES nacionalidades 
             (id_nacionalidade) 
);

CREATE TABLE livros_autores
(
  id_livros_autores INT NOT NULL AUTO_INCREMENT,
  id_livro INT NOT NULL,
  id_autor INT NOT NULL,
  PRIMARY KEY (id_livros_autores),
  FOREIGN KEY (id_livro) REFERENCES livros (id_livro),
  FOREIGN KEY (id_autor) REFERENCES autores (id_autor)
);

/* Exercicio : Clinica Medica */

# Criação da BD
CREATE DATABASE clinicamedica;

# Ativação do BD
USE clinicamedica;

# Criação das tabelas

CREATE TABLE especialidades
(
 id_especialidade INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
 descritivo VARCHAR(40) NOT NULL
);


CREATE TABLE exames
(
  id_exame INT NOT NULL AUTO_INCREMENT,
  descritivo VARCHAR(30) NOT NULL,
  valor DECIMAL(6,2) NOT NULL,
  PRIMARY KEY (id_exame)
);


CREATE TABLE medicos
(
 id_medico INT NOT NULL AUTO_INCREMENT,
 nome VARCHAR(40) NOT NULL,
 crm INT UNIQUE NOT NULL,
 id_especialidade INT NOT NULL,
 PRIMARY KEY (id_medico),
 FOREIGN KEY (id_especialidade) 
           REFERENCES especialidades (id_especialidade)
);

CREATE TABLE pacientes
(
 id_paciente INT NOT NULL AUTO_INCREMENT,
 nome VARCHAR(40) NOT NULL,
 cpf INT UNIQUE NOT NULL,
 datan DATE NOT NULL,
 logradouro VARCHAR(40) NOT NULL,
 bairro VARCHAR(40),
 cidade VARCHAR(40) NOT NULL,
 uf CHAR(2) NOT NULL,
 PRIMARY KEY (id_paciente)	
);

CREATE TABLE medicos_pacientes
(
 id_med_pac INT NOT NULL AUTO_INCREMENT,
 id_medico INT NOT NULL,
 id_paciente INT NOT NULL,
 dataa DATE NOT NULL,
 horario TIME NOT NULL,
 analise VARCHAR(300) NOT NULL,
 PRIMARY KEY (id_med_pac),
 FOREIGN KEY (id_medico) REFERENCES medicos (id_medico),
 FOREIGN KEY (id_paciente) REFERENCES pacientes (id_paciente)
);


CREATE TABLE pacientes_exames
(
 id_exam_pac INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
 id_paciente INT NOT NULL,
 id_exame INT NOT NULL,
 datae DATE NOT NULL,
 horarioe TIME NOT NULL,
 FOREIGN KEY (id_paciente) REFERENCES pacientes (id_paciente),
 FOREIGN KEY (id_exame) REFERENCES exames (id_exame)
);
