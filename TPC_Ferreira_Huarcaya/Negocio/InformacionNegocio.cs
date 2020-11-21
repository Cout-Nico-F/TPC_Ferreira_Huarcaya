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
        public List<Usuario> ListarInfo()
        {
            ConexionMSSQL conexion = new ConexionMSSQL();

            List<Usuario> listaInfo = new List<Usuario>();

            SqlDataReader lectura = conexion.Consulta_Rapida("select ID,NombreUsuario,ID_Nivel,urlImagen,Descripcion From Usuarios Where ID_Nivel="+3+"");

            while (lectura.Read())
            {
                Usuario aux = new Usuario();
                aux.ID = lectura.GetInt16(0);
                aux.NombreUsuario = lectura.GetString(1);
                aux.Id_Acceso = lectura.GetInt16(2);
                aux.Url_Imagen = lectura.GetString(3);
                aux.Descripcion = lectura.GetString(4);

                listaInfo.Add(aux);

            }
            conexion.Desconectar();
            return listaInfo;
        }
    }
}
