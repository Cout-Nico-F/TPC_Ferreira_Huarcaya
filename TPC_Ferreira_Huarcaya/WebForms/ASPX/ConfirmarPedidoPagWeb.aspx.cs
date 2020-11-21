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
    public partial class ConfirmarPedidoPagWeb : System.Web.UI.Page
    {
        public PaginaWeb item { get; set; }

        PaginasWebNegocios pNeg;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["idPagina"] == null)
            {
                Response.Redirect("Home.aspx");//solo se puede entrar a esta pagina llegando con una id por url.
            }
            Cargar();
        }

        void Cargar()
        {
            pNeg = new PaginasWebNegocios();
            var listaCompleta = pNeg.listaPaginassWeb();

            item = listaCompleta.Find(p => p.ID == Convert.ToInt16(Request.QueryString["IdPagina"]));

        }

        protected void btn_Confirmar_Click(object sender, EventArgs e)
        {
            PedidoWebPage pedido = new PedidoWebPage();
            
            pedido.Comentarios = txtBox_Comentarios.Text;
            pedido.Precio = item.Precio;
            pedido.Id_WebPage = item.ID;
            Usuario user = (Usuario)Session["usersession"];
            pedido.Id_Cliente = user.ID; //Dejo comentado esta parte hasta que este implementado el sistema de login y lo retoquemos
            PedidosWebPageNegocio pedidoNeg = new PedidosWebPageNegocio();
            pedidoNeg.AgregarPedido(pedido);
            
        }
    }
}