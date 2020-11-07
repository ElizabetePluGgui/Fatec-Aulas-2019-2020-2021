#----------------------------------------------
#utilização dos comandos DDL #
#----------------------------------------------
CREATE DATABASE - CREATE TABLE - FOREIGN 
#==========================================
# Altera estrutura da tabela : Alter table 
#=========================================

#1.Adicionar um campo
ALTER TABLE nometabela ADD nomecampo tipo;

ALTER TABLE unidades ADD teste INT;

#2.Apagar um campo

ALTER TABLE unidades DROP teste;

#3.Alterar o tipo de dado de um campo
ALTER TABLE unidades MODIFY telefone VARCHAR(11);
ALTER TABLE unidades MODIFY telefone INT;

#4.Renomear um campo e modificar o tipo
ALTER TABLE unidades CHANGE COLUMN telefone fone INT;
ALTER TABLE unidades CHANGE COLUMN fone telefone INT;

#5.Renomear uma tabela
ALTER TABLE unidades  RENAME TO empresas;
ALTER TABLE empresas RENAME TO unidades;

#6.Adicionar uma FOREIGN KEY depois de criar a tabela
CREATE TABLE teste
(
 id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
 descritivo VARCHAR(20) NOT NULL
)

ALTER TABLE teste ADD id_unidade INT;

ALTER TABLE teste ADD CONSTRAINT fk_teste
FOREIGN KEY(id_unidade) REFERENCES unidades (id_unidade);

#================================
# Deleta uma tabela : DROP TABLE  
#================================

DROP TABLE teste; 

DROP TABLE departamentos;

#==========================================
# Deleta uma Base de dados : DROP DATABASE  
#==========================================

DROP DATABASE clinicamedica;


#===================================================
# Visualizar todas AS tabelas em um banco de dados
#===================================================

SHOW TABLES;


#----------------------------------------
#Utilização dos comandos DML            *
#---------------------------------------
#===========================================
# inserir dados nas tabelas : INSERT INTO 
#===========================================
INSERT INTO tabela (campos da tabela...)
VALUES (valores a serem inseridos....)

#Exemplos1: BASE DE DADOS : rh_animals

#Tabela : Cargos

INSERT INTO cargos (descritivo)
VALUES ("motorista");

INSERT INTO cargos (descritivo)
VALUES ("vendedor"),("diretor"),("supervisor"),("atendente");

#Tabela : Departamentos

INSERT INTO departamentos (descritivo)
VALUES
("Vendas"),
("Administrativo"),
("Compras"),
("Manutenção"),
("TI")


#Tabela : Unidades

INSERT INTO unidades (descritivo,telefone)
VALUES
("Unidade de jahu",992279865),
("Unidade de São Carlos",992789876),
("Unidade da Barra",987653456),
("Unidade de Bauru",987651224)


#Tabela : Projetos

ALTER TABLE projetos ADD bonus INT;

INSERT INTO projetos (descritivo,bonus)
VALUES
("Estruração da Rede",1),
("Otimização de custos",2),
("Ambiental",1),
("Inclusão Social",2)

#Tabela : Funcionarios

INSERT INTO funcionarios 
    (nome,sexo,datan,salario,id_unidade,id_cargo,id_departamento)
VALUES
("Wdson","M","1965-04-03",20000.00,2,4,2),
("Cação","M","1966/06/06",24000.00,3,1,1),
("Vera","F","1954-01-01",21000.00,2,1,1),
("Celinho","M","1963-04-02",18000.00,1,4,4)

#Tabela : projetos_funcionarios

INSERT INTO projetos_funcionarios 
  (id_projeto,id_funcionario,datai,horast)
VALUES
(4,2,"2020-10-01",1),
(2,3,"2020-10-20",2),
(3,4,"2020-11-01",1),
(1,5,"2020-11-02",1)
  
#=======================================
# Deletar dados da tabela : DELETE FROM 
#=======================================

DELETE FROM tabela WHERE (condição)

#Exemplos:


#====================================
# Atualizar dados da tabela : UPDATE  
#====================================

UPDATE tabela SET campo1 = valor1, campo2 = valor2,...
WHERE (condição)

#Exemplos:


