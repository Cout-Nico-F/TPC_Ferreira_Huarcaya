﻿using Modelo;
using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForms.ASPX
{
    public partial class ModificarPaginaWeb : System.Web.UI.Page
    {
        protected int idRecibido;
        public PaginaWeb PaginaSeleccionada { get; set; }
        public PaginasWebNegocios pagNeg { get; set; }
        public ModificarPaginaWeb()
        {
            pagNeg = new PaginasWebNegocios();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.QueryString["idPaginaWeb"] == null)
            {
                Response.Redirect("Error.aspx");
            }
            idRecibido = Convert.ToInt16(Request.QueryString["idPaginaWeb"]);

            var listaPaginasWeb = pagNeg.listaPaginassWeb();

            PaginaSeleccionada = listaPaginasWeb.Find(pag => idRecibido == pag.ID);

            if (!IsPostBack)
            {
                txtTitulo.Text = PaginaSeleccionada.Titulo;
                txtDescripcion.Text = PaginaSeleccionada.Descripcion;
                txtUrlPaginaWeb.Text = PaginaSeleccionada.Url_PaginaWeb;
                txtUrlImagen.Text = PaginaSeleccionada.Url_Imagen;
                txtPrecio.Text = Convert.ToString(PaginaSeleccionada.Precio);
            }
            

        }

        protected void btn_Cambios_Click(object sender, EventArgs e)
        {
            lblDescripcion.Text = "";
            lblPrecio.Text = "";
            lblTitulo.Text = "";

            if (Validaciones())
            {
                PaginaWeb pag = new PaginaWeb();
                PaginasWebNegocios pagNeg = new PaginasWebNegocios();

                pag.ID = PaginaSeleccionada.ID;
                pag.Titulo = txtTitulo.Text;
                pag.Descripcion = txtDescripcion.Text;
                pag.Url_PaginaWeb = txtUrlPaginaWeb.Text;
                pag.Url_Imagen = txtUrlImagen.Text;
                pag.Precio = Convert.ToInt32(txtPrecio.Text);
                pag.Habilitado = true;

                int rowsAfectados = pagNeg.Modificar(pag);

                if (rowsAfectados != 0)
                {
                    Response.Redirect("Catalogo.aspx");
                }
                else
                {
                    Response.Redirect("Error.aspx");
                }
            }
           
        }
        private bool Validaciones()
        {
            if(txtTitulo.Text == "")
            {
                lblTitulo.Text = "El campos Titulo esta vacio";
                return false;
            }
            if(txtDescripcion.Text == "")
            {
                lblDescripcion.Text = "El campo Descripcion esta vacion";
                return false;
            }
            if(txtPrecio.Text == "")
            {
                lblPrecio.Text = "El campo Precio esta vacio";
                return false;
            }
            return true;
        }
    }
}