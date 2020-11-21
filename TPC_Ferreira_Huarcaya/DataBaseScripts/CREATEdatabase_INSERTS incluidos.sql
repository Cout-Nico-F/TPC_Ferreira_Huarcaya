--use master
--Drop database Ferreira_Huarcaya_DB

create database Ferreira_Huarcaya_DB
go

use Ferreira_Huarcaya_DB
go
create table Funcionalidades (
	ID smallint identity(1,1),
	Descripcion varchar(100) not null,
	Costo int not null,
	Habilitado bit not null
)
	go

create table PaginaWeb(
	ID smallint identity(1,1),
	Titulo varchar(50) not null,
	Descripcion varchar(200) not null,
	Url_Pagina varchar(100) not null,
	Url_Image varchar(200) null,
	Habilitado bit not null,
	Precio int not null
)
	go
	
create table Niveles_Acceso (
	ID smallint identity(1,1),
	Descripcion varchar(100) not null
)
	go

create table Estilos (
	ID smallint identity(1,1),
	Descripcion varchar(100) not null,
	Url_Imagen varchar(200) not null,
	Habilitado bit not null
)
	go
	
create table PedidosWebPage (
	ID smallint identity(1,1),
	ID_Usuario smallint not null,
	ID_Estilo smallint not null,
	PrecioTotal int not null,
	Comentarios varchar(200) null,
	Fecha date not null
)
	go
	
create table Usuarios (
	ID smallint identity(1,1),
	NombreUsuario varchar(100) not null,
	Contrasenia varchar(200) not null, --tal vez a modificar a futuro cuando veamos como cifrarla o cuanto ocupa el hash.
	ID_Nivel smallint not null,
	Descripcion varchar(200) null,
	urlImagen varchar(200) null,
	Habilitado bit not null
)
	go
create table Datos_Personales (
	ID_Usuario smallint not null,
	Nombre_Y_Apellido varchar(200) not null,
	Telefono_Movil int null,
	Email varchar(200) not null,
	Telefono_Fijo int null,
	Fecha_Nac date not null,
	Email_Recuperacion varchar(200) null,
	Fecha_Registro date not null
)
	go
	
create table Paginas (
	ID smallint identity(1,1),
	Descripcion varchar(100) not null,
	Url_Imagen varchar(100) null,
	Habilitado bit not null
)

	go
create table Funcionalidades_X_PedidosWebPage (
	ID_Funcionalidad smallint not null,
	ID_PedidoWebPage smallint not null
)
	go
create table Paginas_X_PedidosWebPage (
	ID_Pagina smallint not null,
	ID_PedidoWebPage smallint not null
)
	go
create table PedidosPaginaPrediseniada (
	ID smallint identity(1,1),
	ID_Usuario smallint not null,
	ID_PaginaWeb smallint not null,
	Precio int not null,
	Fecha date not null,
	Comentarios varchar(200) null
)
--Alter Tables de PK
	alter table PedidosPaginaPrediseniada add constraint PK_PedidosPrediseniadas primary key (ID)
	go
	alter table Funcionalidades add constraint PK_Funcionalidades primary key (ID)
	go
	alter table Niveles_Acceso add constraint PK_Niveles_Acceso primary key (ID)
	go
	alter table Estilos add constraint PK_Estilos primary key (ID)
	go
	alter table PedidosWebPage add constraint PK_PedidosWebPage primary key (ID)
	go
	alter table Usuarios add constraint PK_Usuarios primary key (ID)
	go
	alter table Datos_Personales add constraint PK_Datos_Personales primary key (ID_Usuario)
	go
	alter table Paginas add constraint PK_Paginas primary key (ID)
	go
	alter table Funcionalidades_X_PedidosWebPage add constraint PKS_Funcionalidades_X_Pedidos primary key (ID_Funcionalidad, ID_PedidoWebPage)
	go
	alter table PaginaWeb add constraint PK_PaginaWeb primary key (ID)
	go
	alter table Paginas_X_PedidosWebPage add constraint PKS_Paginas_X_Pedidos primary key (ID_Pagina, ID_PedidoWebPage)
	go
--Alter Tables FK's
	alter table PedidosWebPage add foreign key (ID_Usuario) references Usuarios(ID)
	go
	alter table Usuarios add foreign key (ID_Nivel) references Niveles_Acceso(ID)
	go
	alter table Datos_Personales add foreign key (ID_Usuario) references Usuarios(ID)
	go
	alter table Funcionalidades_X_PedidosWebPage add foreign key (ID_Funcionalidad) references Funcionalidades(ID)
	go
	alter table Funcionalidades_X_PedidosWebPage add foreign key (ID_PedidoWebPage) references PedidosWebPage(ID)
	go
	alter table Paginas_X_PedidosWebPage add foreign key (ID_Pagina) references Paginas(ID)
	go
	alter table Paginas_X_PedidosWebPage add foreign key (ID_PedidoWebPage) references PedidosWebPage(ID)
	go
	alter table PedidosWebPage add foreign key (ID_Estilo) references Estilos(ID)
	go
	alter table PedidosPaginaPrediseniada add foreign key (ID_Usuario) references Usuarios(ID)
	go
	alter table PedidosPaginaPrediseniada add foreign key (ID_PaginaWeb) references PaginaWeb(ID)
	go
