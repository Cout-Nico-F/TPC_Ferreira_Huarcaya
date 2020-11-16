using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Modelo;
using System.Data.SqlClient;

namespace Negocio
{
    public class PaginasWebNegocios
    {
        public List<PaginaWeb> listaPaginassWeb()
        {
            ConexionMSSQL conexion = new ConexionMSSQL();

            List<PaginaWeb> listaPaginaWeb = new List<PaginaWeb>();

            SqlDataReader lectura = conexion.Consulta_Rapida("Select ID,Titulo,Descripcion,Url_Pagina,Url_Image From PaginaWeb");

            while (lectura.Read())
            {
                PaginaWeb aux = new PaginaWeb();
                aux.ID = lectura.GetInt16(0);
                aux.Titulo = lectura.GetString(1);
                aux.Descripcion = lectura.GetString(2);
                aux.Url_PaginaWeb = lectura.GetString(3);
                aux.Url_Imagen = lectura.GetString(4);

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
            int rowsAfectadas = conexion.SentenciaNonQuery("insert into PaginaWeb(Titulo,Descripcion,Url_Pagina,Url_Image,Habilitado,Precio) values ('" + pag.Titulo + "','" + pag.Descripcion + "','" + pag.Url_PaginaWeb + "','" + pag.Url_Imagen +"','"+pag.Habilitado+"','"+pag.Precio+"')");
            conexion.Desconectar();
            return rowsAfectadas;
        }
       /* public int Modificar(PaginaWeb pag)
        {
            ConexionMSSQL conexion = new ConexionMSSQL();
            //int rowsAfectadas = conexion.SentenciaNonQuery("update PaginaWeb set Titulo=" + pag.Titulo + ",""Descripcion=" + pag.Descripcion + ",""Url_Pagina=" + pag.Url_PaginaWeb + ",""Url_Image=" + pag.Url_Imagen + ",""Where ID=" + pag.ID + "");
            conexion.Desconectar();
            //return rowsAfectadas;
        }*/
    }
}
