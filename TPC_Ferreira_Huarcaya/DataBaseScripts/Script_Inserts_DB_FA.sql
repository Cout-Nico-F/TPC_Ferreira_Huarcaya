
Use [Ferreira_Huarcaya_DB];

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

-- Si los pongo en este orden se asignaran como esta mas arriba no estoy seguro
insert into Nivel_Acceso(Descripcion)
values
('Usuario'),
('Staff'),
('Admin');

insert into Datos_Personales(Nombre_Y_Apellido,Telefono_Movil,Email,Telefono_Fijo,Fecha_Nac,Email_Recuperacion)
values
('Jeremias Inova','1143726710','JereIno21@hotmail.com','45232234','03/03/99','AnnaMaria44@hotmail.com');

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
('Celeste');

insert into Colores_X_Relacion_Colores(ID_Color,ID_RelacionColores)
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
('Niños'),
('Noticias'),
('Blog'),
('E-commerce'),
('Maquetador/a Web'),
('Diseñador/a Web'),
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
('WebPages',4),
('WebPages',5),
('WebPages',6),
('WebPages',7),
('Contrataciones',8),
('Contrataciones',9),
('Arte',10),
('Arte',11),
('Arte',12),
('Arte',13),
('Arte',14),
('Arte',15),






