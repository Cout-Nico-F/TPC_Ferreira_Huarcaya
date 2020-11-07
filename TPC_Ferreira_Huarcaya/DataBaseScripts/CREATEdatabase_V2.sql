
--Drop database Ferreira_Huarcaya_DB


create database Ferreira_Huarcaya_DB
go

use Ferreira_Huarcaya_DB
go

--Tablas Maestro (Orden:Reloj segun DER Draw.io desde Elementos)

create table Elementos (
	ID smallint identity(1,1),
	Descripcion varchar(100) not null,
	Costo int not null
)
	go

create table Disposicion_Elementos (
	ID smallint identity(1,1),
	Descripcion varchar(100) not null
)
 -- Yo eliminaria la tabla Disposicion Elementos
 -- Porque en la realidad la disposicion deberia quedar a nuestro criterio y en caso de no gustarle al cliente se cambia
	go

	
create table Funcionalidades (
	ID smallint identity(1,1),
	Descripcion varchar(100) not null,
	Costo int not null
)
	go
-- No estoy tan seguro de que Funcionalidades tenga una relacion muchos a muchos
-- porque una pagina puede tener muchas funcionalidades pero una funcionalidad puede tener muchas paginas?

	
create table Categorias (
	ID smallint identity(1,1),
	Descripcion varchar(100) not null
)
	go
	
create table Niveles_Acceso (
	ID smallint identity(1,1),
	Descripcion varchar(100) not null
)
	go
	
create table Colores (
	ID smallint identity(1,1),
	Descripcion varchar(100) not null
)
	go
	
--Fin de tablas maestro.

create table Relacion_Colores (
	ID smallint identity(1,1),
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
	ID smallint identity(1,1),
	Descripcion varchar(100) not null,
	ID_Seccion smallint not null
)
	go
	
create table Secciones (
	ID smallint identity(1,1),
	Descripcion varchar(100) not null,
	ID_Pedido smallint not null
)
	go
	
