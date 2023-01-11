drop database ExercicioDB
drop table Aluno
create database ExercicioDB
use ExercicioDB

set dateformat mdy

create table Aluno(
	Cod_Aluno int primary key,
	RM int ,
	NOME varchar(60),
	ESTADO varchar(2),
	NASCIMENTO date,
)

insert into Aluno (Cod_Aluno, RM, NOME, ESTADO, NASCIMENTO)
	values( 1, 5001, 'Asdronio da Silva', 'SP', '12/24/1961'),
		  ( 2, 5002,	'Severino Sever� SeVou', 'MG', '07/08/1967'),
		  ( 3, 5003,	'Juvenal Juv�nio',	'MG',	'05/21/1975'),
		  ( 4, 5004,	'Ambr�sio Adelino Xavier',	'PA',	'02/17/1949'),
		  (	5, 5005,	'Adelino da Silva Sauro',	'RJ',	'06/30/1985'),
		  (	6, 5006,	'Adamastor Augusto',	'SP',	'09/21/1974'),
		  (	7, 5007,	'Chapec� Iramir da Silva',	'RJ',	'07/07/1947'),
		  (	8, 5008,	'Carlitos Tevez', 	'BU',	'11/06/1985'),
		  (	9, 5009,	'Silvio Santos',	'SP',	'12/11/1935')

	select*from Aluno

--B)
--1-) Selecione RM e NOME de todos os alunos que come�am com a letra �A�
select RM , NOME
from Aluno
where NOME like 'A%'

--2-) Selecione todos os campos de todos os alunos que nasceram no ano de 1985,
--para isso, utilize a fun��o year(data). Ex: select * from alunosXXX where year(nascimento) = 1985

select*
from Aluno
where year (NASCIMENTO) = 1985 

--3-) Selecione o Nome e o Nascimento dos alunos cuja data de nascimento seja menor que 1950.

select NOME, NASCIMENTO
from Aluno 
where year(NASCIMENTO) < 1950

--4-) Selecione todos os campos dos alunos que nasceram no m�s 7. 
--Para isso utilize a fun��o Month(data). Por ordem alfab�tica.

select *
from Aluno
where month(NASCIMENTO) = 7
order by NOME 

--5-) Selecione o Nome e a data de nascimento de todos os alunos que nasceram antes do dia 20 (utilize a fun��o day(data) ) e
--o ano de nascimento seja inferior a 1985

select NOME, NASCIMENTO
from Aluno
where day(NASCIMENTO) < 20 and year(NASCIMENTO) < 1985

--6-) Selecione todas as informa��es de alunos por ordem decrescente de data de nascimento

select *
from Aluno
order by NASCIMENTO DESC

--7-) Selecione apenas o Nome e o ano de nascimento dos alunos. Para isso utilize a fun��o year(data) no comando select:
--select nome, year(nascimento) from alunosXXXX Voc� pode dar um nome para o resultado da fun��o year.
--Ex: select nome, year(nascimento) �ANO� from alunosXXXX.  Selecione por ordem decrescente de ano. Utilize o nome dado para ordenar. Ex: order by ANO.

select NOME, year(NASCIMENTO) Ano
from Aluno
order by Ano DESC

--8-) Selecione o Nome, o dia, o m�s  e o ano de nascimento dos alunos em colunas separadas. 
--Para isso utilize as fun��es day(data), month(data), year(data)  como no exemplo anterior. 

select NOME, day(NASCIMENTO) Dia, month(NASCIMENTO) Mes, year(NASCIMENTO) Ano
from Aluno

--C-) Comandos para modificar os dados j� cadastrados. A cada modifica��o, realize um select para certificar-se que a mudan�a de fato ocorreu.
--9-) Modifique o nome do aluno de RM 5001 para �Adr�nio da Silva Silveira�

update Aluno set NOME = 'Adr�nio da Silva Silveira'
where RM = 5001

select NOME
from Aluno
where RM = 5001

--10-) Modifique em um �nico update as seguintes informa��es do aluno 5002: O nome para �Severino Seviu Denovo� e
--a data de nascimentto para �08/08/1967�

update Aluno set NOME = 'Severino Seviu Denovo', NASCIMENTO =  '08/08/1967'
where RM = 5002

select NOME, NASCIMENTO
from Aluno
where RM = 5002

--11-) Altere o estado daqueles que nasceram no �RJ� para �PE�

update Aluno set ESTADO = 'PE'
where ESTADO = 'RJ'

select ESTADO
from Aluno
where ESTADO = 'PE'

--12-) Adicione, em um �nico comando update, o sobrenome �SANTOS� a todos os alunos cujo nome cont�m a palavra �SILVA�

update Aluno set NOME = nome + ' SANTOS'
where NOME like '%SILVA%'

select NOME
from Aluno
where NOME like '%SILVA%'

--D-) Comandos para apagar registros. A cada comando, realize um select para certificar-se da remo��o.
--13-)  Apague o aluno de RM  5006

delete
from Aluno 
where RM = 5006

select NOME, RM
from Aluno
where RM = 5006

--14-) Apague todos os alunos cujo ano de nascimento seja inferior a 1970.

delete 
from Aluno
where year(NASCIMENTO) < 1970

select NOME, year(NASCIMENTO) Ano
from Aluno
where year(NASCIMENTO) < 1970

--15-) Apague todos os alunos  cujo RM seja diferente de 5008.

delete from Aluno 
where RM != 5008

select NOME, RM 
from Aluno

--16-) Apague o �Carlitos�

delete from Aluno
where NOME like '%Carlitos%'

select*from Aluno
