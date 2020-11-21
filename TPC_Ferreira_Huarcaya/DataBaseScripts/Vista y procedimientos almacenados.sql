
Use Ferreira_Huarcaya_DB
go
-- VISTAS
/*Esta vista es para que los admin puevan ver una lista de los pedidos detallados.*/
--drop view vw_ListaPedidos

create view vw_ListaPedidos
as
select p.fecha, p.id as 'Id de Pedido', p.id_usuario, e.descripcion as Estilo, 
(select count(*) from paginas_x_pedidoswebpage as pxp where p.id = pxp.id_pedidowebpage)as 'Cantidad de Paginas',
(select count(*) from funcionalidades_x_pedidoswebpage as fxp where p.id = fxp.id_pedidowebpage)as 'Cantidad de Funcionalidades'
from pedidoswebpage as p
inner join estilos as e on p.id_estilo = e.id
group by p.fecha,p.id, p.id_usuario, e.descripcion
go
/*
/* Ejemplos de consultas utiles para esta vista */
--Todos los pedidos
select * from vw_ListaPedidos 
--Cuantas paginas de estilo moderno fueron pedidas hasta hoy
select count(*)as 'Cantidad de paginas modernas pedidas a la fecha' from vw_listapedidos where estilo = 'Moderno'
--Cuantas paginas de cada estilo fueron pedidas
select distinct
(select count(*) from vw_listapedidos where estilo = 'Moderno')as 'Cantidad de paginas modernas pedidas a la fecha',
(select count(*) from vw_listapedidos where estilo = 'Flat design')as 'Cantidad de paginas Flat design pedidas a la fecha',
(select count(*)from vw_listapedidos where estilo = 'Material design')as 'Cantidad de paginas Material design pedidas a la fecha' 
from vw_listapedidos 
*/


-- PROCEDIMIENTOS ALMACENADOS
/*		Crear cuenta a nuevo Usuario			*/

create procedure SP_CrearUsuario( 
		@NombreUsuario varchar(200),
		@Contrasenia varchar(200),
		@ID_Nivel smallint,
		@NombreApellido varchar(200),
		@TelefonoMovil int,
		@Email varchar(200),
		@TelefonoFijo int,
		@FechaNacimiento date,
		@EmailRecuperacion varchar(200)
)
as
begin 
	begin try
		begin transaction
		-- Insertamos un nuevo usuario a la tabla usuarios
		insert into Usuarios(NombreUsuario,Contrasenia,ID_Nivel,Habilitado) values (@NombreUsuario,@Contrasenia,@ID_Nivel,1)--habilitado siempre viene en 1
		-- Insertamos datos en datos personales
		Declare @ID_Usu smallint	
		Set @ID_Usu = @@IDENTITY -- devuelve el ultimo id generado
		insert into Datos_Personales(ID_Usuario,Nombre_Y_Apellido,Telefono_Movil,Email,Telefono_Fijo,Fecha_Nac,Email_Recuperacion,Fecha_Registro) values(
		@ID_Usu,
		@NombreApellido,
		@telefonoMovil,
		@Email,
		@TelefonoFijo,
		@FechaNacimiento,
		@EmailRecuperacion,
		getdate()
		)
		commit transaction
	end try
	begin catch
		Rollback transaction -- la base de datos vuelve a como estaba en caso que no no se haya podido insertar los datos 
	-- Mensaje de error , severidad (int) > 16, estado (int) podemos usarlo en la aplicacion
		RAISERROR('Error al crear el usuario',16,1);
	end catch
end
go
/*		Datos de Prueba para SP_CrearUsuario		*/

Exec SP_CrearUsuario
	@NombreUsuario = 'PruebaNombre01',
	@Contrasenia = 'contra',
	@ID_Nivel = 1,
	@NombreApellido = 'Prueba Nombre',
	@TelefonoMovil = '12233332',
	@Email = 'prueba@hotmail.com',
	@TelefonoFijo = '4810292',
	@FechaNacimiento = '05/01/2020', 
	@EmailRecuperacion = 'prueba@hotmail.com'

go
 /*Procedimiento usado para editar los datos personales de un usuario*/
create procedure SP_EditarDatosPersonales(
		@id_Usuario smallint,
		@NombreUsuario varchar(200),
		@Contrasenia varchar(200),
		@NombreApellido varchar(200),
		@TelefonoMovil int,
		@Email varchar(200),
		@TelefonoFijo int,
		@EmailRecuperacion varchar(200)
)
as
begin	
		begin try
			begin transaction -- para que se ejecute como un bloque si tira error alguno de los 2 update que me mande al catch
				update Usuarios set  NombreUsuario = @NombreUsuario,Contrasenia = @Contrasenia Where ID = @id_Usuario;
				update Datos_Personales set Nombre_Y_Apellido = @NombreApellido, Telefono_Movil = @TelefonoMovil, Email = @Email,Telefono_Fijo = @TelefonoFijo,Email_Recuperacion=@EmailRecuperacion where ID_Usuario = @id_Usuario;
			commit transaction
		end try
		begin catch
			Rollback transaction
			RAISERROR('Error al editar los datos, compruebe que el id de usuario ingresado es correcto',16,2);
		end catch
end
go

/*	Datos de prueba para SP_EditarDatosPersonales */		
Exec SP_EditarDatosPersonales
	@id_Usuario = 9,
	@NombreUsuario = 'PruebaCambio',
	@Contrasenia = 'contraCambiada',
	@NombreApellido = 'Prueba Nombre',
	@TelefonoMovil = '12233332',
	@Email = 'prueba@hotmail.com',
	@TelefonoFijo = '4810292'

go

/*Tenemos pensado usar triggers para insted of delete en funcionalidades, paginas, estilos y usuarios*/
/*Y varios procedimientos almacenados mas. (por ejemplo para agregar un pedido con sus paginas y funcionalidades)*/
--Triggers
CREATE TRIGGER tr_Eliminar_Funcionalidad ON Funcionalidades
INSTEAD OF DELETE
AS
BEGIN
	UPDATE Funcionalidades SET Habilitado = 0 WHERE id = (SELECT id FROM deleted)
END
go

CREATE TRIGGER tr_Eliminar_Estilo ON Estilos
INSTEAD OF DELETE
AS
BEGIN
	UPDATE Estilos SET Habilitado = 0 WHERE id = (SELECT id FROM deleted)
END
go

CREATE TRIGGER tr_Eliminar_Pagina ON Paginas
INSTEAD OF DELETE
AS
BEGIN
	UPDATE Paginas SET Habilitado = 0 WHERE id = (SELECT id FROM deleted)
END
go

CREATE TRIGGER tr_Eliminar_Usuario ON Usuarios
INSTEAD OF DELETE
AS
BEGIN
	UPDATE Usuarios SET Habilitado = 0 WHERE id = (SELECT id FROM deleted)
END
go

CREATE TRIGGER tr_Eliminar_PaginaWeb On PaginaWeb
INSTEAD OF DELETE
AS
BEGIN 
	UPDATE PaginaWeb SET Habilitado = 0 Where id = (SELECT id From deleted)
END