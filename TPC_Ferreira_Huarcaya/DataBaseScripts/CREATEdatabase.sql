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
create table Niveles_Acceso (
	ID smallint not null identity(1,1),
	Descripcion varchar(100) not null
)
	go
	alter table Niveles_Acceso add constraint PK_Niveles_Acceso primary key (ID)
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
	ID_RelacionColor smallint not null
)
	go
	alter table Colores_X_RelacionColores add constraint PK_Colores_X_RelacionColores primary key (ID_Color)
	go
	alter table Colores_X_RelacionColores add foreign key (ID_Color) references Color(ID)
	go
	alter table Colores_X_RelacionColores add constraint PK2_Colores_X_RelacionColores primary key (ID_Relacioncolor)
	go
	alter table Colores_X_RelacionColores add foreign key (ID_RelacionColor) references Relacion_Colores(ID)
	go
create table Estilos (
	ID smallint not null identity(1,1),
	Descripcion varchar(100) not null,
	ID_Seccion smallint not null
)
	go
	alter table Estilos add constraint PK_Estilos primary key (ID)
	go
	alter table Estilos add foreign key (ID_Seccion) references Secciones(ID)
	go
create table Secciones (
	ID smallint not null identity(1,1),
	Descripcion varchar(100) not null,
	ID_Pedido smallint not null
)
	go
	alter table Secciones add constraint PK_Secciones primary key (ID)
	go
	alter table Secciones add foreign key (ID_Pedido) references PedidosWebPage(ID)
	go
create table PedidosWebPage (
	ID smallint not null identity(1,1),
	ID_Usuario smallint not null,
	ID_Categoria smallint not null
)
	go
	alter table PedidosWebPage add constraint PK_Secciones primary key (ID)
	go
	alter table PedidosWebPage add foreign key (ID_Usuario) references Usuarios(ID)
	go
	alter table PedidosWebPage add foreign key (ID_Categoria) references Categorias(ID)
create table Usuarios (
	ID smallint not null,
	NombreUsuario varchar(100) not null,
	Contrasenia varchar(200) not null, --tal vez a modificar a futuro cuando veamos como cifrarla o cuanto ocupa el hash.
	ID_Nivel smallint not null
)
	go
	alter table Usuarios add constraint PK_Usuarios primary key (ID)
	go
	alter table Usuarios add foreign key (ID_Nivel) references Niveles_Acceso(ID)
create table Datos_Personales (
	ID_Usuario smallint not null,
	Nombre_Y_Apellido varchar(200) not null,
	Telefono_Movil int null,
	Email varchar(200) not null,
	Telefono_Fijo int null,
	Fecha_Nac date not null,
	Email_Recuperacion varchar(200) null
)
	go
	alter table Datos_Personales add constraint PK_Datos_Personales primary key (ID_Usuario)
	go
	alter table Datos_Personales add foreign key (ID_Usuario) references Usuarios(ID)
create table Paginas (
	ID smallint not null identity(1,1),
	Descripcion varchar(100) not null,
	ID_Seccion smallint not null
)
	go
	alter table Paginas add constraint PK_Paginas primary key (ID)
	go
	alter table Paginas add foreign key (ID_Seccion) references Secciones(ID)
create table Elementos_X_Paginas (
	ID_Pagina smallint not null,
	ID_Disposicion smallint not null,
	ID_Elemento smallint not null
)
	go
	alter table Elementos_X_Paginas add constraint PK_Elementos_X_Paginas primary key (ID_Pagina)
	go
	alter table Elementos_X_Paginas add foreign key (ID_Pagina) references Paginas(ID)
	go
	alter table Elementos_X_Paginas add constraint PK2_Elementos_X_Paginas primary key (ID_Disposicion)
	go
	alter table Elementos_X_Paginas add foreign key (ID_Disposicion) references Disposiciones(ID)
	go
	alter table Elementos_X_Paginas add constraint PK3_Elementos_X_Paginas primary key (ID_Elemento)
	go
	alter table Elementos_X_Paginas add foreign key (ID_Elemento) references Elementos(ID)


