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
        }

        protected void btn_FuncionalidadAM_OK_Click(object sender, EventArgs e)
        {
            //setear desde el input de usuario los campos
            //falta validar que sean correctos los datos.
            NuevaFuncionalidad.Descripcion = input_Descripcion.Value;
            NuevaFuncionalidad.Costo = Convert.ToInt32 ( input_Costo.Value ) ;
            
            //agregarlo a la base de datos
            if (true)
            {

            }

            Response.Redirect("../Personalizar.aspx");
        }
    }
}