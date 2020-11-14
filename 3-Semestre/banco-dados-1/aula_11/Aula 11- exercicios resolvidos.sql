#--------------------------------------------
#Utilização dos comandos do grupo DML       #
#--------------------------------------------

#=======================================
# Deletar dados da tabela : DELETE FROM 
#=======================================

DELETE FROM tabela WHERE (condição)

#Exemplos:


/*Delete todos os registros da tabela cargos */

DELETE FROM cargos;

/*Delete o registro da tabela cargos cujo id_cargo 
seja igual a 5. */

DELETE FROM cargos WHERE id_cargo = 5
           
DELETE FROM funcionarios WHERE id_funcionario = 2           
           
/*Delete todos os projetos nos quais o funcionario 2 
participa.*/
      
DELETE FROM projetos_funcionarios WHERE id_funcionario=2

#====================================
# Atualizar dados da tabela : UPDATE  
#====================================

UPDATE tabela SET campo1 = valor1, campo2 = valor2,...
WHERE (condição)

#Exemplos:

/*Atualize os valores de todos os salarios em 5%*/
UPDATE funcionarios SET salario = salario + (salario*0.05);

/*Atualize o valor dos salarios dos funcionarios em 5% 
cujos salarios estão abaixo de R$ 21.000,00. */

UPDATE funcionarios SET salario = salario + (salario*0.05)
WHERE salario < 21000.00 

/*Atualize o valor dos salarios dos funcionarios em 5% 
cujos salarios estão entre o valor de R$ 20000,00 e R$ 23000,00*/

UPDATE funcionarios SET salario = salario + (salario*0.05)
WHERE salario BETWEEN 20000.00 AND 23000.00

/*Atualize o valor dos salarios dos funcionarios em 5% 
cujos salarios são iguais a 15000 e 18000 */

UPDATE funcionarios SET salario = salario + (salario*0.05)
WHERE salario IN (15000,18000)
      
/*Atualize as informações dos campos data de nascimento 
e nome do funcionario cujo id_funcionario seja igual a 2*/

UPDATE funcionarios SET datan = "1965-04-04", nome="Edson"
WHERE id_funcionario = 2 

#=========================================
# Consultar os dados das tabelas : SELECT  
#=========================================

SELECT campo1, campo2, ..., expressões, 
FROM tabela(s)
WHERE (condições)
GROUP BY (agrupamento)
HAVING (condições)
ORDER BY (classificação dos dados)

SELECT * FROM
projetos 

SELECT id_projeto, descritivo
FROM projetos

SELECT descritivo,bonus, id_projeto "Codigo"
FROM projetos

SELECT id_projeto "Codigo",descritivo "Nome do Projeto" 
FROM projetos;



/*criar uma query que liste todos os funcionarios de 
acordo com o seguinte layout */

Codigo     Nome      Salario      Sexo

SELECT id_funcionario "Código", nome, salario, sexo
FROM funcionarios;

/*criar uma query que liste todos os funcionarios de 
acordo com o seguinte layout. Somente os funcionarios 
do sexo feminino. Concatenar o salario com R$ */

SELECT id_funcionario "Código", nome, CONCAT("R$ ",salario) "Salario"
       ,sexo 
FROM funcionarios 
WHERE sexo = "F"

/*criar uma query que liste todos os funcionarios de 
acordo com o seguinte layout.Somente para funcionarios
com salario entre 15000 e 20000 e cujo ano de nascimento
seja abaixo de 1965. Concatenar o salario com R$, 
Ordenar pelo nome do funcionario */

SELECT id_funcionario "Codigo", nome, CONCAT("R$ ",salario) "Salario",
       sexo, YEAR(datan) "Ano de Nasc",MONTH(datan) "Mês de nasc."
FROM funcionarios 
WHERE salario BETWEEN 15000 AND 20000 AND YEAR(datan) <= 1965
AND MONTH(datan) = 4
ORDER BY nome DESC


/*criar uma query que liste todos os funcionarios de 
acordo com o seguinte layout.Somente para funcionarios
com salario entre 15000 e 20000. Concatenar o salario com R$, 
Ordenar pelo nome do funcionario */

