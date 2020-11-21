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
    public partial class ConfirmarPedidoPersonalizado : System.Web.UI.Page
    {
        protected PedidoPaginaPersonalizada Pedido { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["pedidoPersonalizado"] == null)
            {
                Response.Redirect("Error.aspx");
            }
            Pedido = (PedidoPaginaPersonalizada) Session["pedidoPersonalizado"];
        }
        protected void btn_Confirmar_Click1(object sender, EventArgs e)
        {
            Pedido.Comentarios = txtBox_Comentarios.Text;
            Usuario user = (Usuario)Session["usersession"];//TODO:(USUARIOS) confirmar que este logeado un usuario.
            Pedido.Id_Cliente = user.ID;
            
        }
    }
}