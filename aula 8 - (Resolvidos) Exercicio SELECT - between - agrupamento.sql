/* Utilizando o arquivo de criação de banco de dados "Cria Banco Locadora", ou usando
esse mesmo banco caso já exista, resolva os seguintes requisitos:
1-Liste todos os clientes que possuem seu código entre 4 e 7*/

use Locadora

select *
from Cliente
where CodCli between 4 and 7


--2-Resolva o item 1 de uma maneira diferente
select *
from Cliente
where CodCli in(4,5,6,7) 


--3-Liste todos os clientes que começam com a letra 'a' ou terminam com a letra 'z'

select*
from Cliente
where Cliente like 'a%' or Cliente like '%z'


--4-Liste todas as midias que tenham os seguintes valores de locação: 6,90 ou 2,40 ou 3,75

select *
from Midias
where ValorUnit in (6.90, 2.40, 3.75)

--5-Resolva o exercicio anterior de alguma outra forma

select * 
from Midias
where ValorUnit = 6.90 or ValorUnit = 2.40 or ValorUnit = 3.75

--6-Liste distintamente os codigos dos clientes que fizeram alguma locação

select DISTINCT CodCli
from Locacao

--7-Liste distintamente os codigos de midias que foram locadas

select distinct CodMidia, DescMidia
from Midias

--8-Liste as midias em ordem decrescente de valor de locação

select*
from Midias
order by ValorUnit DESC

--9-Liste as 4 midias mais caras

select top 4 *
from Midias
order by ValorUnit DESC

--10-Liste as 10 midias mais baratas

select top 10 *
from Midias
order by ValorUnit ASC

--11-Liste os itens de locação em ordem de locacao e midia

select *
from ItensLocacao
order by CodLocacao, Codmidia

