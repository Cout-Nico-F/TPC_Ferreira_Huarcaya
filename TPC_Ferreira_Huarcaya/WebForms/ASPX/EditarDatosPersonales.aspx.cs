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
            DatosPersonales dat = new DatosPersonales();
            DatosPersonalesNegocios edNeg = new DatosPersonalesNegocios();

           // dat = edNeg.TraerDatos(dat);

            //Mostrarlos en el placeholder de cada textbox 
            txt_NombreApellido.Attributes.Add("placeholder", dat.NombreApellido);
            txtTelefono_Movil.Attributes.Add("placeholder",Convert.ToString(dat.TelefonoMovil));
            txt_TelefonoFijo.Attributes.Add("placeholder",Convert.ToString(dat.TelefonoFijo));
            txt_Email.Attributes.Add("placeholder",dat.Email);
            txt_EmailRecuperacion.Attributes.Add("placeholder",dat.EmailRecuperacion);
            txt_FechaNac.Attributes.Add("placeholder",Convert.ToString(dat.FechaNacimiento));

            

        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
           /*if (validacionCampos())//va a validar si hay campos vacios
            {
                //para los campos vacios no hagas nada
            }
            else
            {
                //si hay algunos campos llenos cambiar

            }

            //en caso de que algun campo este vacio hacer que no tire error si no que no haga cambios y listo 

            //Enviar datos a un insert en la DB y modificarlos*/
        }
    }
}