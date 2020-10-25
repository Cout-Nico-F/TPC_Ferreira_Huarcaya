using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForms.ASPX
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //esto podria estar dentro de un metodo.( Lo paso a uno cuando tenga mas de una llamada al metodo SetHtmlElementClass )
            var master = Master as Master_A;
            if (master != null)
            {
                var control = master.FindControl("Master_A_body") as HtmlGenericControl;
                master.SetHtmlElementClass(control, " bg-red");
            }
        }
    }
}