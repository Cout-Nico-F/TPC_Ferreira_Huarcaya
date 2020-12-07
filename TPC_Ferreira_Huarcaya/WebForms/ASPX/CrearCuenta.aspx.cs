using Modelo;
using Negocio;
using System;
using System.Data.SqlClient;
using System.Text.RegularExpressions;

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
                    user.Contrasenia = UsuarioNegocio.GetSHA256(txtContrasenia.Text);
                    user.Id_Acceso = 1; //TODO: falta un boton visible solo por el admin para setear esto en id = 2 ó 3 y lo mismo en la lista de usuarios de recursosadmin
                    dat.NombreApellido = txtNombreApellido.Text;
                    try
                    {
                        dat.TelefonoMovil = Convert.ToInt32(txtTelefonoMovil.Text);
                    }
                    catch (Exception)
                    {

                    }
                    dat.Email = txtEmail.Text;
                    try
                    {
                        dat.TelefonoFijo = Convert.ToInt32(txtTelefonoFijo.Text);
                    }
                    catch (Exception)
                    {

                    }
                    dat.FechaNacimiento = Convert.ToDateTime(txtFechaNacimiento.Text);
                    try
                    {
                        dat.EmailRecuperacion = txtEmailRecuperacion.Text;
                    }
                    catch (Exception)
                    {

                    }
                    try
                    {
                        cuentaNeg.CrearCuenta(user, dat);
                        lbl_Exito.BackColor = System.Drawing.Color.Green;
                        lbl_Exito.ForeColor = System.Drawing.Color.White;
                        lbl_Exito.Text = "Usuario creado exitosamente!";
                        Response.Redirect("InicioSesion.aspx?usuario=" + txtNombreUsuario.Text);
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
            else
            {
                if (!Regex.IsMatch(txtFechaNacimiento.Text, @"^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[13-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$"))
                {
                    lblMail.Text = "Formato de fecha incorrecta. Ingrese DIA-MES-AÑO";
                    return false;
                }
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
            if (txtConfirmarContrasenia.Text != txtContrasenia.Text)
            {
                lblContrasenia.Text = "Los campos de contraseña no coinciden";
                return false;
            }
            if (!Regex.IsMatch(txtEmail.Text, @"^((?!\.)[\w-_.]*[^.])(@\w+)(\.\w+(\.\w+)?[^.\W])$"))
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