﻿using System;
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
            EmailNegocios emaNeg = new EmailNegocios();
            DatosPersonales dat = datNeg.TraerDatos(Usuario.ID);

            Pedido.Comentarios = txtBox_Comentarios.Text;
           
            Pedido.Id_Cliente = Usuario.ID;

            pedPer.AgregarPedido(Pedido);

            emaNeg.EnviarMailPruebaPedidoPersonalizado(dat,Pedido); 

            Response.Redirect("PedidoExitoso.aspx");
            //TODO: Necesitamos una ventana emergente si o si
        }
    }
}