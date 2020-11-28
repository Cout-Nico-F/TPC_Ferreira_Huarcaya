using Modelo;
using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForms.Templates_Prefabricados
{
    public partial class Template_B_Home : System.Web.UI.Page
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