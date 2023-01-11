
/*Exercício para Criação de tabelas
0) Crie um banco de dados Exercicio*/

create database EC2_exercicios 
use EC2_exercicios

/*1) crie uma tabela chamada Advogado com 
codAdvogado(PK), nome, data_nasc*/
create table advogado(
		codAdvogado int primary key,
		nome varchar (100) not null,
		data_nasc datetime not null
)

select*from advogado

/*2) crie uma tabela chamada Processo com
numProce(PK), autor, data*/

create table processos(
		numProce int primary key,
		autor varchar (100) not null,
		data_proce datetime not null,
		codAdvogado int
)

select*from processos

/*3) adicione um campo na tabela processo
que faça relacionamento com a tabela Advogado*/

alter table processos
	add constraint FK_processos_advogado
	foreign key (codAdvogado)
	references advogado

/*4) crie uma tabela cidade com codCidade(pk), descricao*/

create table cidade(
		codCidade int primary key,
		descricao text not null
)

/*5) Crie uma tabela chamada Forum com 
codForum(PK), nome, endereço, codCidade(FK). 
Neste mesmo comando, crie a tabela já com suas
FKs*/

create table forum(
		codForum int primary key,
		nome varchar (100),
		endereço varchar (100),
		codCidade int foreign key
			references cidade
)

/*6) Adicione um campo na tabela Advogado chamado
numOAB.*/

alter table advogado
	add numOAB int not null

alter table actor
modify column last_name varchar(30);

alter table actor
add column tipo_actor int;

alter table actor  
drop column tipo_actor;
 




