create database Ferreira_Huarcaya_DB
go
use Ferreira_Huarcaya_DB
go
create table Disposicion_Elementos (
	ID_Disposicion smallint not null,
	Descripcion varchar(50) not null
)
go
alter table Disposicion_Elementos add constraint PK_ID_Disposicion primary key (ID_Disposicion)
go
