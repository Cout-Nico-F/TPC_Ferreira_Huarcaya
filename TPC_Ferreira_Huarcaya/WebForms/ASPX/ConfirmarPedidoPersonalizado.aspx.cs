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
        public Usuario Usuario { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            Usuario = (Usuario)Session["usersession"];
            if(Usuario == null)
            {
                Response.Redirect("InicioSesion.aspx");
            }
            if (Session["pedidoPersonalizado"] == null)
            {
                Response.Redirect("Error.aspx");
            }
            Pedido = (PedidoPaginaPersonalizada) Session["pedidoPersonalizado"];
        }
        protected void btn_Confirmar_Click1(object sender, EventArgs e)
        {
            //Usuario user = (Usuario)Session["usersession"];//TODO:(USUARIOS) confirmar que este logeado un usuario.

            PedidoPersonalizadoNegocio pedPer = new PedidoPersonalizadoNegocio();

            Pedido.Comentarios = txtBox_Comentarios.Text;
           
            Pedido.Id_Cliente = Usuario.ID;

            pedPer.AgregarPedido(Pedido);

            //TODO: Ahora en caso de que no inicies sesion en principio no te dejaria confirmar el pedido
            //TODO: Agregue una properti de usuario para poder manejar el usuario en todo el negocio Maxi lo usaba asi
        }
    }
}