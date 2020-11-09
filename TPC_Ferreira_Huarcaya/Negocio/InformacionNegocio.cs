using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Modelo;
using Negocios;

namespace Negocio
{
    public class InformacionNegocio
    {
        public List<InfoWeb> ListarInfo()
        {
            ConexionMSSQL conexion = new ConexionMSSQL();

            List<InfoWeb> listaInfo = new List<InfoWeb>();

            conexion.Conectar();
            string consulta = "";

            conexion.SetConsulta(consulta);

            SqlDataReader lectura = conexion.Leer();

            while (lectura.Read())
            {
                InfoWeb aux = new InfoWeb();
                aux.NombreApellido = lectura.GetString(0);
                aux.ID_Usuario = lectura.GetInt16(1);
                aux.Descripcion = lectura.GetString(2);
            }
        }
    }
}
