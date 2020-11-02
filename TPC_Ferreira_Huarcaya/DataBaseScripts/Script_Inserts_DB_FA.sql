
Use [Ferreira_Huarcaya_DB_TEST2];


--                                   Tablas Maestras


--No entendi los colores
-- el ID es indentity(1,1)
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

-- Si los pongo en este orden se asignaran como esta mas arriba no estoy seguro
insert into Niveles_Acceso(Descripcion)
values
('Usuario'),
('Staff'),
('Admin');

-- el ID es indentity(1,1)
insert into Categorias(Descripcion)
values 
('Ninios'),
('Noticias'),
('Blog'),
('E-Commerce'),
('Publicidad'),
('Portfolio');

--Que son las funcionalidades?
insert into Funcionalidades(Descripcion,Costo)
values
('Conexion Base de Datos',0),
('Envio mail automatico',100),
('Evento envial mail con boton',1000),
('Implementacion de Google Maps',999),
('Envio de Factura por Mail',250),
('Evento alerta con boton',180),
('Evento pop-up',5000);

--Que son elementos?
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



--Usuario = 1/Staff = 2/Admin = 3 se me ocurrio a mi
-- O es autonumerico no tengo que agregar ID_Nivel
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

-- Faltan datos personales por completar



insert into Colores_X_RelacionColores(ID_Color,ID_RelacionColor)
values
(1,1),
(2,1),
(3,2),
(1,2),
(1,2),
(5,2),
(6,3);

-- el ID es indentity(1,1)
insert into Relacion_Colores(Descripcion,ID_Estilo)
values
('Monocromatico',1),
('Triada',1),
('Complementarios',1);

-- el ID es indentity(1,1)
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

--La verdad no se si va antes o despues
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






