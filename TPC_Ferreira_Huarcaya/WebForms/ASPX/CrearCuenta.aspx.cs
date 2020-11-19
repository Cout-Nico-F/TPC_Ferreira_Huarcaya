using Modelo;
using Negocio;
using System.Threading;
using System.Data.SqlClient;
using System.Text.RegularExpressions;
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

        protected void btn_CrearCuenta_Click1(object sender, EventArgs e)
        {
            LimpiarLabels();

            if (Validaciones())
            {
                try
                {
                    CrearCuentaNegocio cuentaNeg = new CrearCuentaNegocio();
                    Usuario user = new Usuario();
                    DatosPersonales dat = new DatosPersonales();

                    user.NombreUsuario = txtNombreUsuario.Text;
                    user.Contrasenia = txtContrasenia.Text;
                    user.Id_Acceso = 1;
                    dat.NombreApellido = txtNombreApellido.Text;
                    dat.TelefonoMovil = Convert.ToInt32(txtTelefonoMovil.Text);
                    dat.Email = txtEmail.Text;
                    dat.TelefonoFijo = Convert.ToInt32(txtTelefonoFijo.Text);
                    dat.FechaNacimiento = Convert.ToDateTime(txtFechaNacimiento.Text);
                    dat.EmailRecuperacion = txtEmailRecuperacion.Text;

                    try
                    {
                        cuentaNeg.CrearCuenta(user, dat);
                        Thread.Sleep(5000);
                        Response.Redirect("Catalogo.aspx");
                    }
                    catch (SqlException)
                    {

                        Response.Redirect("Error.aspx");

                    }

                }
                catch (SqlException ex)
                {
                    Session.Add("errorEncontrado", ex.ToString());
                    Response.Redirect("Error.aspx");
                }
            }

        }
        protected void btn_Comprobar_Click(object sender, EventArgs e)
        {
            lblMail.Text = "";

            Regex regex = new Regex("\\w+([-+.']\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*");
            if (regex.IsMatch(txtEmail.Text))
            {
                lblMail.Text = "El formato es correcto";
                

            }
            else
            {
                lblMail.Text = "El formato de Correo Electronico es incorrecto ej: AlonsoHS21@hotmail.com";
            }
        }
        private bool Validaciones()
        {
            if (txtNombreApellido.Text == "")
            {
                lblNombreApellido.Text = "El campo Nombre y Apellido no puede quedar vacio";
                return false;
            }
            if (txtEmail.Text == "")
            {
                lblMail.Text = "El campos Email esta vacio";
                return false;
            }
            if (txtFechaNacimiento.Text == "")
            {
                lblFechaNaci.Text = "El campos Fecha de nacimiento esta vacio";
                return false;
            }
            if (txtNombreUsuario.Text == "")
            {
                lblNombreUsuario.Text = "El campos Nombre Usuario no puede quedar vacio";
                return false;
            }
            if (txtContrasenia.Text == "")
            {
                lblContrasenia.Text = "El campos Contraseña esta vacio";
                return false;
            }
            Regex regex = new Regex(@"^[A-Za-z]+@[a-zA-Z]+$");
            if (!( regex.IsMatch(txtEmail.Text)))
            {
                lblMail.Text = "El formato de Correo Electronico es incorrecto ej: AlonsoHS21@hotmail.com";
                return false;
            }
            return true;
        }
        private void LimpiarLabels()
        {
            lblNombreApellido.Text = "";
            lblContrasenia.Text = "";
            lblFechaNaci.Text = "";
            lblNombreUsuario.Text = "";
            lblMail.Text = "";
        }

       
    }
}