using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using Modelo;
using Negocio;
using System.Text.RegularExpressions;

namespace WebForms.ASPX
{
    public partial class InicioSesion : System.Web.UI.Page
    {
        public Usuario Usuario { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Ingresar_Click(object sender, EventArgs e)
        {
            //esto es como un clear
            lblContrasenia.Text = "";
            lblNombreUsuario.Text = "";


            if (Validaciones())
            {
                LoginNegocio logNeg = new LoginNegocio();
                Usuario user = new Usuario();

                user.NombreUsuario = txtNombreUsuario.Text;
                user.Contrasenia = txtPass.Text;

                Usuario = logNeg.login(user);

                if (Usuario.ID != 0)
                {
                    Session.Add("usersession", Usuario);
                    Response.Redirect("Catalogo.aspx");
                }
                else
                {
                    Response.Redirect("Error.aspx");
                }
               
            }

        }
        private bool Validaciones()
        {
            if(txtNombreUsuario.Text == "")
            {
                lblNombreUsuario.Text = "El campos Nombre Usuario no puede estar vacio";
                return false;
            }
            if(txtPass.Text == "")
            {
                lblContrasenia.Text = "El campo Contraseña no puede estar vacio";
                return false;
            }
            return true;

        }

    }

}