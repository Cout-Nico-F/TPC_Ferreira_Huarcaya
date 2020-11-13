using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Modelo;
using Negocio;

namespace WebForms.ASPX.AltasModificaciones
{
    public partial class EstilosAM : System.Web.UI.Page
    {
        public Estilo NuevoEstilo { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            NuevoEstilo = new Estilo();
        }

        protected void EstiloAM_OK_Click(object sender, EventArgs e)
        {
            //setear desde el input de usuario los campos
            //falta validar que sean correctos los datos.
            NuevoEstilo.Descripcion = txtBox_Descripcion.Text;
            EstiloNegocio estiloNegocio = new EstiloNegocio();

            //agregarlo a la base de datos
            if (estiloNegocio.Agregar(NuevoEstilo) < 1)//si hubo error
            {
                Response.Redirect("../Error.aspx");
            }
            //mostrar popup o pantalla de Exito al agregar.
            //label.text = 
            Response.Redirect("../Personalizar.aspx");
        }
    }
}