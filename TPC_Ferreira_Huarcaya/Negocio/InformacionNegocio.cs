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
            /*Es una vista muy basica*/
            string consulta = "Select ID_Usuarios,ID_Nivel,NombreApellido,Descripcion From VW_MostrarUsuario";

            conexion.SetConsulta(consulta);

            SqlDataReader lectura = conexion.Leer();

            while (lectura.Read())
            {
                InfoWeb aux = new InfoWeb();
                aux.ID_Usuario = lectura.GetInt16(0);
                aux.ID_Nivel = lectura.GetInt16(1);
                aux.NombreApellido = lectura.GetString(2);
                aux.Descripcion = lectura.GetString(3);

                listaInfo.Add(aux);

            }
            conexion.Desconectar();
            return listaInfo;
        }
    }
}
