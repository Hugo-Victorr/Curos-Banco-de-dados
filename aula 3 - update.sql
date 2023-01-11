/*
comandos DDL - Data Definition Language */

--inclusaão de dados 
insert into cidade (codCidade, descricao, populacao)
			values (1, 'Maua', 400000)

insert into cidade	
			values (2, 'sbc', 350000)

insert into cidade (codCidade, descricao)
			values(3, 'SCS')

--validando PK
insert into cidade (codCidade, descricao)
			values (3, 'Ribeirão Pires') --erro PK!!!

select * from cidade 

--inserindo um cliente 

insert into cliente(codCliente, nome, codCidade, telefone)
		values(1, 'Gustavo', 3, '91234-0099')

insert into cliente (codCliente, nome, codCidade)
		values(2, 'Paulo', 1),
			  (3,'Anderson', 3),
			  (4, 'Cristiano', 3)

select * from cliente 

-- atualizar o clinete Andreson e colocar umm numero de 
--telefone
update cliente set telefone = '(11) 4599-0012'
where codCliente = 3

--atualizar todos os registros da cidade 1 
--para o telefone novo
update cliente set telefone = '+55(11) 0000-0000'
where codCidade = 1

update cliente set codCidade = 1
where codCliente = 4

update cliente set telefone = '+55(11) 0000-0000'
where codCliente = 4

--atualizar cliente e a cidade dele
update cliente set codCidade = 2, nome = 'Sr(a)' + nome
where codCliente = 1 or codCliente = 4

--atualizar os registros 
update cliente set codCidade = 4 --erro de FK

--deixar todos os nomes em minusculos
update cliente set nome = lower(nome)
 

--remove o sr(a)
update cliente set nome = substring (nome, 6, len(nome))
where codCliente = 1 or codCliente = 4