create table PedidosWebPage (
	ID smallint identity(1,1),
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
	ID smallint identity(1,1),
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
create table Funcionalidades_X_Paginas (
	ID_Funcionalidad smallint not null,
	ID_Pagina smallint not null
)


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
	alter table Funcionalidades_X_Paginas add constraint PKS_Funcionalidades_X_Paginas primary key (ID_Funcionalidad, ID_Pagina)
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
	alter table Funcionalidades_X_Paginas add foreign key (ID_Funcionalidad) references Funcionalidades(ID)
	go
	alter table Funcionalidades_X_Paginas add foreign key (ID_Pagina) references Paginas(ID)
	go
--Alter tables CHECKS
	alter table Elementos add constraint CH_Elementos_Costo check (Costo >= 0)
	go
	alter table Funcionalidades add constraint CH_Funcionalidades_Costo check (Costo >= 0)
	--Falta: Checks de varchars de espacio vacio, Check de Email valido


-- Inserts into

/*				Tabla Colores			*/
insert into Colores(Descripcion) values ('Negro')
insert into Colores(Descripcion) values('Azul')
insert into Colores(Descripcion) values('Rojo')
insert into Colores(Descripcion) values ('Verde')
insert into Colores(Descripcion) values ('Amarrilo')
insert into Colores(Descripcion) values ('Bordo')
insert into Colores(Descripcion) values ('Gris')
insert into Colores(Descripcion) values ('Celeste')
go
/*				Tabla Niveles Acceso	 */
insert into Niveles_Acceso(Descripcion) values ('Usuario')
insert into Niveles_Acceso(Descripcion) values ('Staff')
insert into Niveles_Acceso(Descripcion) values ('Admin')
go
/*				Tabla Categorias		*/
insert into Categorias(Descripcion) values ('Ninios')
insert into Categorias(Descripcion) values ('Noticias')
insert into Categorias(Descripcion) values ('Blog')
insert into Categorias(Descripcion) values ('E-Commerce')
insert into Categorias(Descripcion) values ('Publicidad')
insert into Categorias(Descripcion) values ('Portfolio')
go
/*				Tabla Funcionalidades	*/
insert into Funcionalidades(Descripcion,Costo) values ('Conexion Base de Datos',0)
insert into Funcionalidades(Descripcion,Costo) values ('Envio mail automatico',100)
insert into Funcionalidades(Descripcion,Costo) values ('Evento envial mail con boton',1000)
insert into Funcionalidades(Descripcion,Costo) values ('Implementacion de Google Maps',999)
insert into Funcionalidades(Descripcion,Costo) values ('Envio de Factura por Mail',250)
insert into Funcionalidades(Descripcion,Costo) values ('Evento alerta con boton',180)
insert into Funcionalidades(Descripcion,Costo) values ('Evento pop-up',5000)
go
/*				Tabla Elementos			*/
insert into Elementos(Descripcion,Costo) values ('Carousel',0)
insert into Elementos(Descripcion,Costo) values ('Sticky navbar',10)
insert into Elementos(Descripcion,Costo) values ('animation text',10)
insert into Elementos(Descripcion,Costo) values ('Smooth Scroll',10)
insert into Elementos(Descripcion,Costo) values ('Cover Image',0)
insert into Elementos(Descripcion,Costo) values ('Grid',10)
insert into Elementos(Descripcion,Costo) values ('Footer',10)
insert into Elementos(Descripcion,Costo) values ('Header',10)
go
--                                  Tablas No Maestras
/*				Tabla Usuarios			*/
insert into Usuarios(ID,NombreUsuario,Contrasenia,ID_Nivel) values (1,'JeremiasI21','Jere123',1)
insert into Usuarios(ID,NombreUsuario,Contrasenia,ID_Nivel) values (2,'Lorena23','Lore321',1)
insert into Usuarios(ID,NombreUsuario,Contrasenia,ID_Nivel) values (3,'JazminSR1','Jazz23',1)
insert into Usuarios(ID,NombreUsuario,Contrasenia,ID_Nivel) values (4,'GabiF','GabFru24',1)
insert into Usuarios(ID,NombreUsuario,Contrasenia,ID_Nivel) values (5,'AndreaA2','Andreita15',1)
insert into Usuarios(ID,NombreUsuario,Contrasenia,ID_Nivel) values (6,'AlonsoHS20','AlonsohuarcayaAdmin2',3)
insert into Usuarios(ID,NombreUsuario,Contrasenia,ID_Nivel) values (7,'NicoFerreira1','NicoFerreAdmin1',3)
go
/*				Tabla PedidosWebPage		*/
insert into PedidosWebPage(ID_Usuario,ID_Categoria) values (1,2)
insert into PedidosWebPage(ID_Usuario,ID_Categoria) values (2,3)
insert into PedidosWebPage(ID_Usuario,ID_Categoria) values (3,5)
insert into PedidosWebPage(ID_Usuario,ID_Categoria) values (4,1)
go
/*				Tabla Datos Personales				*/
insert into Datos_Personales(ID_Usuario,Nombre_Y_Apellido,Telefono_Movil,Email,Telefono_Fijo,Fecha_Nac,Email_Recuperacion) values (1,'Jeremias Inova','1143726710','JereIno21@hotmail.com','45232234','03/03/1986','JereIno21@hotmail.com')
insert into Datos_Personales(ID_Usuario,Nombre_Y_Apellido,Telefono_Movil,Email,Telefono_Fijo,Fecha_Nac,Email_Recuperacion) values (2,'Lorena Menna','1143726710','LoreMe01@hotmail.com','45232234','03/03/1990','JereIno21@hotmail.com')
insert into Datos_Personales(ID_Usuario,Nombre_Y_Apellido,Telefono_Movil,Email,Telefono_Fijo,Fecha_Nac,Email_Recuperacion) values (3,'Jazmin Serna','1143726710','JazminSR@hotmail.com','45232234','12/12/2005','JereIno21@hotmail.com')
insert into Datos_Personales(ID_Usuario,Nombre_Y_Apellido,Telefono_Movil,Email,Telefono_Fijo,Fecha_Nac,Email_Recuperacion) values (4,'Gabriel Fernandez','114379384','GabrielFe21@hotmail.com','45232234','09/10/2000','JereIno21@hotmail.com')
insert into Datos_Personales(ID_Usuario,Nombre_Y_Apellido,Telefono_Movil,Email,Telefono_Fijo,Fecha_Nac,Email_Recuperacion) values (5,'Andrea Ambar','1143726710','AndreaAA@hotmail.com','45232234','01/06/2002','JereIno21@hotmail.com')
insert into Datos_Personales(ID_Usuario,Nombre_Y_Apellido,Telefono_Movil,Email,Telefono_Fijo,Fecha_Nac,Email_Recuperacion) values (6,'Alonso Huarcaya','1123390582','AlonsoHS20@hotmail.com','45232234','01/04/1999','JereIno21@hotmail.com')
insert into Datos_Personales(ID_Usuario,Nombre_Y_Apellido,Telefono_Movil,Email,Telefono_Fijo,Fecha_Nac,Email_Recuperacion) values (7,'Nicolas Ferreira','1132937793','NicoFerre@hotmail.com','45232234','01/02/1997','JereIno21@hotmail.com')
go
/*				Tabla Disposicion Elementos			*/
insert into Disposicion_Elementos(Descripcion) values ('Arriba')
insert into Disposicion_Elementos(Descripcion) values ('Abajo')
insert into Disposicion_Elementos(Descripcion) values ('Izquierda')
insert into Disposicion_Elementos(Descripcion) values ('Derecha')
insert into Disposicion_Elementos(Descripcion) values ('Centrado')
insert into Disposicion_Elementos(Descripcion) values ('Inclinado')
insert into Disposicion_Elementos(Descripcion) values ('Invertido')
go
/*			Tabla Secciones				*/
insert into Secciones(Descripcion,ID_Pedido) values ('WebPages',1)
insert into Secciones(Descripcion,ID_Pedido) values ('Contrataciones',2)
insert into Secciones(Descripcion,ID_Pedido) values ('Arte',3)
go
/*			Tabla Estilos				*/		
insert into Estilos(Descripcion,ID_Seccion) values ('Esqueumorfismo',1)
insert into Estilos(Descripcion,ID_Seccion) values ('Flat design',1)
insert into Estilos(Descripcion,ID_Seccion) values ('Material design',1)
insert into Estilos(Descripcion,ID_Seccion) values ('Maquetador/a Web',2)
insert into Estilos(Descripcion,ID_Seccion) values ('Diseniador/a Web',2)
insert into Estilos(Descripcion,ID_Seccion) values ('Barroco',3)
insert into Estilos(Descripcion,ID_Seccion) values ('Clasicismo',3)
insert into Estilos(Descripcion,ID_Seccion) values('Surrealismo',3)
insert into Estilos(Descripcion,ID_Seccion) values ('Expesionismo',3)
insert into Estilos(Descripcion,ID_Seccion) values ('Moderno',3)
insert into Estilos(Descripcion,ID_Seccion) values ('Pixel Art',3)
go
/*			Tabla Relacion Colores			*/
insert into Relacion_Colores(Descripcion,ID_Estilo) values ('Monocromatico',3)
insert into Relacion_Colores(Descripcion,ID_Estilo) values ('Triada',3)
insert into Relacion_Colores(Descripcion,ID_Estilo) values ('Complementarios',3)
go
/*			Tabla Paginas				*/
insert into Paginas(ID_Seccion,Descripcion)	values (1,'Home/Detalles/Contacto')
insert into Paginas(ID_Seccion,Descripcion)	values (1,'Home')
insert into Paginas(ID_Seccion,Descripcion)	values (1,'Contacto')
insert into Paginas(ID_Seccion,Descripcion)	values (1,'Informacion')
insert into Paginas(ID_Seccion,Descripcion)	values (1,'Login')
go
/*				Tabla Colores x RelacionColores			*/
insert into Colores_X_RelacionColores(ID_Color,ID_RelacionColor) values (1,2)
insert into Colores_X_RelacionColores(ID_Color,ID_RelacionColor) values (2,2)
insert into Colores_X_RelacionColores(ID_Color,ID_RelacionColor) values (3,2)
insert into Colores_X_RelacionColores(ID_Color,ID_RelacionColor) values (1,3)
insert into Colores_X_RelacionColores(ID_Color,ID_RelacionColor) values (5,2)
insert into Colores_X_RelacionColores(ID_Color,ID_RelacionColor) values (6,3)
go
/*				Tabla Elementos X Paginas			*/
insert into Elementos_X_Paginas(ID_Pagina,ID_Disposicion,ID_Elemento) values (3,1,3)
insert into Elementos_X_Paginas(ID_Pagina,ID_Disposicion,ID_Elemento) values (6,1,5)
insert into Elementos_X_Paginas(ID_Pagina,ID_Disposicion,ID_Elemento) values (4,2,2)
insert into Elementos_X_Paginas(ID_Pagina,ID_Disposicion,ID_Elemento) values (3,4,4)
go
/*				Tabla Funcionalidades x Paginas			*/
insert into Funcionalidades_X_Paginas(ID_Funcionalidad,ID_Pagina) values (1,1)
insert into Funcionalidades_X_Paginas(ID_Funcionalidad,ID_Pagina) values (2,1)
insert into Funcionalidades_X_Paginas(ID_Funcionalidad,ID_Pagina) values (3,2)
insert into Funcionalidades_X_Paginas(ID_Funcionalidad,ID_Pagina) values (4,1)
insert into Funcionalidades_X_Paginas(ID_Funcionalidad,ID_Pagina) values (5,1)
insert into Funcionalidades_X_Paginas(ID_Funcionalidad,ID_Pagina) values (2,2)
go

-- Cambios:
-- Saque los not nulls a los identity pk: parece que se arreglo el problema de que empezaba en el ID 2 o ID 6, no lo probe del todo
-- Cambie el formato de los inserts
-- agregue la tabla Funcionalidades_X_Paginas con sus PKs y FKs

-- Problemas:
-- insert into Colores_X_RelacionColores(ID_Color,ID_RelacionColor) values (1,2) cuando los id se repiten los los inserts ocurre un error por ejemplo no puedo hacer esto
/*
insert into Colores_X_RelacionColores(ID_Color,ID_RelacionColor) values (1,2)
insert into Colores_X_RelacionColores(ID_Color,ID_RelacionColor) values (1,2)

-- esto lo mismo los dos IDs ultimos tiran error porque se repiten 
insert into Elementos_X_Paginas(ID_Pagina,ID_Disposicion,ID_Elemento) values (1,1,3)
insert into Elementos_X_Paginas(ID_Pagina,ID_Disposicion,ID_Elemento) values (4,1,3)
*/