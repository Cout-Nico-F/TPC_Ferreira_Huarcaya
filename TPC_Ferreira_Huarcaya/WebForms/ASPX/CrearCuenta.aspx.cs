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
            DatosPersonales datPer = new DatosPersonales();
            Usuario usu = new Usuario();

            datPer.NombreApellido = txtNombreApellido.Text;
            datPer.TelefonoFijo = Convert.ToInt32(txtTelefonoFijo.Text);
            datPer.FechaNacimiento = Convert.ToDateTime(txtFechaNacimiento.Text);
            datPer.Email = txtEmail.Text;
            datPer.TelefonoMovil = Convert.ToInt32(txtTelefonoMovil);
            //falta el email recuperacion no lo puse a proposito
            datPer.


        }
    }
}