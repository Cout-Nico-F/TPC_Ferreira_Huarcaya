using Modelo;
using System.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Negocios;

namespace Negocio
{
    public class LoginNegocio
    {
        public Usuario login(Usuario user)
        {
            // tengo que ir a la DB y buscarlo
            ConexionMSSQL conexion = new ConexionMSSQL();

            conexion.Conectar();

            string consulta = "Select NombreUsuario,Contrasenia From Usuarios Where ID=@ID_Usuario and Contrasenia=@Contraseña";


            user.IdUsuario = 6;
            return user;
        }
    }
}
