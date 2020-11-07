#---------------------------
#utilização dos comandos DDL #
#---------------------------

#===========================================
# Altera estrutura da tabela : Alter table 
#===========================================

#1.Adicionar um campo
ALTER TABLE medicos ADD telefone INT;

#2.Apagar um campo
ALTER TABLE medicos ADD teste INT;
ALTER TABLE medicos DROP teste;

#3.Alterar o tipo de dado de um campo
ALTER TABLE medicos MODIFY telefone VARCHAR(11);

#4.Renomear um campo e modificar o tipo
ALTER TABLE medicos CHANGE COLUMN telefone fone INT;

#5.Renomear uma tabela
ALTER TABLE medicos_pacientes RENAME TO Atendimentos;
ALTER TABLE Atendimentos RENAME TO medicos_pacientes;

#6.Adicionar uma FOREIGN KEY depois de criar a tabela
CREATE TABLE teste
(
 id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
 descritivo VARCHAR(20) NOT NULL 
)

ALTER TABLE teste ADD id_livro INT;
ALTER TABLE teste ADD CONSTRAINT fk_teste
FOREIGN KEY(id_livro) REFERENCES livros (id_livro);


#================================
# Deleta uma tabela : DROP TABLE  
#================================

DROP TABLE teste; 

#==========================================
# Deleta uma Base de dados : DROP DATABASE  
#==========================================

DROP DATABASE nomebase;


#===================================================
# Visualizar todas AS tabelas em um banco de dados
#===================================================

SHOW TABLES;


#---------------------------
#Utilização dos comandos DML *
#---------------------------

#===========================================
# inserir dados nas tabelas : INSERT INTO 
#===========================================

INSERT INTO tabela (campos da tabela...)
VALUES (valores a serem inseridos....)

#Exemplos1: BASE DE DADOS : clinicamedica

#Tabela : especialidades


#Tabela : exames


#Tabela : medicos


#Tabela : pacientes


#Tabela : medicos_pacientes


#Tabela : pacientes_exames 


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


