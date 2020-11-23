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
    public partial class ConfirmarPedidoPagWeb : System.Web.UI.Page
    {
        public PaginaWeb item { get; set; }

        PaginasWebNegocios pNeg;
        public Usuario Usuario { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            Usuario = (Usuario)Session["usersession"];
            if(Usuario == null)
            {
                Response.Redirect("InicioSesion.aspx");
            }
            if (Request.QueryString["idPagina"] == null)
            {
                Response.Redirect("Home.aspx");//solo se puede entrar a esta pagina llegando con una id por url.
            }
            Cargar();
        }

        void Cargar()
        {
            pNeg = new PaginasWebNegocios();
            var listaCompleta = pNeg.listaPaginassWeb();

            item = listaCompleta.Find(p => p.ID == Convert.ToInt16(Request.QueryString["IdPagina"]));

        }

        protected void btn_Confirmar_Click(object sender, EventArgs e)
        {
            PedidoWebPage pedido = new PedidoWebPage();
            PedidosWebPageNegocio pedidoNeg = new PedidosWebPageNegocio();
            DatosPersonalesNegocios datNeg = new DatosPersonalesNegocios();

            pedido.Comentarios = txtBox_Comentarios.Text;
            pedido.Precio = item.Precio;
            pedido.Id_WebPage = item.ID;
            pedido.Id_Cliente = Usuario.ID;

            DatosPersonales dat = datNeg.TraerDatos(Usuario.ID);//esto podria ir en el load para no tener tanto codigo aca podria ir en el else de Usuario == null

            pedidoNeg.AgregarPedido(pedido);

            EnviarMailPrueba(pedido,dat);

            Response.Redirect("PedidoExitoso.aspx");
        }
        protected void EnviarMailPrueba(PedidoWebPage pedido,DatosPersonales dat)
        {
            string body = "<body>" + 
            "<h1>Hola "+dat.NombreApellido+"</h1>" + 
            "<h1>"+pedido.Comentarios+"</h1>" + 
            "<h1>"+pedido.Precio+"</h1>" +
            "<h1>" + pedido.Id_WebPage + "</h1>" + 
            "</body>";

            SmtpClient smtp = new SmtpClient("smtp.gmail.com",587);
            smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtp.EnableSsl = true;
            smtp.UseDefaultCredentials = false;
            smtp.Credentials = new NetworkCredential("webform.proyecto01@gmail.com", "Webform123");

            MailMessage mail = new MailMessage();
            mail.From = new MailAddress("webform.proyecto01@gmail.com","Pedido de Pagina Web");
            mail.To.Add(new MailAddress(dat.Email));
            mail.Subject = "Tu factura electronica";
            mail.IsBodyHtml = true;
            mail.Body = body;

            smtp.Send(mail);
        }
    }
    //TODO: cuando estemos por hacer la parte de login y crear cuenta una vez que este terminada podemos ahora si hacer las validaciones que necesitamos para terminar esto
    //TODO: esta harcodeado el id_Usuario 6 (ya no)
    //TODO: necesitamos la forma de hacer modales o ventanas emergentes para que se haga mas ameno la aplicacion
    //TODO: Mejorar la estetica de la factura 
}