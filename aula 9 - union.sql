--exemplo de union 

use funcionarios

--juntar tabela de setores com funcionarios
select f.func_id id, func_nome nome
from funcionarios f
UNION
select s.setor_id, s.setor_nome
from setores s

--com order by
select f.func_id id, func_nome nome
from funcionarios f
UNION
select s.setor_id, s.setor_nome
from setores s
order by f.func_nome 

--UNION all
--linhas de registros iguais são exibidos apenas uma vez,
--portanto, devemos usar o 'ALL' para que ele traga TUDO
select * from funcionarios 
union all
select * from funcionarios

--complentando qtd de campos
select func_id, func_nome, func_salario
from funcionarios
union
select setor_id, setor_nome, 0 as valor
from setores