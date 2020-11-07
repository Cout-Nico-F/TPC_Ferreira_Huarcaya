using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace WebForms.ASPX
{
    public partial class Colores : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ColoresNegocio colores = new ColoresNegocio();
            ddl_Colores.DataSource = colores.listar();
        }
    }
}