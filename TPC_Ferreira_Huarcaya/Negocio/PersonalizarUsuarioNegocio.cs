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
        public int BuscarImagen(string img)
        {
            ConexionMSSQL conexion = new ConexionMSSQL();

            SqlDataReader lectura = conexion.Consulta_Rapida("Select Url_Imagen From InfoPaginas");

            while (lectura.Read())
            {
                Pagina pag = new Pagina();
                pag.Url_Imagen = lectura.GetString(0);
            }

        }
    }
}
