
Use [Ferreira_Huarcaya_DB];

-- tablas "terminadas" --> Secciones,Nivel Acesso,Colores,Datos_Personales,Usuarios,Paginas
-- PedidosWebPage,Categorias,Funcionalidades_X_Paginas,Disposicion_Elementos,Elementos_X_Paginas


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
insert into Nivel_Acceso(Descripcion)
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
insert into Funcionalidades(Descripcion,Precio)
values
('',0),
('',100),
('',1000),
('',999),
('',250),
('',180),
('',5000),
('',2300);

--Que son elementos?
insert into Elementos(Descripcion,Precio)
values
()




--                                  Tablas No Mestras



--Usuario = 1/Staff = 2/Admin = 3 se me ocurrio a mi
-- O es autonumerico no tengo que agregar ID_Nivel
insert into Usuarios(NombreUsuario,Contraseña,ID_Nivel)
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



insert into Colores_X_RelacionColores(ID_Color,ID_RelacionColores)
values
(1,),
(2,),
(3,),
(1,),
(1,),
(5,),
(6,),

-- el ID es indentity(1,1)
insert into Relacion_Colores(Descripcion,ID_Estilo)
values
(,)

-- el ID es indentity(1,1)
insert into Estilos(Descripcion,ID_RelacionColores)
values
('Esqueumorfismo'),
('Flat design'),
('Material design'),
('Maquetador/a Web'),
('Diseniador/a Web'),
('Barroco'),
('Clasicismo'),
('Surrealismo'),
('Expesionismo'),
('Moderno'),
('Pixel Art');

insert into Secciones(Descripcion,ID_Estilo)
values
('WebPages',1),
('WebPages',2),
('WebPages',3),
('Contrataciones',4),
('Contrataciones',5),
('Arte',6),
('Arte',7),
('Arte',8),
('Arte',9),
('Arte',10),
('Arte',11);



--La verdad no se si va antes o despues
insert into Paginas(ID_Pedido,Descripcion)
values
(1,'Home/Detalles/Contacto'),
(2,'Home'),
(3,'Contacto'),
(4,'Informacion'),
(5,'Login');

insert into PedidosWebPage(ID_Usuario,ID_Pagina,ID_Categoria)
values
(1,1,2),
(2,2,3),
(3,3,5),
(4,4,1);



insert into Funcionalidades_X_Paginas(ID_Funcionalidad,ID_Pagina)
values
(1,1),
(2,1),
(3,2),
(4,1),
(5,1),
(2,2);


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






