using Modelo;
using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForms.ASPX
{
    public partial class CrearCuenta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {



        }

        protected void btn_CrearCuenta_Click(object sender, EventArgs e)
        {

            Usuario usuario = new Usuario();
            DatosPersonales datos = new DatosPersonales();
            CrearCuentaNegocio crear = new CrearCuentaNegocio();

            usuario.NombreUsuario = txtNombreUsuario.Text;
            usuario.Contrasenia = txt_Contrasenia.Text;
            usuario.Nivel.ID = 1;
            datos.NombreApellido = txtNombreApellido.Text;
            datos.TelefonoMovil = txtTelefonoMovil.Text;
            datos.Email = txtEmail.Text;
            datos.TelefonoFijo = txtTelefonoFijo.Text;
            datos.FechaNacimiento = txtFechaNacimiento.Text;
            datos.EmailRecuperacion = " "; //lo envio vacio

            int NumValidacion = crear.CrearCuenta(usuario, datos);

           if(NumValidacion != 1)
            {
                //aca va codigo
            }
            else
            {
                Response.Redirect("Error.aspx");
            }

        }
    }
}