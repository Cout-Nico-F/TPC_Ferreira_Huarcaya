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
    public partial class PersonalizarPaginas : System.Web.UI.Page
    {
        public Funcionalidad Funcionalidad { get; set; }
        public Estilo EstiloSeleccionado { get; set; }
        public Funcionalidad BajaFuncionalidad { get; set; }
        public List<Funcionalidad> ListaFuncionalidadesAgregadas { get; set; }
        public List<Pagina> ListaPaginasAgregadas { get; set; }
        public Pagina PaginaSeleccionada { get; set; }
        public Usuario Usuario { get; set; }
        public List<Funcionalidad> EliminarFuncionalidad { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            //try
            //{
            //    Usuario  = (Usuario)Session["usersession"];
            //    if(Usuario == null)
            //    {
            //        Response.Redirect("InicioSesion.aspx");
            //    }

            //}
            //catch (Exception)
            //{

            //    throw;
            //}
            if (ListaFuncionalidadesAgregadas == null)
            {
                ListaFuncionalidadesAgregadas = new List<Funcionalidad>();
            }
            if (ListaPaginasAgregadas == null)
            {
                ListaPaginasAgregadas = new List<Pagina>();
            }

            if (!IsPostBack)
            {
                IniciarLlenadoDeDropDownPaginas();
                if (Session["listaFuncionalidadesSelec"] != null)
                {
                    ListaFuncionalidadesAgregadas = (List<Funcionalidad>)Session["listaFuncionalidadesSelec"];
                }
                
            }
            if (Session["listaFuncionalidadesSelec"] != null)
            {
                ListaFuncionalidadesAgregadas = (List<Funcionalidad>)Session["listaFuncionalidadesSelec"];
            }
            else
            {
                Session.Add("listaFuncionalidadesSelec", ListaFuncionalidadesAgregadas);
            }

            
            
            if(Session["listaPaginasSelec"] == null)
            {
                Session.Add("listaPaginasSelec", ListaPaginasAgregadas);
            }
            else
            {
                ListaPaginasAgregadas = (List<Pagina>)Session["listaPaginasSelec"];
            }

            if (Request.QueryString["IdRemoverFuncionalidad"] != null)
            {
                RemoverFuncionalidad();
            }


        }
        private void IniciarLlenadoDeDropDownPaginas()
        {
            DropdownsNegocio estNeg = new DropdownsNegocio();

            //Paginas


            ddl_Paginas.DataSource = estNeg.ConsultaDataSet("Select * From Paginas");
            ddl_Paginas.DataTextField = "Descripcion";
            ddl_Paginas.DataValueField = "ID";
            ddl_Paginas.DataBind();
            ddl_Paginas.Items.Insert(0, new ListItem("[Pagina]", "0"));
            //Paginas tambien podria tener una url_Imagen */

            //Estilos
            ddl_Estilos.DataSource = estNeg.ConsultaDataSet("Select * From Estilos");
            ddl_Estilos.DataTextField = "Descripcion";
            ddl_Estilos.DataValueField = "ID";
            ddl_Estilos.DataBind();
            ddl_Estilos.Items.Insert(0, new ListItem("[Estilos]", "0"));

            //Funcionalidades
            ddl_Funcionalidades.DataSource = estNeg.ConsultaDataSet("Select * From Funcionalidades"); ;
            ddl_Funcionalidades.DataTextField = "Descripcion";
            ddl_Funcionalidades.DataValueField = "ID";
            ddl_Funcionalidades.DataBind();
            ddl_Funcionalidades.Items.Insert(0, new ListItem("[Funcionalidades]", "0"));

        }

        protected void btn_Agregar_Funcionalidad_Click(object sender, EventArgs e)
        {
            if(ddl_Funcionalidades.SelectedIndex != 0)
            {
                FuncionalidadNegocio funNeg = new FuncionalidadNegocio();
                var listaFuncionalidades = funNeg.Listar();

                Int16 id = Convert.ToInt16(ddl_Funcionalidades.SelectedItem.Value);

                Funcionalidad = listaFuncionalidades.Find(x => id == x.Id);

                ListaFuncionalidadesAgregadas = (List<Funcionalidad>)Session["listaFuncionalidadesSelec"];

                ListaFuncionalidadesAgregadas.Add(Funcionalidad);

                Session["listaFuncionalidadesSelec"] = ListaFuncionalidadesAgregadas;
            }

            /*if(ddl_Funcionalidades.SelectedIndex != 0)
            {
                Funcionalidad fun = ddl_Funcionalidades.SelectedValue; //me tiene que devolver el nombre y el costo

                ListaFuncionalidadAgregadas = ((List<Funcionalidad>)Session["listaFuncionalidad"]);

                ListaFuncionalidadAgregadas.Add(fun);

                Session["listaFuncionalidad"] = ListaFuncionalidadAgregadas;

            }*/
           
        }

        protected void btn_AgregarPagina_Click(object sender, EventArgs e)
        {
            if(ddl_Paginas.SelectedIndex != 0)
            {
                ListaPaginasAgregadas = (List<Pagina>) Session["listaPaginasSelec"];
                PaginaNegocio pagNeg = new PaginaNegocio();

                var listaCompletaPaginas = pagNeg.Listar();

                Int16 id = Convert.ToInt16(ddl_Paginas.SelectedItem.Value);

                ListaPaginasAgregadas.Add(listaCompletaPaginas.Find(x => id == x.ID));

                Session["listaPaginasSelec"] = ListaPaginasAgregadas;
            }
          
        }

        

        protected void bnt_Funcionalidad_Baja_Click(object sender, EventArgs e)
        {
            if(ddl_Funcionalidades.SelectedIndex != 0)
            {
                string id = ddl_Funcionalidades.SelectedItem.Value;
                Response.Redirect("/ASPX/ConfirmarBajas/FuncionalidadBaja.aspx?idFuncionalidad=" + id);
            }
          
        }

        protected void btn_Estilo_Baja_Click(object sender, EventArgs e)
        {
            if(ddl_Estilos.SelectedIndex != 0)
            {
                string id = ddl_Estilos.SelectedItem.Value;
                Response.Redirect("/ASPX/ConfirmarBajas/EstiloBaja.aspx?idEstilo=" + id);
            }
           
        }

      
        protected void ddl_Paginas_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (Convert.ToInt16(ddl_Paginas.SelectedItem.Value) != 0)
            {
                PaginaNegocio pagNeg = new PaginaNegocio();

                var listaPaginas = pagNeg.Listar();

                Int16 id = Convert.ToInt16(ddl_Paginas.SelectedItem.Value);                

                PaginaSeleccionada = listaPaginas.Find(x => id == x.ID);
            }           
        }

        protected void ddl_Estilos_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (Convert.ToInt16(ddl_Estilos.SelectedItem.Value) != 0)
            {
                EstiloNegocio estNeg = new EstiloNegocio();

                var listaEstilo = estNeg.Listar();

                Int16 id = Convert.ToInt16(ddl_Estilos.SelectedItem.Value);
                EstiloSeleccionado = listaEstilo.Find(x => id == x.Id);
            }

        }

        protected void btn_Pagina_Baja_Click(object sender, EventArgs e)
        {
            if (ddl_Paginas.SelectedIndex != 0)
            {
                string id = ddl_Paginas.SelectedItem.Value;
                Response.Redirect("/ASPX/ConfirmarBajas/PaginaBaja.aspx?idPagina=" + id);
            }
        }

        protected void btn_Pagina_Modificacion_Click(object sender, EventArgs e)
        {
            //validar si hay una pagina elegida en el dropdown
            Response.Redirect("AltasModificaciones/PaginasAM.aspx?idPagina=" + ddl_Paginas.SelectedItem.Value);
        }

        protected void btn_Funcionalidad_Modificacion_Click(object sender, EventArgs e)
        {
            Response.Redirect("AltasModificaciones/FuncionalidadesAM.aspx?idFuncionalidad=" + ddl_Funcionalidades.SelectedItem.Value);

        }

        protected void btn_Estilo_Modificacion_Click(object sender, EventArgs e)
        {
            Response.Redirect("AltasModificaciones/EstilosAM.aspx?idEstilo=" + ddl_Estilos.SelectedItem.Value);
        }

        void RemoverFuncionalidad()
        {
            Int16 id = Convert.ToInt16 (Request.QueryString["IdRemoverFuncionalidad"]);
            FuncionalidadNegocio funNeg = new FuncionalidadNegocio();
            var listaFuncionalidadesCompleta = funNeg.Listar();
            var func = listaFuncionalidadesCompleta.Find(x => x.Id == id);

            ListaFuncionalidadesAgregadas = (List<Funcionalidad>)Session["listaFuncionalidadesSelec"];
            int indiceBuscado = ListaFuncionalidadesAgregadas.FindIndex(f => f.Id == func.Id);
            ListaFuncionalidadesAgregadas.RemoveAt(indiceBuscado);
            
            Session["listaFuncionalidadesSelec"] = ListaFuncionalidadesAgregadas;
            Response.Redirect("PersonalizarUsuario.aspx");
        }
    }
}