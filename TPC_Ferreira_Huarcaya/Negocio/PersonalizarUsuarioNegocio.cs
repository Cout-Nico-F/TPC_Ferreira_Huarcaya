using Modelo;
using System.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio
{
    public class PersonalizarUsuarioNegocio
    {
        public string BuscarImagen(string img)
        {
            ConexionMSSQL conexion = new ConexionMSSQL();

            SqlDataReader lectura = conexion.Consulta_Rapida("Select Url_Image From PaginaWeb Where Titulo = " + img + " )");

            lectura.Read();
            string UrlImagen;
            UrlImagen = lectura.GetString(0);
            conexion.Desconectar();
            return UrlImagen;

        }
    }
}
