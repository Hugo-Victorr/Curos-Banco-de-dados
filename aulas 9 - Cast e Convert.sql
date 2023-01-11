--usando o caste convert para conversão de dados

use funcionarios

--soma
select 1 + 1

--o simbolo de '+' serve para somar matematicamente e para concatenar.
--sempre que os dois campos são caracteres ele vai concatenar, porem, quando temos
--texto e numero ele soma.
--nunca transforma numero para texto, sempre o inverso.

select '1' + 1 -- soma

select '1' + '1' --concatena

select '1a' + 1 --da erro

--convertendo
select '1a' + cast(1 as varchar(2))

--exemplo salario com 'R$'
select func_nome, 'R$' + cast(func_salario as varchar(20))
from funcionarios
--ou
select func_nome, 'R$' + convert(varchar(20), func_salario)
from funcionarios 

--convertendo datas
select func_nome, func_datanasc, convert(varchar(20), func_datanasc, 3)
from funcionarios