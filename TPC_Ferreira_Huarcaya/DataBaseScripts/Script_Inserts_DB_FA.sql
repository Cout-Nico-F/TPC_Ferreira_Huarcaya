
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
('Romeo09','MellamanRomeo2',1),
('ElisaVilla99','EliVi1999',1),
('AlonsoHS20','AlonsohuarcayaAdmin2',3),
('NicoFerreira1','NicoFerreAdmin1',3);

-- Si los pongo en este orden se asignaran como esta mas arriba no estoy seguro
insert into Nivel_Acceso(Descripcion)
values
('Usuario'),
('Staff'),
('Admin');


