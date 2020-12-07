using Modelo;
using System.Data.SqlClient;

namespace Negocio
{
    public class LoginNegocio
    {
        public Usuario login(Usuario user)
        {
            ConexionMSSQL conexion = new ConexionMSSQL();
            SqlDataReader lectura = conexion.Consulta_Rapida("Select ID,NombreUsuario,Contrasenia,ID_Nivel From Usuarios Where NombreUsuario = '" + user.NombreUsuario + "' and Contrasenia = '" + user.Contrasenia + "'");

            Usuario aux = new Usuario();

            if (lectura.Read())
            {
                aux.ID = lectura.GetInt16(0);
                aux.NombreUsuario = lectura.GetString(1);
                aux.Contrasenia = lectura.GetString(2);
                aux.Id_Acceso = lectura.GetInt16(3);
            }
            conexion.Desconectar();
            return aux;
            //si me envia todos los datos correctamente

        }

    }
}
