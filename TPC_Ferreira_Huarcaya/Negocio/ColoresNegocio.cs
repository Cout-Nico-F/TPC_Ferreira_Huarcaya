using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Modelo;
using System.Data.SqlClient;
using Negocios;

namespace Negocio
{
    public class ColoresNegocio
    { 
        public List<Color> ListarColores()
        {
            ConexionMSSQL conexionMSSQL = new ConexionMSSQL();

            List<Color> lista = new List<Color>();
            conexionMSSQL.Conectar();
            conexionMSSQL.SetConsulta("Select ID,Descripcion From Colores");

            SqlDataReader lector = conexionMSSQL.Leer();

            while(lector.Read())
            {
                Color aux = new Color();
                aux.Id = lector.GetInt16(0);
                aux.Descripcion = lector.GetString(1);

                lista.Add(aux);
            }
            conexionMSSQL.Desconectar();
            return lista;
        }
    }
}
