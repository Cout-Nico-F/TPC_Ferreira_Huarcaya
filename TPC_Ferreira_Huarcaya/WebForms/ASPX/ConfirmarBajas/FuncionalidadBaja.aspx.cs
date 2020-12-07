using Modelo;
using Negocio;
using System;

namespace WebForms.ASPX.ConfirmarBajas
{
    public partial class FuncionalidadBaja : System.Web.UI.Page
    {
        protected int idRecibido;
        public Funcionalidad Funcionalidad { get; set; }

        public FuncionalidadNegocio FunNegocio { get; set; }

        public FuncionalidadBaja()
        {
            FunNegocio = new FuncionalidadNegocio();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            FiltrarAcceso();
            if (Request.QueryString["idFuncionalidad"] == null)
            {
                Response.Redirect("../Home.aspx");//solo se puede entrar a esta pagina llegando con una id de funcionalidad por url.
            }
            idRecibido = Convert.ToInt32(Request.QueryString["idFuncionalidad"]);

            var listaFuncionalidades = FunNegocio.Listar();
            Funcionalidad = listaFuncionalidades.Find(f => idRecibido == f.Id);
        }

        protected void Btn_Baja_Funcionalidad_Click(object sender, EventArgs e)
        {
            FunNegocio.Eliminar(Funcionalidad.Id);//el metodo permite usar un if para comprobar que se pudo eliminar (1) o que no afecto ninguna row (0)
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