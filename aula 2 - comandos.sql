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