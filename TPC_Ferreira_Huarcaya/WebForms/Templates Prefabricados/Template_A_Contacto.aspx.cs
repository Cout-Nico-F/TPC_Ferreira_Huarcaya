using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Modelo;

namespace WebForms.Templates_Prefabricados
{
    public partial class Template_A_Contacto1 : System.Web.UI.Page
    {
        public Relleno RellenoVariable { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["relleno"] != null)
            {
                RellenoVariable = (Relleno)Session["relleno"];
            }
        }
    }
}