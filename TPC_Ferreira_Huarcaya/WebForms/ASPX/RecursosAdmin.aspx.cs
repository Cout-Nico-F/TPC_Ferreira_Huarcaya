using Modelo;
using Negocio;
using System;
using System.Collections.Generic;

namespace WebForms.ASPX
{
    public partial class RecursosAdmin : System.Web.UI.Page
    {
        public Usuario Usuario { get; set; }
        public List<PaginaWeb> ListaPaginasWeb { get; set; }
        public List<PedidoWebPage> ListaPedidosPrediseniada { get; set; }
        public List<VistaPedidoPersonalizado> ListaVistaPedidos { get; set; }
        public List<Usuario> Usuarios { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            FiltrarAcceso();

            if (Request.QueryString["idPaginaWeb"] != null)
            {
                PaginasWebNegocios pagNeg = new PaginasWebNegocios();
                Int16 idRecibido = Convert.ToInt16(Request.QueryString["idPaginaWeb"]);

                int rows = pagNeg.Restaurar(idRecibido);
                if (rows > 0)
                {
                    Response.Redirect("RecursosAdmin.aspx");
                }
                else
                {
                    Response.Redirect("Error.aspx");
                }
            }
            try
            {
                PaginasWebNegocios pagNegocio = new PaginasWebNegocios();
                ListaPaginasWeb = pagNegocio.listaPaginassWeb();
            }
            catch (Exception ex)
            {

                Session.Add("errorEncontrado", ex.ToString());
                Response.Redirect("Error.aspx");
            }
            LlenarListas();

            if (!IsPostBack)
            {
                PedidoPersonalizadoNegocio persNeg = new PedidoPersonalizadoNegocio();
                txtBox_PrecioBase.Text = persNeg.GetPrecioBase().ToString();
                txtBox_PrecioPorPagina.Text = persNeg.GetPrecioPorPagina().ToString();
            }
        }

        void FiltrarAcceso()
        {
            if (Session["usersession"] == null)//si no hay usuario en la sesion, ir a Log-in
            {
                Response.Redirect("InicioSesion.aspx");
            }
            Usuario = (Usuario)Session["usersession"];
            if (Usuario == null)
            {
                Response.Redirect("InicioSesion.aspx");
            }
            else if (Usuario.Id_Acceso != 3)//verificar el tipo de acceso para poder ver la pagina.
            {
                Response.Redirect("Home.aspx");
            }
        }

        void LlenarListas()
        {
            UsuarioNegocio usuNeg = new UsuarioNegocio();

            Usuarios = usuNeg.listaDeUsuarios();

            PedidosWebPageNegocio pedWeb = new PedidosWebPageNegocio();

            ListaPedidosPrediseniada = pedWeb.TraerPedidos();

            PedidoPersonalizadoNegocio persNeg = new PedidoPersonalizadoNegocio();
            ListaVistaPedidos = new List<VistaPedidoPersonalizado>();
            ListaVistaPedidos = persNeg.ListarVistas();
            //TODO:En las listas de pedidos tenemos que agregar la opcion de dar por finalizado un pedido. Para que solo se listen los que estan en curso
        }

        protected void btn_Actualizar_Click(object sender, EventArgs e)
        {
            PedidosWebPageNegocio pedWeb = new PedidosWebPageNegocio();

            ListaPedidosPrediseniada = pedWeb.TraerPedidos();

        }
        protected void btn_Actualizar_Personalizada_Click(object sender, EventArgs e)
        {
            PedidoPersonalizadoNegocio persNeg = new PedidoPersonalizadoNegocio();
            ListaVistaPedidos = new List<VistaPedidoPersonalizado>();
            ListaVistaPedidos = persNeg.ListarVistas();

        }

        protected void btn_Usuarios_Click(object sender, EventArgs e)
        {
            UsuarioNegocio usuNeg = new UsuarioNegocio();

            Usuarios = usuNeg.listaDeUsuarios(); //trae todos los usuario y los listo en la tabla
        }

        protected void btn_PrecioBase_Click(object sender, EventArgs e)
        {
            PedidoPersonalizadoNegocio persNeg = new PedidoPersonalizadoNegocio();
            persNeg.SetPrecioBase(Convert.ToInt32(txtBox_PrecioBase.Text));
        }

        protected void btn_PrecioPorPagina_Click(object sender, EventArgs e)
        {
            PedidoPersonalizadoNegocio persNeg = new PedidoPersonalizadoNegocio();
            persNeg.SetPrecioPorPagina(Convert.ToInt32(txtBox_PrecioPorPagina.Text));
            txtBox_PrecioPorPagina.Text = persNeg.GetPrecioPorPagina().ToString();

        }
    }
}