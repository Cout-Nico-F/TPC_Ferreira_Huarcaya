using Modelo;
using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
           if(Request.QueryString["idPaginaWeb"] != null)
            {
                PaginasWebNegocios pagNeg = new PaginasWebNegocios();
                Int16 idRecibido = Convert.ToInt16(Request.QueryString["idPaginaWeb"]);

                int rows = pagNeg.Restaurar(idRecibido);
                if(rows > 0)
                {
                    Response.Redirect("RecursosAdmin.aspx");
                }
                else
                {
                    Response.Redirect("Error.aspx");
                }
            }
           /*if(Request.QueryString["idUsuario"] != null)
            {
                CambiarHabilitadoUsuario();
            }*/
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
        /*void CambiarHabilitadoUsuario()
        {
            UsuarioNegocio usuNeg = new UsuarioNegocio();
            

            Int16 id = Convert.ToInt16(Request.QueryString["idUsuario"]);

            if(  == id)
            {
                if( == true)
                {
                    usuNeg.CambiarHabilitado(id,true);
                }
                else
                {
                    usuNeg.CambiarHabilitado(id, false);
                }
            }
           
        }*/
    }
}