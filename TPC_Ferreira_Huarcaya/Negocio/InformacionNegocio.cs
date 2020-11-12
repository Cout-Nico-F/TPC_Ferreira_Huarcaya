using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Modelo;

namespace Negocio
{
    public class InformacionNegocio
    {
        public List<InfoWeb> ListarInfo()
        {
            ConexionMSSQL conexion = new ConexionMSSQL();

            List<InfoWeb> listaInfo = new List<InfoWeb>();

            SqlDataReader lectura = conexion.Consulta_Rapida("select * From InfoWeb");

            while (lectura.Read())
            {
                InfoWeb aux = new InfoWeb();
                aux.ID_Usuario = lectura.GetInt16(0);
                aux.ID_Nivel = lectura.GetInt16(1);
                aux.NombreApellido = lectura.GetString(2);
                aux.Descripcion = lectura.GetString(3);
                aux.UrlImagen = lectura.GetString(4);

                listaInfo.Add(aux);

            }
            conexion.Desconectar();
            return listaInfo;
        }
    }
}
