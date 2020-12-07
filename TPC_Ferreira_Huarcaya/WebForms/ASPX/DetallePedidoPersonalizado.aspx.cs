using Modelo;
using Negocio;
using System;
using System.Collections.Generic;

namespace WebForms.ASPX
{
    public partial class DetallePedidoPersonalizado : System.Web.UI.Page
    {
        Int16 idPedido;
        PedidoPersonalizadoNegocio pneg;
        public PedidoPaginaPersonalizada PedidoSeleccionado { get; set; }
        public List<Funcionalidad> Funcionalidades { get; set; }
        public List<Pagina> Paginas { get; set; }
        public DatosPersonales DatosUsuario { get; set; }
        public Usuario Usuario { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            Usuario = (Usuario)Session["usersession"];

            pneg = new PedidoPersonalizadoNegocio();
            if (Usuario.Id_Acceso != 3)
            {
                Response.Redirect("InicioSesion.aspx");
            }
            if (Request.QueryString["idPedido"] == null)
            {
                Response.Redirect("Home.aspx");//solo se puede entrar a esta pagina llegando con una id por url.
            }
            idPedido = Convert.ToInt16(Request.QueryString["idPedido"]);
            CargarPedidoSeleccionado();
            CargarDatosUsuarioPedido();
            CargarFuncionalidades();
            CargarPaginas();
        }

        void CargarPedidoSeleccionado()
        {
            List<PedidoPaginaPersonalizada> listaPedidos = pneg.ListarPedidos();
            PedidoSeleccionado = listaPedidos.Find(p => p.Id == idPedido);
        }
        void CargarFuncionalidades()
        {
            Funcionalidades = pneg.ListarFuncionalidades(idPedido);
        }

        void CargarPaginas()
        {
            Paginas = pneg.ListarPaginas(idPedido);
        }
        void CargarDatosUsuarioPedido()
        {
            DatosPersonalesNegocios datNeg = new DatosPersonalesNegocios();
            DatosUsuario = datNeg.TraerDatos(PedidoSeleccionado.Id_Cliente);
        }
        //TODO: Necesitamos una seccion donde el staff pueda buscar datos personales por numero de ID de usuario
    }
}