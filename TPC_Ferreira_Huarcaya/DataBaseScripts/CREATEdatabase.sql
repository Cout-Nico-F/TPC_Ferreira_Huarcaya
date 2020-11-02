create database Ferreira_Huarcaya_DB
go
use Ferreira_Huarcaya_DB
go
--Tablas Maestro (Orden:Reloj segun DER Draw.io desde Elementos)
create table Elementos (
	ID smallint not null identity(1,1),
	Descripcion varchar(100) not null,
	Costo int not null
)
	go
	alter table Elementos add constraint PK_Elementos primary key (ID)
	go
	alter table Elementos add constraint CH_Elementos_Costo check (Costo >= 0)
	go
create table Disposicion_Elementos (
	ID smallint not null identity(1,1),
	Descripcion varchar(100) not null
)
	go
	alter table Disposicion_Elementos add constraint PK_ID_Disposicion primary key (ID)
	go
create table Funcionalidades (
	ID_Funcionalidad smallint not null identity(1,1),
	Descripcion varchar(100) not null,
	Costo int not null
)
	go
	alter table Funcionalidades add constraint PK_Funcionalidades primary key (ID)
	go
	alter table Funcionalidades add constraint CH_Funcionalidades_Costo check (Costo >= 0)
	go
create table Categorias (
	ID smallint not null identity(1,1),
	Descripcion varchar(100) not null
)
	go
	alter table Categorias add constraint PK_Categorias primary key (ID)
	go
create table Nivel_Acceso (
	ID smallint not null identity(1,1),
	Descripcion varchar(100) not null
)
	go
	alter table Nivel_Acceso add constraint PK_Nivel_Acceso primary key (ID)
	go
create table Colores (
	ID smallint not null identity(1,1),
	Descripcion varchar(100) not null
)
	go
	alter table Colores add constraint PK_Colores primary key (ID)
	go
--Fin de tablas maestro.

create table Relacion_Colores (
	ID smallint not null identity(1,1),
	Descripcion varchar(100) not null,
	ID_Estilo smallint not null
)
	go
	alter table Relacion_Colores add constraint PK_Relacion_Colores primary key (ID)
	go
	alter table Relacion_Colores add foreign key (ID_Estilo) references Estilos(ID)
	go
create table Colores_X_RelacionColores (
	ID_Color smallint not null,
	ID_RelacionColores smallint not null
)
	go
	alter table Colores_X_RelacionColores add foreign key (ID_Color) references Color(ID)
	go
	alter table Colores_X_RelacionColores add foreign key (ID_RelacionColores) references Relacion_Colores(ID)
	go
create table Estilos (
	ID smallint not null identity(1,1),
	Descripcion varchar(100) not null,
	ID_Seccion smallint not null
)
	go
	alter table Estilos add primary key
	go
	alter table Estilos add foreign key
