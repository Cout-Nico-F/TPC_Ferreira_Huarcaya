using Modelo;
using Negocio;
using System;

namespace WebForms.ASPX
{
    public partial class ConfirmarPedidoPagWeb : System.Web.UI.Page
    {
        public PaginaWeb item { get; set; }

        PaginasWebNegocios pNeg;
        public Usuario Usuario { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            Usuario = (Usuario)Session["usersession"];
            if (Usuario == null)
            {
                Response.Redirect("InicioSesion.aspx");
            }
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
            PedidosWebPageNegocio pedidoNeg = new PedidosWebPageNegocio();
            DatosPersonalesNegocios datNeg = new DatosPersonalesNegocios();
            EmailNegocios emaNeg = new EmailNegocios();

            pedido.Comentarios = txtBox_Comentarios.Text;
            pedido.Precio = item.Precio;
            pedido.Id_WebPage = item.ID;
            pedido.Id_Cliente = Usuario.ID;

            DatosPersonales dat = datNeg.TraerDatos(Usuario.ID);//esto podria ir en el load para no tener tanto codigo aca podria ir en el else de Usuario == null

            pedidoNeg.AgregarPedido(pedido);

            emaNeg.enviarTemplate(pedido, dat);

            Response.Redirect("PedidoExitoso.aspx?id="+pedido.Id_WebPage);
        }
    }
    //TODO: cuando estemos por hacer la parte de login y crear cuenta una vez que este terminada podemos ahora si hacer las validaciones que necesitamos para terminar esto
    // necesitamos la forma de hacer modales o ventanas emergentes para que se haga mas ameno la aplicacion
    // Mejorar la estetica de la factura 
}