using Modelo;
using Negocios;
using System.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Runtime.Remoting.Messaging;
using System.Data;

namespace Negocio
{
    public class LoginNegocio
    {
        public int login(Usuario user)
        {

            // set up connection and command 
            using (SqlConnection sql = new SqlConnection("data source = localhost\\SQLEXPRESS01; initial catalog = Ferreira_Huarcaya_DB; integrated security = sspi"))
            {
                using (SqlCommand cmd = new SqlCommand("SP_ExisteUsuario", sql))
                {
                    // define command to be stored procedure 
                    cmd.CommandType = CommandType.StoredProcedure;

                    // add parameter 
                    cmd.Parameters.Add(new SqlParameter("@NombreUsuario",user.NombreUsuario));
                    cmd.Parameters.Add(new SqlParameter("@Contrasenia", user.Contrasenia));

                    // open connection, execute command, close connection 
                    sql.Open();
                    int result = (int)cmd.ExecuteScalar();
                    sql.Close();

                    return result;
                }
            }
            
            



        }
    }
}
