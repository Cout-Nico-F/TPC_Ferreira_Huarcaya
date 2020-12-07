using Modelo;
using Negocio;
using System;

namespace WebForms.ASPX.AltasModificaciones
{
    public partial class EstilosAM : System.Web.UI.Page
    {
        public Estilo NuevoEstilo { get; set; }

        protected int idRecibido;
        public Estilo EstiloSeleccionado { get; set; }
        public EstiloNegocio EstiloNegocio { get; set; }

        public EstilosAM()
        {
            EstiloNegocio = new EstiloNegocio();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            FiltrarAcceso();
            if (Request.QueryString["idEstilo"] != null)
            {//si es modificacion
                idRecibido = Convert.ToInt16(Request.QueryString["idEstilo"]);

                var listaEstilos = EstiloNegocio.Listar();

                EstiloSeleccionado = listaEstilos.Find(es => idRecibido == es.Id);

                if (!IsPostBack)
                {
                    txtBox_Descripcion.Text = EstiloSeleccionado.Descripcion;
                    txtBox_Url_Imagen.Text = EstiloSeleccionado.Url_Imagen;
                }
            }
            else
            {//si es alta
                NuevoEstilo = new Estilo();
            }

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

        protected void EstiloAM_OK_Click(object sender, EventArgs e)
        {
            lblDescripcion.Text = "";

            if (Validaciones())
            {
                if (Request.QueryString["idEstilo"] != null)
                {//si es modificacion
                    Estilo estiloModificado = new Estilo();

                    estiloModificado.Id = EstiloSeleccionado.Id;
                    estiloModificado.Descripcion = txtBox_Descripcion.Text;
                    estiloModificado.Url_Imagen = txtBox_Url_Imagen.Text;
                    estiloModificado.Habilitado = true;

                    int rowsAfectados = EstiloNegocio.Modificar(estiloModificado);

                    if (rowsAfectados == 1)
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
                 //setear desde el input de usuario los campos
                 //falta validar que sean correctos los datos.
                    NuevoEstilo.Descripcion = txtBox_Descripcion.Text;
                    NuevoEstilo.Url_Imagen = txtBox_Url_Imagen.Text;
                    NuevoEstilo.Habilitado = true;
                    EstiloNegocio estiloNegocio = new EstiloNegocio();

                    //agregarlo a la base de datos
                    if (estiloNegocio.Agregar(NuevoEstilo) < 1)//si hubo error
                    {
                        Response.Redirect("../Error.aspx");
                    }
                    //mostrar popup o pantalla de Exito al agregar.
                    //label.text = Exito!
                    //Hacer Visible por propiedad a un boton que estaba oculto: Volver. 
                    //ese boton volver va a tner la linea de codigo de redirect que esta aca abajo.
                    Response.Redirect("../PersonalizarUsuario.aspx");
                }
            }

        }
        private bool Validaciones()
        {
            if (txtBox_Descripcion.Text == "")
            {
                lblDescripcion.Text = "El campo Descripcion esta vacio";
                return false;
            }
            return true;
        }
    }
}