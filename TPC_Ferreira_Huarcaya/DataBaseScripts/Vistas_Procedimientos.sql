
Use Ferreira_Huarcaya_DB
-- Vistas
/*Creacion*/
Create view VW_MostrarUsuario as 
Select I.ID_Usuarios,I.ID_Nivel,I.NombreApellido,I.Descripcion From InfoWeb As I
/*Select*/
Select * From VW_MostrarUsuario
/*Esta es una vista innecesariamente innecesesaria*/

-- Procedimientos Almacenados
/*Buscador de usuarios recibe un nombre y contraseña y hace una select de esos dos valores */
alter procedure SP_BuscarUsuario(
	 @NombreUsuario varchar(100),
	 @Contrasenia varchar(200)
)
as
begin
	Select ID,NombreUsuario,Contrasenia From Usuarios Where NombreUsuario=@NombreUsuario and Contrasenia=@Contrasenia
end

exec SP_BuscarUsuario AlonsoHS20,AlonsoHuarcayaAdmin2

Select * From Usuarios