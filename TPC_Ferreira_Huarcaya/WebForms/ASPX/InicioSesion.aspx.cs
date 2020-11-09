using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using Modelo;
using Negocio;

namespace WebForms.ASPX
{
    public partial class InicioSesion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Ingresar_Click(object sender, EventArgs e)
        {
            Usuario user = new Usuario();

            LoginNegocios logNeg = new LoginNegocio();

            user.NombreUsuario = txtNombreUsuario.Text;
            user.Contraseña = txtPass.Text;

            user = logNeg.login(user);

            //Que recuerdos el switch jaja cuando todo era facil
            // lo hice asi por una razon porque lo vamos a necesitar el switch cuando tengamos que verificar si los niveles de acceso de cada usuario etc
            switch (user.IdUsuario)
            {
                case 1:
                    {
                        Response.Redirect("Error.aspx");
                    }break;
                case 2:
                    {
                        Response.Redirect("Home.aspx");
                    }break;
                case 3:
                    {
                        Response.Redirect("Catalogo.aspx");
                    }break;
                case 6:
                    {
                        Response.Redirect("Info.aspx");
                    }break;
            }
        }
    }
}