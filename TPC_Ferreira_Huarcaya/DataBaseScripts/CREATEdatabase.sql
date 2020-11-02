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
	
create table Disposicion_Elementos (
	ID smallint not null identity(1,1),
	Descripcion varchar(100) not null
)
	go
	
create table Funcionalidades (
	ID smallint not null identity(1,1),
	Descripcion varchar(100) not null,
	Costo int not null
)
	go
	
create table Categorias (
	ID smallint not null identity(1,1),
	Descripcion varchar(100) not null
)
	go
	
create table Niveles_Acceso (
	ID smallint not null identity(1,1),
	Descripcion varchar(100) not null
)
	go
	
create table Colores (
	ID smallint not null identity(1,1),
	Descripcion varchar(100) not null
)
	go
	
--Fin de tablas maestro.

create table Relacion_Colores (
	ID smallint not null identity(1,1),
	Descripcion varchar(100) not null,
	ID_Estilo smallint not null
)
	go
	
create table Colores_X_RelacionColores (
	ID_Color smallint not null,
	ID_RelacionColor smallint not null
)
	go
	
create table Estilos (
	ID smallint not null identity(1,1),
	Descripcion varchar(100) not null,
	ID_Seccion smallint not null
)
	go
	
create table Secciones (
	ID smallint not null identity(1,1),
	Descripcion varchar(100) not null,
	ID_Pedido smallint not null
)
	go
	
create table PedidosWebPage (
	ID smallint not null identity(1,1),
	ID_Usuario smallint not null,
	ID_Categoria smallint not null
)
	go
	
create table Usuarios (
	ID smallint not null,
	NombreUsuario varchar(100) not null,
	Contrasenia varchar(200) not null, --tal vez a modificar a futuro cuando veamos como cifrarla o cuanto ocupa el hash.
	ID_Nivel smallint not null
)
	go
	
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
	
create table Paginas (
	ID smallint not null identity(1,1),
	Descripcion varchar(100) not null,
	ID_Seccion smallint not null
)
	go
	
create table Elementos_X_Paginas (
	ID_Pagina smallint not null,
	ID_Disposicion smallint not null,
	ID_Elemento smallint not null
)
	go

--Alter Tables de PK
	alter table Elementos add constraint PK_Elementos primary key (ID)
	go
	alter table Disposicion_Elementos add constraint PK_ID_Disposicion primary key (ID)
	go
	alter table Funcionalidades add constraint PK_Funcionalidades primary key (ID)
	go
	alter table Categorias add constraint PK_Categorias primary key (ID)
	go
	alter table Niveles_Acceso add constraint PK_Niveles_Acceso primary key (ID)
	go
	alter table Colores add constraint PK_Colores primary key (ID)
	go
	alter table Relacion_Colores add constraint PK_Relacion_Colores primary key (ID)
	go
	alter table Colores_X_RelacionColores add constraint PKS_Colores_X_RelacionColores primary key (ID_Color,ID_RelacionColor)
	go
	alter table Estilos add constraint PK_Estilos primary key (ID)
	go
	alter table Secciones add constraint PK_Secciones primary key (ID)
	go
	alter table PedidosWebPage add constraint PK_PedidosWebPage primary key (ID)
	go
	alter table Usuarios add constraint PK_Usuarios primary key (ID)
	go
	alter table Datos_Personales add constraint PK_Datos_Personales primary key (ID_Usuario)
	go
	alter table Paginas add constraint PK_Paginas primary key (ID)
	go
	alter table Elementos_X_Paginas add constraint PKS_Elementos_X_Paginas primary key (ID_Pagina, ID_Disposicion, ID_Elemento)
	go

--Alter Tables FK's
	alter table Relacion_Colores add foreign key (ID_Estilo) references Estilos(ID)
	go
	alter table Colores_X_RelacionColores add foreign key (ID_Color) references Colores(ID)
	go
	alter table Colores_X_RelacionColores add foreign key (ID_RelacionColor) references Relacion_Colores(ID)
	go
	alter table Estilos add foreign key (ID_Seccion) references Secciones(ID)
	go
	alter table Secciones add foreign key (ID_Pedido) references PedidosWebPage(ID)
	go
	alter table PedidosWebPage add foreign key (ID_Usuario) references Usuarios(ID)
	go
	alter table PedidosWebPage add foreign key (ID_Categoria) references Categorias(ID)
	go
	alter table Usuarios add foreign key (ID_Nivel) references Niveles_Acceso(ID)
	go
	alter table Datos_Personales add foreign key (ID_Usuario) references Usuarios(ID)
	go
	alter table Paginas add foreign key (ID_Seccion) references Secciones(ID)
	go
	alter table Elementos_X_Paginas add foreign key (ID_Pagina) references Paginas(ID)
	go
	alter table Elementos_X_Paginas add foreign key (ID_Disposicion) references Disposicion_Elementos(ID)
	go
	alter table Elementos_X_Paginas add foreign key (ID_Elemento) references Elementos(ID)
	go
