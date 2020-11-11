using System.Data.SqlClient;
using Modelo;
using Negocios;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Common;
using System.Data;

namespace Negocio
{
    public class CrearCuentaNegocio
    {

        public void CrearCuenta(Usuario user,DatosPersonales dat)
        {
            using (SqlConnection sql = new SqlConnection("data source = localhost\\SQLEXPRESS01; initial catalog = Ferreira_Huarcaya_DB; integrated security = sspi"))
            {
                using (SqlCommand cmd = new SqlCommand("SP_CrearUsuario", sql))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add(new SqlParameter("@NombreUsuario",user.NombreUsuario));
                    cmd.Parameters.Add(new SqlParameter("@Contrasenia", user.Contrasenia));
                    cmd.Parameters.Add(new SqlParameter("@ID_Nivel", user.id_Acceso));
                    cmd.Parameters.Add(new SqlParameter("@NombreApellido", dat.NombreApellido));
                    cmd.Parameters.Add(new SqlParameter("@TelefonoMovil", dat.TelefonoMovil));
                    cmd.Parameters.Add(new SqlParameter("@Email", dat.Email));
                    cmd.Parameters.Add(new SqlParameter("@TelefonoFijo", dat.TelefonoFijo));
                    cmd.Parameters.Add(new SqlParameter("@FechaNacimiento", dat.FechaNacimiento));
                    cmd.Parameters.Add(new SqlParameter("@EmailRecuperacion", "Decimequeanda@hotmail.com"));
                    sql.Open();
                    cmd.ExecuteNonQuery();
                }
            }
        }
        public int Validaciones(Usuario user,DatosPersonales dat)
        {
            if(user.NombreUsuario == "" || user.Contrasenia == "" || dat.NombreApellido == "" || dat.Email == "" || Convert.ToString(dat.FechaNacimiento) == "")
            {
                return 2;
            }
            return 1;
        }

        /*Cuando ande proba si te aparece arriba del boton un label que diga debe completar todos los campos*/

        /*public int CrearCuenta(Usuario user, DatosPersonales dat)
        {
            //retorna un entero porque asi esta en la DB
            /*ConexionMSSQL conexion = new ConexionMSSQL();

            conexion.Conectar();

            string SpCrearCuenta = "Exec SP_CrearUsuario";

            conexion.SetStoredProcedure(SpCrearCuenta);

            conexion.AgregarParametro("@NombreUsuario", user.NombreUsuario);
            conexion.AgregarParametro("@Contrasenia", user.Contrasenia);
            conexion.AgregarParametro("@ID_Nivel", user.NivelAcceso.ID));
            conexion.AgregarParametro("@NombreApellido", dat.NombreApellido);
            conexion.AgregarParametro("@TelefonoMovil", dat.TelefonoMovil);
            conexion.AgregarParametro("@Email", dat.Email);
            conexion.AgregarParametro("@Email", dat.TelefonoFijo);
            conexion.AgregarParametro("@FechaNacimiento", dat.FechaNacimiento);
            conexion.AgregarParametro("@EmailRecuperacion", dat.EmailRecuperacion);

            

            

            lectura.Read();

            int num = lectura.GetInt32(0);

            return num;*/

            /*using(SqlConnection sql = new SqlConnection("data source = localhost\\SQLEXPRESS01; initial catalog = Ferreira_Huarcaya_DB; integrated security = sspi"))
            {
                using (SqlCommand cmd = new SqlCommand("Exec SP_CrearUsuario", sql))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add(new SqlParameter("@NombreUsuario",user.NombreUsuario));
                    cmd.Parameters.Add(new SqlParameter("@Contrasenia", user.Contrasenia));
                    cmd.Parameters.Add(new SqlParameter("@ID_Nivel", user.NivelAcceso.ID));
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


        }*/
    }
}
