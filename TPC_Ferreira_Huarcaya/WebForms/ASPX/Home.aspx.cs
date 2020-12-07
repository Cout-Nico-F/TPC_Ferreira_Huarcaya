using System;
using System.Web.UI.HtmlControls;
using WebForms.Masters;

namespace WebForms.ASPX
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //esto podria estar dentro de un metodo.( Lo paso a uno cuando tenga mas de una llamada al metodo SetHtmlElementClass )
            var master = Master as Master1;
            if (master != null)
            {
                var control = master.FindControl("Master_A_body") as HtmlGenericControl;
                master.SetHtmlElementClass(control, " bg-rainbow");
            }
        }
    }
}