--Alter tables CHECKS
	alter table Funcionalidades add constraint CH_Funcionalidades_Costo check (Costo >= 0)
	--Falta: Checks de varchars de espacio vacio, Check de Email valido

-- Inserts into

go
/*				Tabla Niveles Acceso	 */
insert into Niveles_Acceso(Descripcion) values ('Usuario')
insert into Niveles_Acceso(Descripcion) values ('Staff')
insert into Niveles_Acceso(Descripcion) values ('Admin')
go

/*				Tabla Funcionalidades	*/
insert into Funcionalidades(Descripcion,Costo,Habilitado) values ('Conexion Base de Datos',0,1)
insert into Funcionalidades(Descripcion,Costo,Habilitado) values ('Envio mail automatico',100,1)
insert into Funcionalidades(Descripcion,Costo,Habilitado) values ('Evento envial mail con boton',1000,1)
insert into Funcionalidades(Descripcion,Costo,Habilitado) values ('Implementacion de Google Maps',999,1)
insert into Funcionalidades(Descripcion,Costo,Habilitado) values ('Envio de Factura por Mail',250,1)
insert into Funcionalidades(Descripcion,Costo,Habilitado) values ('Evento alerta con boton',180,1)
insert into Funcionalidades(Descripcion,Costo,Habilitado) values ('Evento pop-up',5000,1)
insert into Funcionalidades(Descripcion,Costo,Habilitado) values ('Prueba Deshabilitado',5000,0)
go

/*				Tabla Usuarios			*/
insert into Usuarios(NombreUsuario,Contrasenia,ID_Nivel,Habilitado) values ('JeremiasI21','Jere123',1,0)
insert into Usuarios(NombreUsuario,Contrasenia,ID_Nivel,Habilitado) values ('Lorena23','Lore321',1,1)
insert into Usuarios(NombreUsuario,Contrasenia,ID_Nivel,Habilitado) values ('JazminSR1','Jazz23',1,1)
insert into Usuarios(NombreUsuario,Contrasenia,ID_Nivel,Habilitado) values ('GabiF','GabFru24',1,1)
insert into Usuarios(NombreUsuario,Contrasenia,ID_Nivel,Habilitado) values ('AndreaA2','Andreita15',1,1)
insert into Usuarios(NombreUsuario,Contrasenia,ID_Nivel,Habilitado,Descripcion,UrlImagen) values ('AlonsoHS20','AlonsohuarcayaAdmin2',3,1,'Estudiante UTN-FRPG','../Imagenes/Alonso.jpg')
insert into Usuarios(NombreUsuario,Contrasenia,ID_Nivel,Habilitado,Descripcion,UrlImagen) values ('NicoFerreira1','NicoFerreAdmin1',3,1,'Estudiante UTN-FRPG','../Imagenes/NicolasFerreira.jpg')
go

/*				Tabla Datos Personales				*/
insert into Datos_Personales(ID_Usuario,Nombre_Y_Apellido,Telefono_Movil,Email,Telefono_Fijo,Fecha_Nac,Email_Recuperacion,Fecha_Registro) values (1,'Jeremias Inova','1143726710','JereIno21@hotmail.com','45232234','03/03/1986','JereIno21@hotmail.com','01/02/2020')
insert into Datos_Personales(ID_Usuario,Nombre_Y_Apellido,Telefono_Movil,Email,Telefono_Fijo,Fecha_Nac,Email_Recuperacion,Fecha_Registro) values (2,'Lorena Menna','1143726710','LoreMe01@hotmail.com','45232234','03/03/1990','JereIno21@hotmail.com','07/02/2020')
insert into Datos_Personales(ID_Usuario,Nombre_Y_Apellido,Telefono_Movil,Email,Telefono_Fijo,Fecha_Nac,Email_Recuperacion,Fecha_Registro) values (3,'Jazmin Serna','1143726710','JazminSR@hotmail.com','45232234','12/12/2005','JereIno21@hotmail.com','01/01/2020')
insert into Datos_Personales(ID_Usuario,Nombre_Y_Apellido,Telefono_Movil,Email,Telefono_Fijo,Fecha_Nac,Email_Recuperacion,Fecha_Registro) values (4,'Gabriel Fernandez','114379384','GabrielFe21@hotmail.com','45232234','09/10/2000','JereIno21@hotmail.com','01/01/2020')
insert into Datos_Personales(ID_Usuario,Nombre_Y_Apellido,Telefono_Movil,Email,Telefono_Fijo,Fecha_Nac,Email_Recuperacion,Fecha_Registro) values (5,'Andrea Ambar','1143726710','AndreaAA@hotmail.com','45232234','01/06/2002','JereIno21@hotmail.com','02/06/2020')
insert into Datos_Personales(ID_Usuario,Nombre_Y_Apellido,Telefono_Movil,Email,Telefono_Fijo,Fecha_Nac,Email_Recuperacion,Fecha_Registro) values (6,'Alonso Huarcaya','1123390582','AlonsoHS20@hotmail.com','45232234','01/04/1999','JereIno21@hotmail.com','03/01/2020')
insert into Datos_Personales(ID_Usuario,Nombre_Y_Apellido,Telefono_Movil,Email,Telefono_Fijo,Fecha_Nac,Email_Recuperacion,Fecha_Registro) values (7,'Nicolas Ferreira','1132937793','NicoFerre@hotmail.com','45232234','01/02/1997','JereIno21@hotmail.com','07/05/2019')
go
/*			Tabla Estilos				*/		
insert into Estilos(Descripcion,Url_Imagen,Habilitado) values ('Moderno','../Imagenes/ImagenesPaginaWeb/Moderno.jpg',1)
insert into Estilos(Descripcion,Url_Imagen,Habilitado) values ('Flat design','../Imagenes/ImagenesPaginaWeb/Flat.jpg',1)
insert into Estilos(Descripcion,Url_Imagen,Habilitado) values ('Material design','../Imagenes/ImagenesPaginaWeb/Material.png',1)
go
/*			Tabla Paginas				*/
insert into Paginas(Descripcion,Url_Imagen,Habilitado) values ('Home','../Imagenes/ImagenesPaginas/Home.jpg',1)
insert into Paginas(Descripcion,Url_Imagen,Habilitado) values ('Contacto','../Imagenes/ImagenesPaginas/Contacto.jpg',1)
insert into Paginas(Descripcion,Url_Imagen,Habilitado) values ('Login','../Imagenes/ImagenesPaginas/Login.jpg',1)
go

