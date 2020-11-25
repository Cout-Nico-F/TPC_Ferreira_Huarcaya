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
        public void EnviarMailPruebaPedidoPersonalizado(DatosPersonales dat,PedidoPaginaPersonalizada pedido)
        {
            string body = "<body>" +
            "<h1>Hola " + dat.NombreApellido + "</h1>" +
            "<h2>Muchas gracias por contar con nosotros!</h2>" +
            "<h2>Recibimos tu pedido de pagina web. Un representante se comunicara contigo a la brevedad!.</h2>" +
            //"<h3>Estos son los detalles de tu pedido:</h3>" +
            "<h3>Precio Final: $" + pedido.Precio + "</h3>" +
            //"<h3>Tu numero de pedido es: " + pedido.Id + "</h3>" +
            //"<h3>Tu numero de cliente es: " + dat.Usuario + "</h3>" +
            "<h3>Recibimos tus comentarios: " + pedido.Comentarios + "</h3>" +
            "</body>";


            SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
            smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtp.EnableSsl = true;
            smtp.UseDefaultCredentials = false;
            smtp.Credentials = new NetworkCredential("webform.proyecto01@gmail.com", "Webform123");

            MailMessage mail = new MailMessage();
            mail.From = new MailAddress("webform.proyecto01@gmail.com", "Pedido de Pagina Web");
            mail.To.Add(new MailAddress(dat.Email));
            mail.Subject = "Recibimos tu pedido de pagina web";
            mail.IsBodyHtml = true;
            mail.Body = body;

            smtp.Send(mail);
        }
        public void EnviarMailPruebaPedidoPrediseniado(PedidoWebPage pedido, DatosPersonales dat)
        {
            string body = "<body>" +
            "<h1>Hola " + dat.NombreApellido + "</h1>" +
            "<h2>Muchas gracias por contar con nosotros!</h2>" +
            "<h2>Recibimos tu pedido de pagina web. Un representante se comunicara contigo a la brevedad!.</h2>" +
            //"<h3>Estos son los detalles de tu pedido:</h3>" +
            "<h3>Precio Final: $" + pedido.Precio + "</h3>" +
            //"<h3>Tu numero de pedido es: " + pedido.Id + "</h3>" + //Como el id lo pone la base de datos, en este punto no lo reconoce
            //"<h3>Tu numero de cliente es: " + dat.Usuario + "</h3>" + //TODO: usar el SP para recibir el id de pedido.
            "<h3>Recibimos tus comentarios: " + pedido.Comentarios + "</h3>" +
            "</body>";

            SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
            smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtp.EnableSsl = true;
            smtp.UseDefaultCredentials = false;
            smtp.Credentials = new NetworkCredential("webform.proyecto01@gmail.com", "Webform123");

            MailMessage mail = new MailMessage();
            mail.From = new MailAddress("webform.proyecto01@gmail.com", "Pedido de Pagina Web");
            mail.To.Add(new MailAddress(dat.Email));
            mail.Subject = "Recibimos tu pedido de pagina web";
            mail.IsBodyHtml = true;
            mail.Body = body;

            smtp.Send(mail);
        }
    }
}
