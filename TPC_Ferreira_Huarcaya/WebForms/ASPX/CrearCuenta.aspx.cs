using Modelo;
using Negocio;
using System.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebForms.ASPX
{
    public partial class CrearCuenta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {



        }

        protected void btn_CrearCuenta_Click(object sender, EventArgs e)
        {

            using (SqlConnection sql = new SqlConnection("data source = localhost\\SQLEXPRESS01; initial catalog = Ferreira_Huarcaya_DB; integrated security = sspi"))
            {
                using (SqlCommand cmd = new SqlCommand("SP_CrearUsuario", sql))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add(new SqlParameter("@NombreUsuario", txtNombreUsuario.Text));
                    cmd.Parameters.Add(new SqlParameter("@Contrasenia", txt_Contrasenia.Text));
                    cmd.Parameters.Add(new SqlParameter("@ID_Nivel", 1));
                    cmd.Parameters.Add(new SqlParameter("@NombreApellido", txtNombreApellido.Text));
                    cmd.Parameters.Add(new SqlParameter("@TelefonoMovil", txtTelefonoMovil.Text));
                    cmd.Parameters.Add(new SqlParameter("@Email", txtEmail.Text));
                    cmd.Parameters.Add(new SqlParameter("@TelefonoFijo", txtTelefonoFijo.Text));
                    cmd.Parameters.Add(new SqlParameter("@FechaNacimiento",txtFechaNacimiento.Text));
                    cmd.Parameters.Add(new SqlParameter("@EmailRecuperacion", "Decimequeanda@hotmail.com"));
                    sql.Open();
                    cmd.ExecuteNonQuery();
                }
            }

            /*Funcionnaaaaa te dejo a vos pasarlo a una funcion jaja
             faltan las validaciones de cada textbox y validaciones en la base de datos
            ademas que cuando aprete el boton se borren los datos pero eso es un clear para cada txt (creo)
             */



        }
    }
}