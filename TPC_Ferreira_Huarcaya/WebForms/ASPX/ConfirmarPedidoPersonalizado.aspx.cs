using System.Net.Mail;
using System.Net;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Modelo;
using Negocio;

namespace WebForms.ASPX
{
    public partial class ConfirmarPedidoPersonalizado : System.Web.UI.Page
    {
        protected PedidoPaginaPersonalizada Pedido { get; set; }
        public Usuario Usuario { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            Usuario = (Usuario)Session["usersession"];
            if(Usuario == null)
            {
                Response.Redirect("InicioSesion.aspx");
            }
            if (Session["pedidoPersonalizado"] == null)
            {
                Response.Redirect("Error.aspx");
            }
            Pedido = (PedidoPaginaPersonalizada) Session["pedidoPersonalizado"];
        }
        protected void btn_Confirmar_Click1(object sender, EventArgs e)
        {
            PedidoPersonalizadoNegocio pedPer = new PedidoPersonalizadoNegocio();
            DatosPersonalesNegocios datNeg = new DatosPersonalesNegocios();
            DatosPersonales dat = datNeg.TraerDatos(Usuario.ID);

            Pedido.Comentarios = txtBox_Comentarios.Text;
           
            Pedido.Id_Cliente = Usuario.ID;

            pedPer.AgregarPedido(Pedido);

            EnviarMailPrueba( dat); //si pedido es una property no hace falta que lo envie como un parametro

            Response.Redirect("PedidoExitoso.aspx");
            //TODO: Ahora en caso de que no inicies sesion en principio no te dejaria confirmar el pedido
            //TODO: Agregue una properti de usuario para poder manejar el usuario en todo el negocio Maxi lo usaba asi
            //TODO: Necesitamos una ventana emergente si o si
        }
        protected void EnviarMailPrueba( DatosPersonales dat)
        {
            string body = "<body>" +
            "<h1>Hola " + dat.NombreApellido + "</h1>" +
            "<h1> Comentario: " + Pedido.Comentarios + "</h1>" +
            "<h1> Precio:" + Pedido.Precio + " $</h1>" +
            "<h1> ID_Estilo" + Pedido.ID_Estilo + "</h1>" +
            "</body>";

            SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
            smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtp.EnableSsl = true;
            smtp.UseDefaultCredentials = false;
            smtp.Credentials = new NetworkCredential("webform.proyecto01@gmail.com", "Webform123");

            MailMessage mail = new MailMessage();
            mail.From = new MailAddress("webform.proyecto01@gmail.com", "Pedido de Pagina Web");
            mail.To.Add(new MailAddress(dat.Email));
            mail.Subject = "Tu factura electronica";
            mail.IsBodyHtml = true;
            mail.Body = body;

            smtp.Send(mail);
        }
    }
}