--estos inserts se hacen al agregarle una funcionalidad a un pedido. Empieza vacio porque no hay ningun pedido. Amenos que hagamos un pedido de muestra.
--pedidos de prueba para poder probar la vista
insert into pedidoswebpage(id_usuario,id_estilo,preciototal,fecha) values (1,1,19000,'01/01/2020')
insert into pedidoswebpage(id_usuario,id_estilo,preciototal,fecha) values (2,1,18000,'01/01/2020')
insert into pedidoswebpage(id_usuario,id_estilo,preciototal,fecha) values (3,2,10000,'01/01/2020')
go
/*insert into Funcionalidades_X_PedidosWebPage*/
insert into funcionalidades_x_pedidoswebpage (ID_Funcionalidad,ID_Pedidowebpage) values (1,1)
insert into funcionalidades_x_pedidoswebpage (ID_Funcionalidad,ID_Pedidowebpage) values (2,1)
insert into funcionalidades_x_pedidoswebpage (ID_Funcionalidad,ID_Pedidowebpage) values (4,1)

insert into funcionalidades_x_pedidoswebpage (ID_Funcionalidad,ID_Pedidowebpage) values (6,2)
insert into funcionalidades_x_pedidoswebpage (ID_Funcionalidad,ID_Pedidowebpage) values (4,2)
insert into funcionalidades_x_pedidoswebpage (ID_Funcionalidad,ID_Pedidowebpage) values (3,2)

insert into funcionalidades_x_pedidoswebpage (ID_Funcionalidad,ID_Pedidowebpage) values (8,3)
insert into funcionalidades_x_pedidoswebpage (ID_Funcionalidad,ID_Pedidowebpage) values (2,3)
go
/*insert into Paginas_X_PedidosWebPage*/
insert into paginas_X_pedidoswebpage (ID_Pagina,ID_Pedidowebpage) values (1,1)
insert into paginas_X_pedidoswebpage (ID_Pagina,ID_Pedidowebpage) values (3,1)

insert into paginas_X_pedidoswebpage (ID_Pagina,ID_Pedidowebpage) values (1,2)

insert into paginas_X_pedidoswebpage (ID_Pagina,ID_Pedidowebpage) values (1,3)
go
/*				Tabla Pagina Web					*/
insert into PaginaWeb(Titulo,Descripcion,Url_Pagina,Url_Image,Precio,Habilitado) values ('Full Width Pics','Template con imagenes grandes','../Templates Prefabricados/Template_01/index.html','../Imagenes/ImagenesPaginaWeb/ImagenesFull.png',10000,1)
insert into PaginaWeb(Titulo,Descripcion,Url_Pagina,Url_Image,Precio,Habilitado) values ('Blog Spot','Template para armar un blog','../Templates Prefabricados/Template_02/index.html','../Imagenes/ImagenesPaginaWeb/Blog.png',11000,1)
insert into PaginaWeb(Titulo,Descripcion,Url_Pagina,Url_Image,Precio,Habilitado) values ('Modern Business','Template moderno para empresas','../Templates Prefabricados/Template_03/index.html','../Imagenes/ImagenesPaginaWeb/Moderno.png',12000,1)
insert into PaginaWeb(Titulo,Descripcion,Url_Pagina,Url_Image,Precio,Habilitado) values ('Prueba1','Template Prueba Bajas','../Templates Prefabricados/Template_03/index.html','../Imagenes/ImagenesPaginaWeb/Moderno.png',1000,1)
go


