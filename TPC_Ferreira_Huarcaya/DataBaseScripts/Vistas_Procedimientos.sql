
Use Ferreira_Huarcaya_DB

-- Vistas

/*Creacion*/
Create view VW_MostrarUsuario as 
Select I.ID_Usuarios,I.ID_Nivel,I.NombreApellido,I.Descripcion From InfoWeb As I
/*Select*/
Select * From VW_MostrarUsuario
/*Esta es una vista innecesariamente innecesesaria*/

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

create procedure SP_AgregarUsuario(
	 @NombreUsuario varchar(100),
	 @Contrasenia varchar(200)
)
as
begin
	insert into Usuarios(NombreUsuario,Contrasenia,ID_Nivel) values (@NombreUsuario,@Contrasenia,1); 
end
-- El 1 es porque estoy agregando un usuario normal 

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