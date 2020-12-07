using Modelo;
using Negocio;
using System;

namespace WebForms.ASPX
{
    public partial class InicioSesion : System.Web.UI.Page
    {
        public Usuario Usuario { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["LogOut"] != null)
            {
                if (Session["usersession"] != null)
                {
                    Session.Remove("usersession");
                    Response.Redirect("Home.aspx");
                }
            }
            if (Request.QueryString["usuario"] != null)
            {
                txtNombreUsuario.Text = Request.QueryString["usuario"].ToString();
            }
            if (IsPostBack)
            {
                lblContrasenia.Text = "";
                lblNombreUsuario.Text = "";
            }
        }

        protected void btn_Ingresar_Click(object sender, EventArgs e)
        {
            //esto es como un clear
            lblContrasenia.Text = "";
            lblNombreUsuario.Text = "";


            if (Validaciones())
            {
                LoginNegocio logNeg = new LoginNegocio();
                Usuario user = new Usuario();

                user.NombreUsuario = txtNombreUsuario.Text;
                user.Contrasenia = UsuarioNegocio.GetSHA256(txtPass.Text);

                Usuario = logNeg.login(user);

                if (Usuario.ID != 0)
                {
                    Session.Add("usersession", Usuario);
                    Response.Redirect("Catalogo.aspx");//TODO: Sistema para volver al url que nos envió aqui(osea para continuar en donde estabamos)
                }
                else
                {
                    lbl_Mensaje.BackColor = System.Drawing.Color.Red;
                    lbl_Mensaje.ForeColor = System.Drawing.Color.White;
                    lbl_Mensaje.Text = "Usuario o Contraseña no existente!";
                    //Response.Redirect("Error.aspx");
                }

            }

        }
        private bool Validaciones()
        {
            if (txtNombreUsuario.Text == "")
            {
                lblNombreUsuario.Text = "El campos Nombre Usuario no puede estar vacio";
                return false;
            }
            if (txtPass.Text == "")
            {
                lblContrasenia.Text = "El campo Contraseña no puede estar vacio";
                return false;
            }
            return true;

        }

    }

}