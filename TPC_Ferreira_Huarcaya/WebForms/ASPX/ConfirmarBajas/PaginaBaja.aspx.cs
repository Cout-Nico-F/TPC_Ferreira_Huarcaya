using Modelo;
using Negocio;
using System;

namespace WebForms.ASPX.ConfirmarBajas
{
    public partial class PaginaBaja : System.Web.UI.Page
    {
        protected int idRecibido;

        public Pagina PaginaSeleccionada { get; set; }
        public PaginaNegocio PagNeg { get; set; }

        public PaginaBaja()
        {
            PagNeg = new PaginaNegocio();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            FiltrarAcceso();
            if (Request.QueryString["idPagina"] == null)
            {
                Response.Redirect("../Home.aspx");//solo se puede entrar a esta pagina llegando con una id de pagina por url.
            }
            idRecibido = Convert.ToInt32(Request.QueryString["idPagina"]);

            var listaPaginas = PagNeg.Listar();
            PaginaSeleccionada = listaPaginas.Find(pag => idRecibido == pag.ID);
        }

        protected void btn_Baja_Pagina_Click(object sender, EventArgs e)
        {
            PagNeg.Eliminar(PaginaSeleccionada.ID);
            Response.Redirect("../PersonalizarUsuario.aspx");
        }
        void FiltrarAcceso()
        {
            if (Session["usersession"] == null)//si no hay usuario en la sesion, ir a Log-in
            {
                Response.Redirect("../InicioSesion.aspx");
            }
            Usuario usuario = (Usuario)Session["usersession"];
            if (usuario == null)
            {
                Response.Redirect("../InicioSesion.aspx");
            }
            else if (usuario.Id_Acceso != 3)//verificar el tipo de acceso para poder ver la pagina.
            {
                Response.Redirect("../Home.aspx");
            }
        }
    }
}