
Use Ferreira_Huarcaya_DB
go
-- VISTAS

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
		begin transaction -- esto es una transaccion quiero que los dos o se ejecuten o no se ejecuten 
	-- Insertamos un nuevo usuario a la tabla usuarios se crea una nueva ID pero para Datos personales la necesitamos, como hacenos?
		insert into Usuarios(NombreUsuario,Contrasenia,ID_Nivel) values (@NombreUsuario,@Contrasenia,@ID_Nivel)
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
/*	 Select para verificar si se ingreso un usuario Correctamente    */

Select * From Usuarios 
go
/*		Observaciones	*/

/*
 1 - Tenemos que hacer que no se puedan ingresar los mismo datos nuevamente, una forma que se me ocurre es que el Email tenga el atributo Unique
 -- si, me parece bien. El email y el nombre de usuario deberian ser unique para que no pueda tener 2 cuentas el mismo email, ni existir 2 veces el mismo nombre de usuario.
	
 2 - Quizas sacar el ID_Nivel porque en realidad cuando en el back de aplicacion tengo que mandar un ID_Nivel siempre mando 1 porque no tengo como saber si el que va a crear una cuenta es un cliente
	 o admin o parte del staff
	 
	 -- se me ocurre que solo el admin pueda crear cuentas de tipo staff y admin para solucionar lo que me decis en el punto 2.
*/

create procedure SP_EditarDatosPersonales(
		@id_Usuario smallint, --el id de usuario no deberia poder editarse ya que es identity y identifica al usuario permanentemente aunque cambie su nombre y otros datos.
		@NombreUsuario varchar(200),
		@Contrasenia varchar(200),
		@NombreApellido varchar(200),
		@TelefonoMovil int,
		@Email varchar(200),
		@TelefonoFijo int
)
as
begin	
		begin try
			begin transaction -- para que se ejecute como un bloque si tira error alguno de los 2 update que me mande al catch
				update Usuarios set  NombreUsuario = @NombreUsuario,Contrasenia = @Contrasenia Where ID = @id_Usuario;
				update Datos_Personales set Nombre_Y_Apellido = @NombreApellido, Telefono_Movil = @TelefonoMovil, Email = @Email,Telefono_Fijo = @TelefonoFijo where ID_Usuario = @id_Usuario;
			commit transaction
		end try
		begin catch
			Rollback transaction
			RAISERROR('Error al editar los datos, compruebe que el id de usuario ingresado es correcto',16,2);
		end catch
end
go

/*		Datos de prueba para SP_EditarDatosPersonales		*/
Exec SP_EditarDatosPersonales
	@id_Usuario = 10,
	@NombreUsuario = 'PruebaCambio',
	@Contrasenia = 'contraCambiada',
	@NombreApellido = 'Prueba Nombre',
	@TelefonoMovil = '12233332',
	@Email = 'prueba@hotmail.com',
	@TelefonoFijo = '4810292'

/*	 Select para verificar si se ingreso un usuario Correctamente    */
go
Select * from Usuarios
go
Select * From Datos_Personales
go

/*		Observaciones		*/

/*

1 - la idea es tener a los usuarios en un list antes y despues buscar coincidencias y si coinciden hace un update de la tabla, recibe un id porque si recibe cualquier otro dato que es modificable 
	no me sirve para buscar coincidencia porque puede que no haya ninguna.
2 - Nose si tira error en caso de que yo no le envie todos los datos en el set de update, tengo que probarlo por ahora recibe todos los datos, en caso de que no se pueda Fecha registro no va a ser modificable por el
	 usuario asi como se creo se envia de nuevo el date.
3 - Me sigue haciendo ruido el ID_Nivel el usuario no va a poder cambiar su id por uno de admin por ejemplo ( ID = 3 ) pero la tabla Usuario necesita un ID, cuando se crea la cuenta ya tiene el ID_Nivel = 1
	entonces no va a poder cambiarlo a a mandarse el mismo numero de ID.
4 - Si pude omitir algunos datos

*/


create procedure SP_ExisteUsuario(
	 @NombreUsuario varchar(200),
	 @Contrasenia varchar(200)
)
as
begin
	If Exists (Select NombreUsuario,Contrasenia From Usuarios Where NombreUsuario = @NombreUsuario and Contrasenia = @Contrasenia)
	select 1
	else
	select 0
end

/*		Datos de	 Prueba			*/ 
Exec SP_ExisteUsuario
	@NombreUsuario = 'JeremiasI21',
	@Contrasenia = 'Jere123'

/*	 Select para verificar si se ingreso  Correctamente    */
Select * From Usuarios

/*			Observaciones			*/
/*
1 - El procedmiento me parece que esta bien, pero deberia recibir una contraseña ya encriptada desde la aplicacion para mas seguridad
*/

/*    Procedimientos que va a usar el admin		*/


--Trigger
