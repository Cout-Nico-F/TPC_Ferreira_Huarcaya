using Modelo;
using System.Data;
using System.Data.SqlClient;

namespace Negocio
{
    public class CrearCuentaNegocio
    {

        public void CrearCuenta(Usuario user, DatosPersonales dat)
        {
            using (SqlConnection sql = new SqlConnection("data source = localhost\\SQLEXPRESS01; initial catalog = Ferreira_Huarcaya_DB; integrated security = sspi"))
            {
                using (SqlCommand cmd = new SqlCommand("SP_CrearUsuario", sql))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add(new SqlParameter("@NombreUsuario", user.NombreUsuario));
                    cmd.Parameters.Add(new SqlParameter("@Contrasenia", user.Contrasenia));
                    cmd.Parameters.Add(new SqlParameter("@ID_Nivel", user.Id_Acceso));
                    cmd.Parameters.Add(new SqlParameter("@NombreApellido", dat.NombreApellido));
                    cmd.Parameters.Add(new SqlParameter("@TelefonoMovil", dat.TelefonoMovil));
                    cmd.Parameters.Add(new SqlParameter("@Email", dat.Email));
                    cmd.Parameters.Add(new SqlParameter("@TelefonoFijo", dat.TelefonoFijo));
                    cmd.Parameters.Add(new SqlParameter("@FechaNacimiento", dat.FechaNacimiento));
                    cmd.Parameters.Add(new SqlParameter("@EmailRecuperacion", dat.EmailRecuperacion));
                    sql.Open();
                    cmd.ExecuteNonQuery();
                }
            }
        }
    }
}
