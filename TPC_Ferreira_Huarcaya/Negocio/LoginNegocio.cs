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
        public Usuario login(Usuario user)
        {
            // tengo que ir a la DB y buscarlo
            try
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
            }
            
           
        }
    }
}
