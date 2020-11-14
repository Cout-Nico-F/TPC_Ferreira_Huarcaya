--use master
--Drop database Ferreira_Huarcaya_DB

create database Ferreira_Huarcaya_DB
go

use Ferreira_Huarcaya_DB
go

create table Funcionalidades (
	ID smallint identity(1,1),
	Descripcion varchar(100) not null,
	Costo int not null
)
	go

create table PaginaWeb(
	ID smallint identity(1,1),
	Titulo varchar(50) not null,
	Descripcion varchar(200) not null,
	Url_Pagina varchar(100) not null,
	Url_Image varchar(100) null
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
	Url_Imagen varchar(200) not null
)
	go
	
create table PedidosWebPage (
	ID smallint identity(1,1),
	ID_Usuario smallint not null,
)
	go
	
create table Usuarios (
	ID smallint identity(1,1),
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
	Email_Recuperacion varchar(200) null,
	Fecha_Registro date not null
)
	go
	
create table Paginas (
	ID smallint identity(1,1),
	Descripcion varchar(100) not null,
)

	go
create table Funcionalidades_X_PedidosWebPage (
	ID_Funcionalidad smallint not null,
	ID_PedidoWebPage smallint not null
)
create table InfoWeb (
	ID_Usuarios smallint not null,
	ID_Nivel smallint not null,
	NombreApellido varchar(200) not null,
	Descripcion varchar(200) not null,
	urlImagen varchar(200) not null
)
go

--Alter Tables de PK

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
	alter table InfoWeb add constraint PKS_InfoWeb primary key (ID_Usuarios,ID_Nivel)
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
	alter table Funcionalidades_X_PedidosWebPage add foreign key (ID_PedidosWebPage) references PedidosWebPage(ID)
	go
	alter table InfoWeb add foreign key (ID_Usuarios) references Usuarios(ID)
	go
	alter table InfoWeb add foreign key (ID_Nivel) references Niveles_Acceso(ID)
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
insert into Funcionalidades(Descripcion,Costo) values ('Conexion Base de Datos',0)
insert into Funcionalidades(Descripcion,Costo) values ('Envio mail automatico',100)
insert into Funcionalidades(Descripcion,Costo) values ('Evento envial mail con boton',1000)
insert into Funcionalidades(Descripcion,Costo) values ('Implementacion de Google Maps',999)
insert into Funcionalidades(Descripcion,Costo) values ('Envio de Factura por Mail',250)
insert into Funcionalidades(Descripcion,Costo) values ('Evento alerta con boton',180)
insert into Funcionalidades(Descripcion,Costo) values ('Evento pop-up',5000)
go

/*				Tabla Usuarios			*/
insert into Usuarios(NombreUsuario,Contrasenia,ID_Nivel) values ('JeremiasI21','Jere123',1)
insert into Usuarios(NombreUsuario,Contrasenia,ID_Nivel) values ('Lorena23','Lore321',1)
insert into Usuarios(NombreUsuario,Contrasenia,ID_Nivel) values ('JazminSR1','Jazz23',1)
insert into Usuarios(NombreUsuario,Contrasenia,ID_Nivel) values ('GabiF','GabFru24',1)
insert into Usuarios(NombreUsuario,Contrasenia,ID_Nivel) values ('AndreaA2','Andreita15',1)
insert into Usuarios(NombreUsuario,Contrasenia,ID_Nivel) values ('AlonsoHS20','AlonsohuarcayaAdmin2',3)
insert into Usuarios(NombreUsuario,Contrasenia,ID_Nivel) values ('NicoFerreira1','NicoFerreAdmin1',3)
go
/*				Tabla PedidosWebPage		*/

/* NO HACE FALTA QUE TENGA DATOS*/

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
insert into Estilos(Descripcion,Url_Imagen) values ('Moderno','../Imagenes/ImagenesPaginas/Moderno.jpg')
insert into Estilos(Descripcion,Url_Imagen) values ('Flat design','../Imagenes/ImagenesPaginas/Flat.jpg')
insert into Estilos(Descripcion,Url_Imagen) values ('Material design','../Imagenes/ImagenesPaginas/Material.png')
go
/*			Tabla Paginas				*/
insert into Paginas(ID_Seccion,Descripcion)	values (1,'Home/Detalles/Contacto')
insert into Paginas(ID_Seccion,Descripcion)	values (1,'Home')
insert into Paginas(ID_Seccion,Descripcion)	values (1,'Contacto')
insert into Paginas(ID_Seccion,Descripcion)	values (1,'Informacion')
insert into Paginas(ID_Seccion,Descripcion)	values (1,'Login')
go
/*				Tabla Funcionalidades x PedidosWebPage			*/
--estos inserts se hacen al agregarle una funcionalidad a un pedido. Empieza vacio porque no hay ningun pedido. Amenos que hagamos un pedido de muestra.

/*insert into Funcionalidades_X_Paginas(ID_Funcionalidad,ID_Pagina) values (1,1)
go
*/


/*				Tabla Pagina Web					*/
insert into PaginaWeb(Titulo,Descripcion,Url_Pagina,Url_Image) values ('Full Width Pics','Template con imagenes grandes','../Templates Prefabricados/Template_01/index.html','../Imagenes/ImagenesPaginas/ImagenesFull.png')
insert into PaginaWeb(Titulo,Descripcion,Url_Pagina,Url_Image) values ('Blog Spot','Template para armar un blog','../Templates Prefabricados/Template_02/index.html','../Imagenes/ImagenesPaginas/Blog.png')
insert into PaginaWeb(Titulo,Descripcion,Url_Pagina,Url_Image) values ('Modern Business','Template moderno para empresas','../Templates Prefabricados/Template_03/index.html','../Imagenes/ImagenesPaginas/Moderno.png')
go

/*				Tabla Informacion				*/
insert into InfoWeb(ID_Usuarios,NombreApellido,ID_Nivel,Descripcion,urlImagen) values (6,'Alonso Huarcaya',3,'Hola me llamo Alonso', '../Imagenes/Alonso.jpg' )
insert into InfoWeb(ID_Usuarios,NombreApellido,ID_Nivel,Descripcion,urlImagen) values (7,'Nicolas Ferreira',3,'Hola me llamo Nicolas', '../Imagenes/NicolasFerreira.jpg' )
go


