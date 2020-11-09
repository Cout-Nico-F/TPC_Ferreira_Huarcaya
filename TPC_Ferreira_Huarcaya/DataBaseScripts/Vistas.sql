
Use Ferreira_Huarcaya_DB

/*Esta es una vista innecesariamente innecesesaria*/
Create view VW_MostrarUsuario as 
Select I.ID_Usuarios,I.ID_Nivel,I.NombreApellido,I.Descripcion From InfoWeb As I

Select ID_Usuarios,ID_Nivel,NombreApellido,Descripcion From VW_MostrarUsuario