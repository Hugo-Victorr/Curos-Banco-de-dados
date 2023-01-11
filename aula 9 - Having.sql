--exemplos do uso do HAVING 
--Listar quanto é pago por setor para os funcionarios 

use funcionarios 

select*from funcionarios

select s.setor_id, isnull(sum(f.func_salario), 0) as total
from funcionarios f
right join setores s on f.setor_id = s.setor_id
-- where funciona antes do group by 
group by s.setor_id
-- o Having vem depois do group by, e nesse caso é mais indicado pois é necessario
-- utilizar a tabela após o agrupamento
having sum(f.func_salario) > 3000

--listar todos os nomes dos setores que possuem 
--menos de 4 funcionarios
select setor_nome, count(f.func_id) as qtd
from funcionarios f 
right join setores s on s.setor_id = f.setor_id
group by s.setor_nome
having count (f.func_id) < 9
order by qtd desc



