CREATE DATABASE rh_animals;

CREATE TABLE unidades
(
  id_unidade INT NOT NULL AUTO_INCREMENT,
  descritivo VARCHAR(30) NOT NULL,
  PRIMARY KEY (id_unidade)
)

ALTER TABLE unidades ADD telefone INT;

CREATE TABLE departamentos
(
 id_departamento INT NOT NULL AUTO_INCREMENT,
 descritivo VARCHAR(40) NOT NULL,
 PRIMARY KEY (id_departamento)
)


CREATE TABLE cargos
(
  id_cargo INT NOT NULL AUTO_INCREMENT,
  descritivo VARCHAR(30) NOT NULL,
  PRIMARY KEY (id_cargo)
)

CREATE TABLE projetos
(
 id_projeto INT NOT NULL AUTO_INCREMENT,
 descritivo VARCHAR(30) NOT NULL,
 PRIMARY KEY (id_projeto)
)


CREATE TABLE funcionarios
(
 id_funcionario INT NOT NULL AUTO_INCREMENT,
 nome VARCHAR(40) NOT NULL,
 sexo ENUM("M","F"),
 datan DATE NOT NULL,
 salario DECIMAL(8,2) NOT NULL,
 id_unidade INT NOT NULL,
 id_cargo INT NOT NULL,
 id_departamento INT NOT NULL,
 PRIMARY KEY (id_funcionario),
 FOREIGN KEY (id_unidade) REFERENCES unidades (id_unidade),
 FOREIGN KEY (id_cargo) REFERENCES cargos (id_cargo),
 FOREIGN KEY (id_departamento) REFERENCES departamentos (id_departamento)
)

CREATE TABLE projetos_funcionarios 
(
  id_prj_func INT NOT NULL AUTO_INCREMENT,
  id_projeto INT NOT NULL,
  id_funcionario INT NULL,
  datai DATE NOT NULL,
  horast DECIMAL(3,2) NOT NULL,
  PRIMARY KEY (id_prj_func),
  FOREIGN KEY (id_projeto) REFERENCES projetos (id_projeto),
  FOREIGN KEY (id_funcionario) REFERENCES funcionarios (id_funcionario)  
  
)

