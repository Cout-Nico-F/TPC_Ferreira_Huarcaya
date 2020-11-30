using Negocio;
using Modelo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForms.ASPX
{
    public partial class ConfirmarPedidoPrediseniada : System.Web.UI.Page
    {
        public PaginaWeb Item { get; set; }
        PaginasWebNegocios pNeg;
        public Usuario Usuario { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            Usuario = (Usuario)Session["usersession"];
            if (Usuario == null)
            {
                Response.Redirect("InicioSesion.aspx");
            }
            if (Request.QueryString["id"] == null)
            {
                Response.Redirect("Home.aspx");//solo se puede entrar a esta pagina llegando con una id por url.
            }
            Cargar();
        }
        void Cargar()
        {
            pNeg = new PaginasWebNegocios();
            var listaCompleta = pNeg.listaPaginassWeb();

            Item = listaCompleta.Find(p => p.ID == Convert.ToInt16(Request.QueryString["Id"]));
        }

        protected void btn_Solicitar_Click(object sender, EventArgs e)
        {
            EmailNegocios eNeg = new EmailNegocios();

            if(Item.ID == 1)
            {
                eNeg.enviarTemplate_01();
            }
            if (Item.ID == 2)
            {
                eNeg.enviarTemplate_02();
            }
            if (Item.ID == 3)
            {
                eNeg.enviarTemplate_03();
            }
        }
    }
}