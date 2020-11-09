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
            List<Usuario> user = new List<Usuario>();
            Usuario usu = new Usuario();

            LoginNegocio logNeg = new LoginNegocio();


            usu.NombreUsuario = txtNombreUsuario.Text;
            usu.Contraseña = txtPass.Text;

            // podria enviarle los dos string 

            user = logNeg.login(usu);

            bool UsuarioExiste = BuscarUsuario(user,usu);

            if (UsuarioExiste)//funciona igual que c++ no? siempre es true
            {
                //codigo para usuario encontrado
            }
            else
            {
                //codigo para usuario no encontrado
                Response.Redirect("Error.aspx");
            }

            //Que recuerdos el switch jaja cuando todo era facil
            // lo hice asi por una razon porque lo vamos a necesitar el switch cuando tengamos que verificar si los niveles de acceso de cada usuario etc
            /*switch (user.IdUsuario)
            {
                case 0:
                    {
                       
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
            }*/

            
        }
        private bool BuscarUsuario(List<Usuario>listaUsuario,Usuario usuario)
        {
            foreach(var item in listaUsuario)
            {
                if(item.IdUsuario != 0 && txtNombreUsuario.Text == usuario.NombreUsuario && usuario.Contraseña == txtPass.Text)
                {
                    return true;
                }
            }
            return false;
        }

        private void Validaciones()
        {
            
        }
    }
}