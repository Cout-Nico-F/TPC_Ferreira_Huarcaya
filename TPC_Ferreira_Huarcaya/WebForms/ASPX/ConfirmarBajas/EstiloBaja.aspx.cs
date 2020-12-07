using Modelo;
using Negocio;
using System;

namespace WebForms.ASPX.ConfirmarBajas
{
    public partial class EstiloBaja : System.Web.UI.Page
    {
        protected int idRecibido;

        public Estilo EstiloSeleccionado { get; set; }

        public EstiloNegocio EstNegocio { get; set; }

        public EstiloBaja()
        {
            EstNegocio = new EstiloNegocio();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            FiltrarAcceso();
            if (Request.QueryString["idEstilo"] == null)
            {
                Response.Redirect("../Home.aspx");//solo se puede entrar a esta pagina llegando con una id de estilo por url.
            }
            idRecibido = Convert.ToInt32(Request.QueryString["idEstilo"]);

            var listaEstilos = EstNegocio.Listar();
            EstiloSeleccionado = listaEstilos.Find(es => idRecibido == es.Id);
        }

        protected void Btn_Baja_Estilo_Click(object sender, EventArgs e)
        {
            EstNegocio.Eliminar(EstiloSeleccionado.Id);
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