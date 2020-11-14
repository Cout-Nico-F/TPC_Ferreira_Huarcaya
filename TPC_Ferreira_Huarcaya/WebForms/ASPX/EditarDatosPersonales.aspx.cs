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
    public partial class EditarDatosPersonales : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    int id;
                    DatosPersonales dat = new DatosPersonales();
                    DatosPersonalesNegocios edNeg = new DatosPersonalesNegocios();

                    id = 1; // estoy forzando el id enviado aca

                    dat = edNeg.TraerDatos(id); //esta mal la conexion a la DB sqlexception must declare scalar @id_Usuario en command = executeNonQuery();

                    //Muestra en cada textbox los datos que encontro del usuario

                    txtNombreApellido.Text = dat.NombreApellido;
                    txtTelefonoMovil.Text = Convert.ToString(dat.TelefonoMovil);
                    txtTelefonoFijo.Text = Convert.ToString(dat.TelefonoFijo);
                    txtEmail.Text = dat.Email;
                    txtEmailRecuperacion.Text = dat.EmailRecuperacion;
                    txtFechaNacimiento.Text = Convert.ToString(dat.FechaNacimiento);
                }
                catch (Exception ex)
                {
                    // el usuario no fue encontrado o hubo un error inesperado
                    Response.Redirect("Error.aspx");
                }

            }

        }

        protected void btn_Cancelar_Click(object sender, EventArgs e)
        {
            
        }

        protected void btn_Cambio_Click(object sender, EventArgs e)
        {

            //validar primero que los campos no sean vacios

            //enviarlo de nuevo a la DB con update
            DatosPersonales datos = new  DatosPersonales();

            datos.NombreApellido = txtNombreApellido.Text;
            datos.TelefonoMovil = Convert.ToInt32(txtTelefonoMovil.Text);
            datos.TelefonoFijo = Convert.ToInt32(txtTelefonoFijo.Text);
            datos.Email = txtEmail.Text;
            datos.EmailRecuperacion = txtEmailRecuperacion.Text;
            datos.FechaNacimiento = Convert.ToDateTime(txtFechaNacimiento.Text);

            //ActualizarDatos(datos);

        }
    }
}