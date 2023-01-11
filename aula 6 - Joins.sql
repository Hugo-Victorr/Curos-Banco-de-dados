--trabalhando com JOINS	
--Lingando as tabelas de funcionarios com  setores

use funcionarios
select*
from funcionarios f
inner join setores s on (f.setor_id = s.setor_id)

--ou
select*
from funcionarios f, setores s
where f.setor_id = s.setor_id

----------------------------------
--juntando mais que duas tabelas
use locadora
select*
from locacao L
inner join ItensLocacao ITL on L.CodLocacao = ITL.CodLocacao
inner join Midias m on m.CodMidia = itl.CodMidia

--------------------------------------------------
--usando LEFT JOIN
use funcionarios 
go

--busca todos os funcionarios independente de 

update funcionarios set setor_id = 99
where func_id in (18,19)

select*
from funcionarios f
left join setores s on f.setor_id = s.setor_id
where s.setor_id is null

-------------------------------
--trazer os setores que não tem funcionarios
--DESAFIO
use funcionarios
select*
from setores s
left join funcionarios f on f.setor_id = s.setor_id
where f.func_id is null

