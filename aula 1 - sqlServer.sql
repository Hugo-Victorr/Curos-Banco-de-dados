/* 
tudo isso 
é comentario
*/

-- comentario uma linha

--criando banco de dados
 drop database EC2_teste
 drop table cidade
 drop table cliente

 --colocando um banco para uso
 use EC2_teste

 --apagar banco
 create database EC2_teste

 --criando uma tabela
 create table cidade(
		codCidade int primary key, 
		descricao varchar(100) not null,
		populacao int default -1,  --por padrão o valor do defalt é -1 (se o tipo da variavel permitir isso
)

 create table cliente(
		codCliente int not null,
		nome varchar (100),
		codCidade int foreign key -- FK
			references cidade,
		primary key (codCliente) -- chave primaria
)


--criando uma FK, depois que a tabela já existe
alter table cliente 
	add constraint FK_cliente_cidade
		foreign key (codCidade)
		references cidade

------------------------------------------
--Adicionar um determinado CAMP0

--add campo telefone
alter  table cliente
	add telefone varchar(25) default '--SEM TELEFONE--'

--adicionar outro campo
alter table cliente 
	add campoTexte decimal (10, 2) not null

--para remover um campo 
alter table cliente
	drop column campoTexte


