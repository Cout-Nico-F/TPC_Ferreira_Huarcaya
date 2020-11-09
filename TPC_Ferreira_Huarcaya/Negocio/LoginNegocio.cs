using Modelo;
using System.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Negocios;
using System.Runtime.Remoting.Messaging;

namespace Negocio
{
    public class LoginNegocio
    {
        public List<Usuario> login(Usuario user)
        {
            // tengo que ir a la DB y buscarlo
            /* try
             {
                 ConexionMSSQL conexion = new ConexionMSSQL();

                 conexion.Conectar();
                 //exec SP_BuscarUsuario AlonsoHS20,AlonsoHuarcayaAdmin2
                 string consulta = "exec SP_BuscarUsuario " + user.NombreUsuario + "," + user.Contraseña;

                 conexion.SetConsulta(consulta);

                 conexion.Desconectar();

                 return user;
             }
             catch (Exception)
             {
                 user.IdUsuario = 0;
                 return user;    
             }*/
            // recibo un usuario y devuelvo una lista para en el back de asp buscar la coincidadencia es mas engorroso asi pero debe funcionar
            ConexionMSSQL conexion = new ConexionMSSQL();

            List<Usuario> listaUsuarios = new List<Usuario>();

            conexion.Conectar();
            string consulta = "Select NombreUsuario,Contrasenia From Usuarios";

            conexion.SetConsulta(consulta);

            SqlDataReader lectura = conexion.Leer();

            while (lectura.Read())
            {
                Usuario aux = new Usuario();
                aux.NombreUsuario = lectura.GetString(0);
                aux.Contraseña = lectura.GetString(1);

                listaUsuarios.Add(aux);
            }
            conexion.Desconectar();
            return listaUsuarios;

        }
    }
}