--Alter tables CHECKS
	alter table Elementos add constraint CH_Elementos_Costo check (Costo >= 0)
	go
	alter table Funcionalidades add constraint CH_Funcionalidades_Costo check (Costo >= 0)
	--Falta: Checks de varchars de espacio vacio, Check de Email valido

--                                   Tablas Maestras
insert into Colores(Descripcion)
values
('Negro'),
('Azul'),
('Rojo'),
('Verde'),
('Amarrilo'),
('Bordo'),
('Gris'),
('Celeste'),
('Monocromaticos');

insert into Niveles_Acceso(Descripcion)
values
('Usuario'),
('Staff'),
('Admin');

insert into Categorias(Descripcion)
values 
('Ninios'),
('Noticias'),
('Blog'),
('E-Commerce'),
('Publicidad'),
('Portfolio');

insert into Funcionalidades(Descripcion,Costo)
values
('Conexion Base de Datos',0),
('Envio mail automatico',100),
('Evento envial mail con boton',1000),
('Implementacion de Google Maps',999),
('Envio de Factura por Mail',250),
('Evento alerta con boton',180),
('Evento pop-up',5000);

insert into Elementos(Descripcion,Costo)
values
('Carousel',0),
('Sticky navbar',10),
('animation text',10),
('Smooth Scroll',10),
('Cover Image',0),
('Grid',10),
('Footer',10),
('Header',10);

--                                  Tablas No Mestras



insert into Usuarios(NombreUsuario,Contrasenia,ID_Nivel)
values
('JeremiasI21','Jere123',1),
('Lorena23','Lore321',1),
('JazminSR1','Jazz23',1),
('GabiF','GabFru24',1),
('AndreaA2','Andreita15',1),
('AlonsoHS20','AlonsohuarcayaAdmin2',3),
('NicoFerreira1','NicoFerreAdmin1',3);



insert into Datos_Personales(Nombre_Y_Apellido,Telefono_Movil,Email,Telefono_Fijo,Fecha_Nac,Email_Recuperacion)
values
('Jeremias Inova','1143726710','JereIno21@hotmail.com','45232234','03/03/99','AnnaMaria44@hotmail.com');

insert into Colores_X_RelacionColores(ID_Color,ID_RelacionColor)
values
(1,1),
(2,1),
(3,2),
(1,2),
(1,2),
(5,2),
(6,3);

insert into Relacion_Colores(Descripcion,ID_Estilo)
values
('Monocromatico',1),
('Triada',1),
('Complementarios',1);

insert into Estilos(Descripcion,ID_Seccion)
values
('Esqueumorfismo',1),
('Flat design',1),
('Material design',1),
('Maquetador/a Web',2),
('Diseniador/a Web',2),
('Barroco',3),
('Clasicismo',3),
('Surrealismo',3),
('Expesionismo',3),
('Moderno',3),
('Pixel Art',3);

insert into Secciones(Descripcion,ID_Pedido)
values
('WebPages',1),
('Contrataciones',2),
('Arte',3);

insert into Paginas(ID_Seccion,Descripcion)
values
(1,'Home/Detalles/Contacto'),
(3,'Home'),
(1,'Contacto'),
(3,'Informacion'),
(1,'Login');

insert into PedidosWebPage(ID_Usuario,ID_Categoria)
values
(1,2),
(2,3),
(3,5),
(4,1);



/*insert into Funcionalidades_X_Paginas(ID_Funcionalidad,ID_Pagina)
values
(1,1),
(2,1),
(3,2),
(4,1),
(5,1),
(2,2);*/


insert into Disposicion_Elementos(Descripcion)
values
('Arriba'),
('Abajo'),
('Izquierda'),
('Derecha'),
('Centrado'),
('Inclinado'),
('Invertido');

insert into Elementos_X_Paginas(ID_Pagina,ID_Disposicion,ID_Elemento)
values
(1,1,3),
(2,1,3),
(5,1,5),
(2,2,2),
(1,4,4);

