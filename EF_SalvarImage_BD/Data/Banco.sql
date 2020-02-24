create database Cadastro

use Cadastro

create table MinhasFotos(
	Id int identity (1,1) not null,
	Nome nvarchar(50) not null,
	Descricao nvarchar(250) not null,
	Foto varbinary (MAX) not null,
	Tamanho bigint not null,
	constraint [PK_MinhasFotos] primary key clustered ([Id] ASC)
)

SELECT * FROM MinhasFotos