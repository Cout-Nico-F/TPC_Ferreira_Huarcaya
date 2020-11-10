
Use Ferreira_Huarcaya_DB

-- Vistas

-- Procedimientos Almacenados

/*Buscador de usuarios*/
-- Podria ser una vista tambien
create procedure SP_BuscarUsuario(
	 @NombreUsuario varchar(100),
	 @Contrasenia varchar(200)
)
as
begin
	Select ID,NombreUsuario,Contrasenia From Usuarios Where NombreUsuario=@NombreUsuario and Contrasenia=@Contrasenia
end

exec SP_BuscarUsuario AlonsoHS20,AlonsoHuarcayaAdmin2

Select * From Usuarios

/*Agregar Usuarios*/

/*create procedure SP_AgregarUsuario(
	 @NombreUsuario varchar(100),
	 @Contrasenia varchar(200)
)
as
begin
	insert into Usuarios(NombreUsuario,Contrasenia,ID_Nivel) values (@NombreUsuario,@Contrasenia,1); 
end
-- El 1 es porque estoy agregando un usuario normal */

/*Agregar admin*/

create procedure SP_AgregarAdmin(
	 @NombreUsuario varchar(100),
	 @Contrasenia varchar(200)
)
as
begin
	insert into Usuarios(NombreUsuario,Contrasenia,ID_Nivel) values (@NombreUsuario,@Contrasenia,3); 
end

/*Agregar gente staff*/

create procedure SP_AgregarStaff(
	 @NombreUsuario varchar(100),
	 @Contrasenia varchar(200)
)
as
begin
	insert into Usuarios(NombreUsuario,Contrasenia,ID_Nivel) values (@NombreUsuario,@Contrasenia,2); 
end

/*Modificar Datos Personales*/

create procedure SP_ModificarDatos(
	@Id_Usuario smallint,
	@Nombre_Y_Apellido varchar(200),
	@telefono_Movil int,
	@Email varchar(200),
	@Telefono_Fijo int,
	@Fecha_Nac date,
	@Email_Recuperacion varchar(200)
)
as
begin
	insert into Datos_Personales(ID_Usuario,Nombre_Y_Apellido,Telefono_Movil,Email,Telefono_Fijo,Fecha_Nac,Email_Recuperacion) values (@Id_Usuario,@Nombre_Y_Apellido,@telefono_Movil,@Email,@Telefono_Fijo,@Fecha_Nac,@Email_Recuperacion)
end
-- Deberia ser quizas un trigger que vea si algunos campos son nulos porque por ejemplo el telefono fijo es opcional o sea que puede ser null




/*		Crear cuenta a nuevo Usuario			*/

create procedure SP_AgregarUsuario( -- Podriamos agregar tambien una fecha de registracion es un getdate()
		--@ID smallint, -- Usuarios no deberia ser identity?? ya lo cambie 
		@NombreUsuario varchar(200),
		@Contrasenia varchar(200),
		@ID_Nivel smallint,
		@NombreApellido smallint,
		@TelefonoMovil int,
		@Email varchar(200),
		@TelefonoFijo int,
		@FechaNacimiento date,
		@EmailRecuperacion varchar(200)
)
as
begin 
	begin try
		begin transaction -- esto es una transaccion quiero que los dos o se ejecuten o no se ejecuten 
	-- Insertamos un nuevo usuario a la tabla usuarios se crea una nueva ID pero para Datos personales la necesitamos, como hacenos?
		insert into Usuarios(ID,NombreUsuario,Contrasenia,ID_Nivel) values (@NombreUsuario,@Contrasenia,@ID_Nivel)
		-- Insertamos datos en datos personales
		Declare @ID_Usu smallint	
		Set @ID_Usu = @@IDENTITY -- devuelve el ultimo id generado (nose si es obligatorio que sea Id identity)
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
