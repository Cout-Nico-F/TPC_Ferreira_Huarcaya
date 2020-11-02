
Use [Ferreira_Huarcaya_DB];

--                                   Tablas Maestras

insert into Colores(Descripcion)/*listo*/
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

insert into Niveles_Acceso(Descripcion)/*listo*/
values
('Usuario'),
('Staff'),
('Admin');


insert into Categorias(Descripcion)/*listo*/
values 
('Ninios'),
('Noticias'),
('Blog'),
('E-Commerce'),
('Publicidad'),
('Portfolio');

insert into Funcionalidades(Descripcion,Costo)/*listo*/
values
('Conexion Base de Datos',0),
('Envio mail automatico',100),
('Evento envial mail con boton',1000),
('Implementacion de Google Maps',999),
('Envio de Factura por Mail',250),
('Evento alerta con boton',180),
('Evento pop-up',5000);

insert into Elementos(Descripcion,Costo)/*Se duplicarion los elementos*/
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

insert into Usuarios(ID,NombreUsuario,Contrasenia,ID_Nivel)/*listo*/
values
(1,'JeremiasI21','Jere123',1),
(2,'Lorena23','Lore321',1),
(3,'JazminSR1','Jazz23',1),
(4,'GabiF','GabFru24',1),
(5,'AndreaA2','Andreita15',1),
(6,'AlonsoHS20','AlonsohuarcayaAdmin2',3),
(7,'NicoFerreira1','NicoFerreAdmin1',3);

insert into PedidosWebPage(ID_Usuario,ID_Categoria)/*listo (Edit row 200: Porque empezo desde el ID 2?)*/ 
values
(1,2),
(2,3),
(3,5),
(4,1);


insert into Datos_Personales(ID_Usuario,Nombre_Y_Apellido,Telefono_Movil,Email,Telefono_Fijo,Fecha_Nac,Email_Recuperacion)/*Listo*/
values
(1,'Jeremias Inova','1143726710','JereIno21@hotmail.com','45232234','03/03/99','AnnaMaria44@hotmail.com');
-- Faltan completar los datos de los demas usuarios

insert into Disposicion_Elementos(Descripcion)/*Listo*/
values
('Arriba'),
('Abajo'),
('Izquierda'),
('Derecha'),
('Centrado'),
('Inclinado'),
('Invertido');


insert into Secciones(Descripcion,ID_Pedido)/*Listo*/
values
('WebPages',2), /*('WebPages',1), Como el pedidosWebPages nose porque el ID comienza en 2 entonces al poner 1 tiraba error*/
('Contrataciones',2),
('Arte',3);

insert into Estilos(Descripcion,ID_Seccion)
values
('Esqueumorfismo',3),
('Flat design',3),
('Material design',3),
('Maquetador/a Web',4),
('Diseniador/a Web',4),
('Barroco',4),
('Clasicismo',4),
('Surrealismo',4),
('Expesionismo',4),
('Moderno',4),
('Pixel Art',4);
-- Por alguna razon los IDs empiezan en 3,4 y 5 

insert into Relacion_Colores(Descripcion,ID_Estilo)
values
('Monocromatico',3),
('Triada',3),
('Complementarios',3);
-- Empieza del 2 ni idea porque tampoco

insert into Paginas(ID_Seccion,Descripcion)
values
(3,'Home/Detalles/Contacto'),
(3,'Home'),
(3,'Contacto'),
(3,'Informacion'),
(3,'Login');
/*ID_Secciones empieza desde el 3*/

insert into Colores_X_RelacionColores(ID_Color,ID_RelacionColor)
values
(1,2),
(2,2),
(3,2),
(1,3),
(1,2),
(5,2),
(6,3);
/*ID_Relacion empieza desde el 2 */

insert into Elementos_X_Paginas(ID_Pagina,ID_Disposicion,ID_Elemento)
values
(3,1,3),
(4,1,3),
(6,1,5),
(4,2,2),
(3,4,4);
/*ID_Paginas empieza desde el 3*/



-- Todavia no esta creada esta tabla
/*insert into Funcionalidades_X_Paginas(ID_Funcionalidad,ID_Pagina)
values
(1,1),
(2,1),
(3,2),
(4,1),
(5,1),
(2,2);*/