SELECT id_funcionario "Codigo", nome, CONCAT("R$ ",salario) "Salario",
       sexo, YEAR(datan) "Ano de Nasc",MONTH(datan) "Mês de nasc."
FROM funcionarios 
WHERE salario NOT BETWEEN 15000 AND 20000 
ORDER BY nome DESC


/*criar uma query que liste todos os funcionarios de 
acordo com o seguinte layout.Somente para funcionarios
com salario são diferentes de 18900 e 21000. Concatenar o salario com R$, 
Ordenar pelo nome do funcionario */

SELECT id_funcionario "Codigo", nome, CONCAT("R$ ",salario) "Salario",
       sexo, YEAR(datan) "Ano de Nasc",MONTH(datan) "Mês de nasc."
FROM funcionarios 
WHERE salario NOT IN (18900.00, 21000.00)
ORDER BY nome DESC



/*criar uma query que liste todos os funcionarios de 
acordo com o seguinte layout.Somente para funcionarios
com sobrenome oliveira.Ordenar pelo nome do funcionario */

Código    Nome

SELECT id_funcionario "Codigo", nome, salario, sexo
FROM funcionarios 
WHERE nome LIKE "%Oliveira" 
ORDER BY sexo,salario


/*criar uma query que liste todos os funcionarios de 
acordo com o seguinte layout.Formatar a data dd/mm/AAAA.
Ordenar pelo nome do funcionario 

Nome       Data de Nascimento         */

SELECT nome, DATE_FORMAT(datan,"%d/%m/%Y") "Data de Nascimento " 
FROM funcionarios 


#==============================================================
USE clinica_medicax
#Exercicios: clinicamedica

/*Elabore um relatório que apresente as seguintes informações
dos pacientes conforme layout abaixo.A data de nascimento deverá
ser formatada dd/mm/AAAA.
      
Código       Nome        Sexo        Data Nascimento */

SELECT id_paciente "Codigo", nome, sexo, 
       DATE_FORMAT(datan,"%d/%m/%Y") "Data de Nascimento"
FROM pacientes 
       	
      
/*Elabore um relatório que apresente uma tabela de preços de 
todos os exames. Os preços devem apresentar o símbolo R$*/
      
Codigo 	 Descritivo    Preço Exame
                        R$ 50,00

SELECT id_exame "Codigo", descritivo, CONCAT("R$ ",valor) "Valor"
FROM exames
                 
                  
                           
                           
                                
/*Elabore um relatório que apresente uma tabela de preços de 
todos os exames cujos valores sejam maior do que R$ 80,00. 
Os preços devem apresentar o símbolo R$.*/
      
Codigo          Descritivo          Preço Exame
		             	    
      			   
				       	
/*Elabore um relatório que apresente as seguintes informações 
dos pacientes do sexo masculino que tenham nascido antes do ano
de 1980. A listagem deverá ser classificada em ordem alfabetica*/
      
Nome	   Sexo 	Ano de Nascimento
     
                               
	 
/*Elabore uma consulta que liste todos os medicos do sexo masculino*/

Código          Nome   	    sexo

     
/*Elabore uma consulta que liste todos os exames cujo preço
esteja entre R$ 50,00 e R$ 150,00 */
       
Código   Descritivo     Preço Exame
      
           
/*Elabore uma consulta que liste todos os exames cujo preço
seja igual a R$ 50.00 e R$ 80.00 */
       
Código       Descritivo          Preço Exame


#=============================================#
# Junção entre tabelas - INNER JOIN - junção
#=============================================#

/*Elabore uma consulta que liste todos os medicos com suas
respectivas especialidades*/

Codigo           Nome            Especialidade


/*Elabore uma consulta que liste todos os atendimentos realizados 
na clinica */

Medico     Paciente     Data_atendimento     Horario_atendimento


/*Elabore uma consulta que liste todos os exames realizados por
pacientes na clinica  */

Paciente      Exame     Data_atendimento     Horario_atendimento


/*Elabore uma consulta que liste todos os atendimentos realizados 
na clinica pelo medico cujo id é igual a 2 */

Medico      Paciente    Data_atendimento    Horario_atendimento


