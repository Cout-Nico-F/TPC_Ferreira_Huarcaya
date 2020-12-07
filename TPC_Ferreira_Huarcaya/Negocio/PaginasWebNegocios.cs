using Modelo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;


namespace Negocio
{
    public class PaginasWebNegocios
    {
        public List<PaginaWeb> listaPaginassWeb()
        {
            ConexionMSSQL conexion = new ConexionMSSQL();

            List<PaginaWeb> listaPaginaWeb = new List<PaginaWeb>();

            SqlDataReader lectura = conexion.Consulta_Rapida("Select ID,Titulo,Descripcion,Url_Pagina,Url_Image,Habilitado,Precio From PaginaWeb");

            while (lectura.Read())
            {
                PaginaWeb aux = new PaginaWeb();
                aux.ID = lectura.GetInt16(0);
                aux.Titulo = lectura.GetString(1);
                aux.Descripcion = lectura.GetString(2);
                aux.Url_PaginaWeb = lectura.GetString(3);
                aux.Url_Imagen = lectura.GetString(4);
                aux.Habilitado = lectura.GetBoolean(5);
                aux.Precio = lectura.GetInt32(6);

                listaPaginaWeb.Add(aux);
            }
            conexion.Desconectar();
            return listaPaginaWeb;
        }
        public int Eliminar(Int16 id)
        {
            ConexionMSSQL conexion = new ConexionMSSQL();
            int rowsAfectadas = conexion.SentenciaNonQuery("Delete from PaginaWeb where ID =" + id);
            conexion.Desconectar();
            return rowsAfectadas;
        }
        public int EnviarDatos(PaginaWeb pag)
        {
            //insert into PaginaWeb(Titulo,Descripcion,Url_Pagina,Url_Image) values ('Modern Business','Template moderno para empresas','../Templates Prefabricados/Template_03/index.html','../Imagenes/ImagenesPaginas/Moderno.png')
            ConexionMSSQL conexion = new ConexionMSSQL();
            int rowsAfectadas = conexion.SentenciaNonQuery("insert into PaginaWeb(Titulo,Descripcion,Url_Pagina,Url_Image,Habilitado,Precio) values ('" + pag.Titulo + "','" + pag.Descripcion + "','" + pag.Url_PaginaWeb + "','" + pag.Url_Imagen + "','" + pag.Habilitado + "','" + pag.Precio + "')");
            conexion.Desconectar();
            return rowsAfectadas;
        }
        public int Modificar(PaginaWeb pag)
        {
            ConexionMSSQL conexion = new ConexionMSSQL();
            int rowsAfectadas = conexion.SentenciaNonQuery("update PaginaWeb set Titulo='" + pag.Titulo + "',Descripcion='" + pag.Descripcion + "',Url_Pagina='" + pag.Url_PaginaWeb + "',Url_Image='" + pag.Url_Imagen + "',Habilitado=" + Convert.ToInt16(pag.Habilitado) + ",Precio=" + pag.Precio + " Where ID=" + pag.ID);
            conexion.Desconectar();
            return rowsAfectadas;
        }
        public void ActualizarDatos(Usuario usu, DatosPersonales dat)
        {
            using (SqlConnection sql = new SqlConnection("data source = localhost\\SQLEXPRESS01; initial catalog = Ferreira_Huarcaya_DB; integrated security = sspi"))
            {
                using (SqlCommand cmd = new SqlCommand("SP_EditarDatosPersonales", sql))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add(new SqlParameter("@id_Usuario", usu.ID));
                    cmd.Parameters.Add(new SqlParameter("@NombreUsuario", usu.NombreUsuario));
                    cmd.Parameters.Add(new SqlParameter("@Contrasenia", usu.Contrasenia));
                    cmd.Parameters.Add(new SqlParameter("@NombreApellido", dat.NombreApellido));
                    cmd.Parameters.Add(new SqlParameter("@TelefonoMovil", dat.TelefonoMovil));
                    cmd.Parameters.Add(new SqlParameter("@Email", dat.Email));
                    cmd.Parameters.Add(new SqlParameter("@TelefonoFijo", dat.TelefonoFijo));
                    cmd.Parameters.Add(new SqlParameter("@EmailRecuperacion", dat.EmailRecuperacion));
                    sql.Open();
                    cmd.ExecuteNonQuery();
                }
            }
        }
        public int Restaurar(Int16 id)
        {
            ConexionMSSQL conexion = new ConexionMSSQL();
            int rowAfectadas = conexion.SentenciaNonQuery("update PaginaWeb set Habilitado=" + 1 + "Where ID=" + id);
            conexion.Desconectar();
            return rowAfectadas;
        }
    }
}
