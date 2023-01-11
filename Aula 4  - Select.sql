--usando o select

--trazer todos os campos
select * from funcionarios

--selecionar alguns campos
select func_nome, func_salario
from funcionarios

--uso de apelido
select func_nome as Nome, func_salario Salario_Mensal
from funcionarios

--quais funcionarios que não possuem gerente
select *
from funcionarios
where gerente_id is null

--listar os nomes dos funcionarios que são do setor 2
--ou do gerente 1
select f.func_nome
from funcionarios f
where setor_id = 2 or gerente_id = 1

--listar os funcionarios que tenham o salario entre
--1500 e 2000
select * 
from funcionarios
where func_salario between 1500 and 5000

--ou
select * 
from funcionarios
where func_salario >= 1500 and func_salario <= 2000

select * 
from funcionarios
where func_nome between 'abraao' and 'fernando'

--listar os funcionarios 1, 3 e 5
select *
from funcionarios
where func_id = 1 or func_id = 3 or func_id = 5

select *
from funcionarios
where func_id in (1,3,5)

--listar todos os funcionarios de codigo par
select *
from funcionarios
where func_id % 2 = 0

-----------------------------------------------
--Uso do LIKE
--listar os funcionarios que começam com a letra 'a'
select *
from funcionarios
where func_nome like 'a%'

--listar os funcionarios que terminam com a letra 'o'
select *
from funcionarios
where func_nome like '%o'

--listar os funcionarios que contenham com a letra 'ar'
select *
from funcionarios
where func_nome like '%ar%'

--listar os funcionarios que contenham com a 2º letra seja 'n'
select *
from funcionarios
where func_nome like '_n%'

--2ºletra 'n' e termina com 'o'
where func_nome like '_n%o'

--2º letra 'n', 4º letra 'd'
where func_nome like '_n_d%'

-------------------------------------------------
--listar quais setores existem de forma distinta na tabela
--de funcionarios
select distinct setor_id
from funcionarios

--traz o par setor_id e gerente_id distintamente
select distinct setor_id, gerente_id
from funcionarios

---------------------------------------------------------
--listar somente uma quantidade especifica de registros

--somente os 4 primeiros
select top 4 * from funcionarios

--somente os 10% primeiros
select top 10 percent * from funcionarios
