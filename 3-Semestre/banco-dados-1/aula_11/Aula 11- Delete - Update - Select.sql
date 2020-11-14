#---------------------------------------------------------
#Utilização dos comandos do grupo DML       #
#---------------------------------------------------------

#=======================================
# Deletar dados da tabela : DELETE FROM 
#=======================================

DELETE FROM tabela WHERE (condição)

#Exemplos:


/*Delete todos os registros da tabela cargos */


/*Delete o registro da tabela cargos cujo id_cargo 
seja igual a 5. */

           
/*Delete todos os projetos nos quais o funcionario 2 
participa.*/
      

#====================================
# Atualizar dados da tabela : UPDATE  
#====================================

UPDATE tabela SET campo1 = valor1, campo2 = valor2,...
WHERE (condição)

#Exemplos:

/*Atualize os valores de todos os salarios em 5%*/


/*Atualize o valor dos salarios dos funcionarios em 5% 
cujos salarios estão abaixo de R$ 21.000,00. /
     
      
/*Atualize as informações dos campos data de nascimento 
e nome do funcionario cujo id_funcionario seja igual a 3*/



#================================
# Consultar as tabelas : SELECT  
#================================

****





#Exemplos:

/*Elabore um relatório que apresente as seguintes informações
dos pacientes conforme layout abaixo.A data de nascimento deverá
ser formatada dd/mm/AAAA*/
      
Código       Nome        Sexo        datan
      
       	
      
/*Elabore um relatório que apresente uma tabela de preços de 
todos os exames. Os preços devem apresentar o símbolo R$*/
      
Codigo 	 Descritivo    Preço Exame
                        R$ 50,00
                           
                                
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


