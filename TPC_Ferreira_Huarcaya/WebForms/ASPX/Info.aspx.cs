using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Modelo;
using Negocio;

namespace WebForms.ASPX
{
    public partial class Contacto : System.Web.UI.Page
    {
        public List<InfoWeb> listaInfo { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            
            try
            {
                InformacionNegocio infoNeg = new InformacionNegocio();

                if (Session["listadoInfo"] == null)
                {
                    listaInfo = infoNeg.ListarInfo();
                }
                else
                {
                    listaInfo = (List<InfoWeb>)Session["listadoInfo"];
                    Session["listadoInfo"] = null;
                }
            }
            catch (Exception ex)
            {

                /*Session.Add("errorEncontrado", ex.ToString());
                Response.Redirect("Error.aspx");*/
                
            }
            
            
        }
    }
}