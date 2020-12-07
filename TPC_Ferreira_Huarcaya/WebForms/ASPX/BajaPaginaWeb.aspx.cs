using Modelo;
using Negocio;
using System;

namespace WebForms.ASPX
{
    public partial class Baja_PaginaWeb : System.Web.UI.Page
    {
        protected int idRecibido;
        public PaginaWeb PaginaSeleccionada { get; set; }
        public PaginasWebNegocios pagNeg { get; set; }
        public Baja_PaginaWeb()
        {
            pagNeg = new PaginasWebNegocios();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            FiltrarAcceso();
            if (Request.QueryString["idPaginaWeb"] == null)
            {
                Response.Redirect("Error.aspx");
            }
            idRecibido = Convert.ToInt16(Request.QueryString["idPaginaWeb"]);

            var listaPaginasWeb = pagNeg.listaPaginassWeb();

            PaginaSeleccionada = listaPaginasWeb.Find(pag => idRecibido == pag.ID);

        }
        protected void btn_Confirmar_Click(object sender, EventArgs e)
        {
            pagNeg.Eliminar(PaginaSeleccionada.ID);
            Response.Redirect("Catalogo.aspx");
        }
        void FiltrarAcceso()
        {
            if (Session["usersession"] == null)//si no hay usuario en la sesion, ir a Log-in
            {
                Response.Redirect("InicioSesion.aspx");
            }
            Usuario usuario = (Usuario)Session["usersession"];
            if (usuario == null)
            {
                Response.Redirect("InicioSesion.aspx");
            }
            else if (usuario.Id_Acceso != 3)//verificar el tipo de acceso para poder ver la pagina.
            {
                Response.Redirect("Home.aspx");
            }
        }
    }
}