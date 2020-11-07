
Use [Ferreira_Huarcaya_DB];
-------------------------------------------------------------------------------
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



