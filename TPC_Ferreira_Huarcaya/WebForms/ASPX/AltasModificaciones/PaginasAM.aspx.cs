﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Modelo;
using Negocio;

namespace WebForms.ASPX.AltasModificaciones
{
    public partial class PaginasAM : System.Web.UI.Page
    {
        public Pagina _Pagina { get; set; }

        public PaginaNegocio PaginaNegocio { get; set; }
        protected int idRecibido;

        public PaginasAM()
        {
            PaginaNegocio = new PaginaNegocio();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["idPagina"] != null)
            {//si es modificacion
                idRecibido = Convert.ToInt16(Request.QueryString["idPagina"]);
                var listaPaginas = PaginaNegocio.Listar();
                _Pagina = listaPaginas.Find(pa => idRecibido == pa.ID);
                if (!IsPostBack)
                {
                    txtBox_Descripcion.Text = _Pagina.Descripcion;
                    txtBox_Url_Imagen.Text = _Pagina.Url_Imagen;
                }
            }
            else
            {//si es alta
                _Pagina = new Pagina();
            }
           
        }

        protected void Btn_PaginaAM_OK_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["idPagina"] != null)
            {//si es modificacion
                Pagina pagModificada = new Pagina();
                pagModificada.ID = _Pagina.ID;
                pagModificada.Descripcion = txtBox_Descripcion.Text;
                pagModificada.Url_Imagen = txtBox_Url_Imagen.Text;
                pagModificada.Habilitado = true;

                int rowsAfectadas = PaginaNegocio.Modificar(pagModificada);

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
                _Pagina.Descripcion = txtBox_Descripcion.Text;
                _Pagina.Url_Imagen = txtBox_Url_Imagen.Text;
                _Pagina.Habilitado = true;

                PaginaNegocio PagNeg = new PaginaNegocio();

                if (PagNeg.Agregar(_Pagina) < 1)
                {
                    Response.Redirect("../Error.aspx");
                }
                else Response.Redirect("../PersonalizarUsuario.aspx");
            }

            
        }
    }
}