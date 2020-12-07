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
        public void EnviarMailPruebaPedidoPersonalizado(DatosPersonales dat, PedidoPaginaPersonalizada pedido)
        {
            string body = "<body>" +
            "<h1>Hola " + dat.NombreApellido + "</h1>" +
            "<h2>Muchas gracias por contar con nosotros!</h2>" +
            "<h3>Estos son los detalles de tu pedido:</h3>" +
            "<h3>Precio Final: $" + pedido.Precio + "</h3>" +
            "<h3>Tu numero de cliente es: " + dat.IdUsuario + "</h3>" +
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
        public void enviarTemplate(PedidoWebPage pedido, DatosPersonales dat)
        {
            string body = "<body>" +
            "<h1>Hola " + dat.NombreApellido + "</h1>" +
            "<h2>Muchas gracias por contar con nosotros!</h2>" +
            "<h3>Estos son los detalles de tu pedido:</h3>" +
            "<h3>Precio Final: $" + pedido.Precio + "</h3>" +
            "<h3>Tu numero de cliente es: " + dat.IdUsuario + "</h3>" +
            "<h3>Recibimos tus comentarios: " + pedido.Comentarios + "</h3>" +
            "</body>";

            string adjunto = ""; 

            if(dat.IdUsuario == 6)
            {
                switch (pedido.Id_WebPage)
                {
                    case 1:
                        {
                            adjunto = @"C:\Users\Alons\Desktop\Template_01.rar";
                        }
                        break;
                    case 2:
                        {
                            adjunto = @"C:\Users\Alons\Desktop\Template_02.rar";
                        }
                        break;
                    case 3:
                        {
                            adjunto = @"C:\Users\Alons\Desktop\Template_03.rar";
                        }
                        break;
                };
           
            }
            if (dat.IdUsuario == 7)
            {
                switch (pedido.Id_WebPage)
                {
                    case 1:
                        {
                            adjunto = @"C:\Users\Nferr\Desktop\Template_01.rar";
                        }
                        break;
                    case 2:
                        {
                            adjunto = @"C:\Users\Nferr\Desktop\Template_02.rar";
                        }
                        break;
                    case 3:
                        {
                            adjunto = @"C:\Users\Nferr\Desktop\Template_03.rar";
                        }
                        break;
                };

            }


            SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
            smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtp.EnableSsl = true;
            smtp.UseDefaultCredentials = false;
            smtp.Credentials = new NetworkCredential("webform.proyecto01@gmail.com", "Webform123");

            MailMessage mail = new MailMessage();
            mail.Attachments.Add(new Attachment(adjunto));
            mail.From = new MailAddress("webform.proyecto01@gmail.com", "Pedido de Pagina Web");
            mail.To.Add(new MailAddress(dat.Email));
            mail.Subject = "Recibimos tu pedido de pagina web";
            mail.IsBodyHtml = true;
            mail.Body = body;

            smtp.Send(mail);
        }
      
    }
}
