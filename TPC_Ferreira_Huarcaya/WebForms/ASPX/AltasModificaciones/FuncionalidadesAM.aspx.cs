using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Profile;
using System.Web.UI;
using System.Web.UI.WebControls;
using Modelo;

namespace WebForms.ASPX.AltasModificaciones
{
    public partial class FuncionalidadesAM : System.Web.UI.Page
    {
        public Funcionalidad NuevaFuncionalidad { get; set; }
        public string Placeholder { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            NuevaFuncionalidad = new Funcionalidad();
            Placeholder = "ZZZ";

        }

        protected void btn_FuncionalidadAM_OK_Click(object sender, EventArgs e)
        {
            
            NuevaFuncionalidad.Descripcion = input_Descripcion.Value;
            NuevaFuncionalidad.Costo = Convert.ToInt32 ( input_Costo.Value ) ;
            Response.Redirect("../Personalizar.aspx");
        }
    }
}