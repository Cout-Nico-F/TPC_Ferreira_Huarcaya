using Modelo;
using Negocio;
using System;

namespace WebForms.ASPX
{
    public partial class EditarDatosPersonales : System.Web.UI.Page
    {
        public Usuario Usuario { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            Usuario = (Usuario)Session["usersession"];
            if (Usuario != null)
            {
                if (!IsPostBack)
                {
                    try
                    {
                        DatosPersonales dat = new DatosPersonales();
                        DatosPersonalesNegocios edNeg = new DatosPersonalesNegocios();

                        dat = edNeg.TraerDatos(Usuario.ID); //esta mal la conexion a la DB sqlexception must declare scalar @id_Usuario en command = executeNonQuery();

                        //idUsuario = Usuario.ID; //guardo el id de la session en una variable , para que lo queria guardar aca???

                        //Muestra en cada textbox los datos que encontro del usuario

                        txtNombreApellido.Text = dat.NombreApellido;
                        txtTelefonoMovil.Text = Convert.ToString(dat.TelefonoMovil);
                        txtTelefonoFijo.Text = Convert.ToString(dat.TelefonoFijo);
                        txtEmail.Text = dat.Email;
                        txtEmailRecuperacion.Text = dat.EmailRecuperacion;
                        txtContrasenia.Text = Usuario.Contrasenia;
                        txtNombreUsuario.Text = Usuario.NombreUsuario;
                    }
                    catch (Exception)
                    {
                        // el usuario no fue encontrado o hubo un error inesperado
                        Response.Redirect("Error.aspx");
                    }

                }

            }
            else
            {
                Response.Redirect("InicioSesion.aspx");//si no esta logeado me manda a iniciar sesion
            }

        }
        protected void btn_Cambio_Click(object sender, EventArgs e)
        {
            lblContrasenia.Text = "";
            lblMail.Text = "";
            lblNombreApellido.Text = "";
            lblNombreUsuario.Text = "";

            if (Validaciones())
            {

                //enviarlo de nuevo a la DB con update
                DatosPersonales datos = new DatosPersonales();
                Usuario usu = new Usuario();
                PaginasWebNegocios pagNeg = new PaginasWebNegocios();

                datos.NombreApellido = txtNombreApellido.Text;
                datos.TelefonoMovil = Convert.ToInt32(txtTelefonoMovil.Text);
                datos.TelefonoFijo = Convert.ToInt32(txtTelefonoFijo.Text);
                datos.Email = txtEmail.Text;
                datos.EmailRecuperacion = txtEmailRecuperacion.Text;
                usu.NombreUsuario = txtNombreUsuario.Text;
                usu.Contrasenia = UsuarioNegocio.GetSHA256(txtContrasenia.Text);
                usu.ID = Usuario.ID;


                pagNeg.ActualizarDatos(usu, datos);

                Response.Redirect("Catalogo.aspx");
            }

        }
        private bool Validaciones()
        {
            if (txtNombreApellido.Text == "")
            {
                lblNombreApellido.Text = "El campos Nombre Apellido no puede estar vacio";
                return false;
            }
            if (txtNombreUsuario.Text == "")
            {
                lblNombreUsuario.Text = "El campo Nombre Usuario no puede estar vacio";
                return false;
            }
            if (txtContrasenia.Text == "")
            {
                lblContrasenia.Text = "El campo contraseña no puede estar vacio";
                return false;
            }
            if (txtEmail.Text == "")
            {
                lblMail.Text = "El campo Mail no puede estar vacio";
                return false;
            }
            return true;
        }
    }
}