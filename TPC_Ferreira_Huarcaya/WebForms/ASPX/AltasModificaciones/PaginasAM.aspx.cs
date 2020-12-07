using Modelo;
using Negocio;
using System;

namespace WebForms.ASPX.AltasModificaciones
{
    public partial class PaginasAM : System.Web.UI.Page
    {
        public Pagina _Pagina { get; set; }

        public PaginaNegocio PaginaNegocio { get; set; }
        protected int idRecibido;

        public PaginasAM()
        {
            PaginaNegocio = new PaginaNegocio();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            FiltrarAcceso();
            if (Request.QueryString["idPagina"] != null)
            {//si es modificacion
                idRecibido = Convert.ToInt16(Request.QueryString["idPagina"]);
                var listaPaginas = PaginaNegocio.Listar();
                _Pagina = listaPaginas.Find(pa => idRecibido == pa.ID);
                if (!IsPostBack)
                {
                    txtBox_Descripcion.Text = _Pagina.Descripcion;
                    txtBox_Url_Imagen.Text = _Pagina.Url_Imagen;
                }
            }
            else
            {//si es alta
                _Pagina = new Pagina();
            }

        }

        protected void Btn_PaginaAM_OK_Click(object sender, EventArgs e)
        {
            lblDescripcion.Text = "";

            if (Validaciones())
            {
                if (Request.QueryString["idPagina"] != null)
                {//si es modificacion
                    Pagina pagModificada = new Pagina();
                    pagModificada.ID = _Pagina.ID;
                    pagModificada.Descripcion = txtBox_Descripcion.Text;
                    pagModificada.Url_Imagen = txtBox_Url_Imagen.Text;
                    pagModificada.Habilitado = true;

                    int rowsAfectadas = PaginaNegocio.Modificar(pagModificada);

                    if (rowsAfectadas == 1)
                    {
                        Response.Redirect("../PersonalizarUsuario.aspx");
                    }
                    else
                    {
                        Response.Redirect("Error.aspx");
                    }
                }
                else
                {//si es alta
                    _Pagina.Descripcion = txtBox_Descripcion.Text;
                    _Pagina.Url_Imagen = txtBox_Url_Imagen.Text;
                    _Pagina.Habilitado = true;

                    PaginaNegocio PagNeg = new PaginaNegocio();

                    if (PagNeg.Agregar(_Pagina) < 1)
                    {
                        Response.Redirect("../Error.aspx");
                    }
                    else Response.Redirect("../PersonalizarUsuario.aspx");
                }
            }

        }
        private bool Validaciones()
        {
            if (txtBox_Descripcion.Text == "")
            {
                lblDescripcion.Text = "El campo Descripcion no puede estar vacio";
                return false;
            }
            return true;
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