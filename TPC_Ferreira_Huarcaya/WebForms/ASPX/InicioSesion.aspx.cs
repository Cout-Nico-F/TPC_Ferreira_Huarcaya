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
            usu.Contrasenia = txtPass.Text;

            // podria enviarle los dos string 

            user = logNeg.login(); // se supone que trae la lista completa de usuarios

            //bool UsuarioExiste = BuscarUsuario(user,usu);// le envio la lista de usuarios y la variable usuario para comparar

           /* if (UsuarioExiste)//funciona igual que c++ no? siempre es true
            {
                //codigo para usuario encontrado
                Response.Redirect("Catalogo.aspx");
            }
            else
            {
                //codigo para usuario no encontrado
                Response.Redirect("Error.aspx");
            }*/

            
        }
        //private bool BuscarUsuario(List<Usuario>listaUsuario,Usuario usuario)
        //{
           /* foreach(var item in listaUsuario)
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
            
        }*/
    }
}