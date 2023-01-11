--ordenando dados 
--listar os nomes dos funcionarios em ordem alfabetica
select func_id, func_nomefrom funcionarios 
order by func_nome
--OU 
--order by func_nome asc mesma coisa

--listar os nomes dos funcionarios em ordem alfabetica 
--decrescente 
select func_id, func_nome
from funcionarios
order by func_nome DESC

--listar os dados por ordem de setor e por ordem de nome decrecente
select*
from funcionarios 
order by setor_id asc, func_nome desc

--Quais são os 4 funcionarios que ganham mais?
-- e que nasceram em 1981?
select top 4 func_nome, func_salario
from funcionarios
where year(func_Datanasc) = 1981 
order by func_salario desc

--Funções de agrupamento (isoladas)

--qual o maior salario de todos os funcionarios 
select max (func_salario) as maior
from funcionarios

--quem ganha o maior salario?
--este comando AINDA não funciona 
select func_nome, max(func_salario) as maior 
from funcionarios 

--qual a quantidade de funcionarios que nasceram 
--antes de 1980
select count(*) qtd
from funcionarios 
where year (func_dataNasc) < 1980

--quantos setores possuem funcionarios  
select count (distinct setor_id) qtd
from funcionarios

--listar todos os numeros dos funcionarios distintamente
select distinct gerente_id from funcionarios

--quantos funcionarios possuem gerente 
select count (gerente_id) qtd
from funcionarios 
select*from funcionarios

--qual a somatoria dos salarios dos funcionarios 
--que tarabalham no setor 2, mostre tambem o menor 
--salario deste mesmo setor 
select sum(func_salario) somatoria,
		min (func_salario) menor 
from funcionarios 
where setor_id = 2


--qual a media salarial dos funcionarios que
--nasceram no mes 03 de qualquer ano
select avg(func_salario) media
from  funcionarios
where month (func_dataNasc) = 5

--ou (menos desempenho)

select sum(func_salario) / count(func_salario) media
from funcionarios
--where month (func_dataNasc) = 5


