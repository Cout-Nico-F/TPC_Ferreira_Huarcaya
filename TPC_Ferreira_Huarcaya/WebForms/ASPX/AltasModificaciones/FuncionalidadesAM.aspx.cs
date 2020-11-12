using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Profile;
using System.Web.UI;
using System.Web.UI.WebControls;
using Modelo;
using Negocio;

namespace WebForms.ASPX.AltasModificaciones
{
    public partial class FuncionalidadesAM : System.Web.UI.Page
    {
        public Funcionalidad NuevaFuncionalidad { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            NuevaFuncionalidad = new Funcionalidad();
            txtBox_Descripcion.Attributes.Add("Placeholder", "Prueba_Harcodeado");
        }

        protected void btn_FuncionalidadAM_OK_Click(object sender, EventArgs e)
        {

            //setear desde el input de usuario los campos
            //falta validar que sean correctos los datos.
            NuevaFuncionalidad.Descripcion = txtBox_Descripcion.Text;
            NuevaFuncionalidad.Costo = Convert.ToInt32 ( txtBox_Costo.Text ) ;
            FuncionalidadNegocio funcionalidadNegocio = new FuncionalidadNegocio();
            
            //agregarlo a la base de datos
            if (funcionalidadNegocio.Agregar(NuevaFuncionalidad) < 1)//si hubo error
            {
                Response.Redirect("../Error.aspx");
            }
            //mostrar popup o pantalla de Exito al agregar.
            //label.text = 
            Response.Redirect("../Personalizar.aspx");
        }
    }
}