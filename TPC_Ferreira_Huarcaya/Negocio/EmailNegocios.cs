using System.Net.Mail;
using System.Net;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Modelo;

namespace Negocio
{
    public class EmailNegocios
    {
        public void EnviarMailPruebaPedidoPersonalizado(DatosPersonales dat,PedidoPaginaPersonalizada Pedido)
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
        public void EnviarMailPruebaPedidoPrediseniado(PedidoWebPage pedido, DatosPersonales dat)
        {
            string body = "<body>" +
            "<h1>Hola " + dat.NombreApellido + "</h1>" +
            "<h1>" + pedido.Comentarios + "</h1>" +
            "<h1>" + pedido.Precio + "</h1>" +
            "<h1>" + pedido.Id_WebPage + "</h1>" +
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
