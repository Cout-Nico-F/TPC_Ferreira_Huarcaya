using Modelo;
using Negocio;
using System;

namespace WebForms.ASPX.AltasModificaciones
{
    public partial class FuncionalidadesAM : System.Web.UI.Page
    {
        public Funcionalidad NuevaFuncionalidad { get; set; }
        protected int idRecibido;
        public Funcionalidad FuncionalidadElegida { get; set; }
        public FuncionalidadNegocio FunNegocio { get; set; }

        public FuncionalidadesAM()
        {
            FunNegocio = new FuncionalidadNegocio();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            FiltrarAcceso();
            if (Request.QueryString["idFuncionalidad"] != null)
            {//si es modificacion
                idRecibido = Convert.ToInt16(Request.QueryString["idFuncionalidad"]);

                var listaFuncionalidades = FunNegocio.Listar();

                FuncionalidadElegida = listaFuncionalidades.Find(f => idRecibido == f.Id);

                if (!IsPostBack)
                {
                    txtBox_Descripcion.Text = FuncionalidadElegida.Descripcion;
                    txtBox_Costo.Text = FuncionalidadElegida.Costo.ToString();
                }
            }
            else
            {//si es alta
                NuevaFuncionalidad = new Funcionalidad();
            }
        }

        protected void btn_FuncionalidadAM_OK_Click(object sender, EventArgs e)
        {
            lblDescripcion.Text = "";
            lblPrecio.Text = "";

            if (Validaciones())
            {
                if (Request.QueryString["idFuncionalidad"] != null)
                {//si es modificacion
                    Funcionalidad funModificada = new Funcionalidad();

                    funModificada.Id = FuncionalidadElegida.Id;
                    funModificada.Descripcion = txtBox_Descripcion.Text;
                    funModificada.Costo = Convert.ToInt32(txtBox_Costo.Text);
                    funModificada.Habilitado = true;

                    int rowsAfectadas = FunNegocio.Modificar(funModificada);

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
                 //setear desde el input de usuario los campos
                 //falta validar que sean correctos los datos.
                    NuevaFuncionalidad.Descripcion = txtBox_Descripcion.Text;
                    NuevaFuncionalidad.Costo = Convert.ToInt32(txtBox_Costo.Text);
                    NuevaFuncionalidad.Habilitado = true;
                    FuncionalidadNegocio funcionalidadNegocio = new FuncionalidadNegocio();

                    //agregarlo a la base de datos
                    if (funcionalidadNegocio.Agregar(NuevaFuncionalidad) < 1)//si hubo error
                    {
                        Response.Redirect("../Error.aspx");
                    }
                    //mostrar popup o pantalla de Exito al agregar.
                    //label.text = 
                    Response.Redirect("../PersonalizarUsuario.aspx");
                }
            }

        }
        private bool Validaciones()
        {
            if (txtBox_Descripcion.Text == "")
            {
                lblDescripcion.Text = "El campos Descripcion esta vacio";
                return false;
            }
            if (txtBox_Costo.Text == "")
            {
                lblPrecio.Text = "El campo Precio esta vacio";
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