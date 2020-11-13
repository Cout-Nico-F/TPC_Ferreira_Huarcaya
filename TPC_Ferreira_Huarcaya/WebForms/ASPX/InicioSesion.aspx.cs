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
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Ingresar_Click(object sender, EventArgs e)
        {
            LoginNegocio logNeg = new LoginNegocio();
            Usuario user = new Usuario();

            //aca deberia haber un metodo de validadicones

            user.NombreUsuario = txtNombreUsuario.Text;
            user.Contrasenia = txtPass.Text;

            //ValidacionesConER();

            int existe = logNeg.login(user);

            if(existe == 1)
            {
                Response.Redirect("Catalogo.aspx");
            }
            else
            {
                Response.Redirect("Error.aspx");
            }
            /*
             Podes probar con 
            Nombre U: JeremiasI21
            Contra : Jere123
             */

        }
        /*private void ValidacionesConER()
        {

        }*/

    }
}