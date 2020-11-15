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
        public Pagina Paginas { get; set; }
        public Estilo Estilo { get; set; }
        public List<Funcionalidad> ListaFuncionalidadesAgregadas { get; set; }
        public List<Pagina> ListaPaginas { get; set; }
        public List<Estilo> ListaEstilos { get; set; }
        public FuncionalidadNegocio FunNegocio { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                Usuario user = (Usuario)Session["usersession"];
                if(user == null)
                {
                    Response.Redirect("InicioSesion.aspx");
                }

            }
            catch (Exception)
            {

                throw;
            }
            if (!IsPostBack)
            {
                IniciarLlenadoDeDropDownPaginas();
            }
            if (ListaFuncionalidadesAgregadas == null)
            {
                ListaFuncionalidadesAgregadas = new List<Funcionalidad>();
            }
            if (Session["listaFuncionalidadesSelec"] == null)
            {
                Session.Add("listaFuncionalidadesSelec", ListaFuncionalidadesAgregadas);
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

        protected void btn_Agregar_Click(object sender, EventArgs e)
        {

            FuncionalidadNegocio funNeg = new FuncionalidadNegocio();
            var listaFuncionalidades = funNeg.Listar();

            Int16 id = Convert.ToInt16(ddl_Funcionalidades.SelectedItem.Value);

            Funcionalidad = listaFuncionalidades.Find(x => id == x.Id);

            ListaFuncionalidadesAgregadas = (List<Funcionalidad>)Session["listaFuncionalidadesSelec"];

            ListaFuncionalidadesAgregadas.Add(Funcionalidad);

            Session["listaFuncionalidadesSelec"] = ListaFuncionalidadesAgregadas;
        }

        protected void btn_AgregarPagina_Click(object sender, EventArgs e)
        {
            ListaPaginas = new List<Pagina>();
            PaginaNegocio pagNeg = new PaginaNegocio();

            var listaPagina = pagNeg.Listar();

            Int16 id = Convert.ToInt16(ddl_Paginas.SelectedItem.Value);

            Paginas = listaPagina.Find(x => id == x.ID);

            ListaPaginas.Add(Paginas);
        }

        protected void ddl_Estilos_SelectedIndexChanged(object sender, EventArgs e)
        {
            ListaEstilos = new List<Estilo>();
            EstiloNegocio estNeg = new EstiloNegocio();

            var listaEstilo = estNeg.Listar();

            Int16 id = Convert.ToInt16(ddl_Estilos.SelectedItem.Value);
            Estilo = listaEstilo.Find(x => id == x.Id);

            ListaEstilos.Add(Estilo);
        }

        protected void bnt_Funcionalidad_Baja_Click(object sender, EventArgs e)
        {
            string id = ddl_Funcionalidades.SelectedItem.Value;
            Response.Redirect("/ASPX/ConfirmarBajas/FuncionalidadBaja.aspx?idFuncionalidad=" + id);
        }

        protected void btn_Estilo_Baja_Click(object sender, EventArgs e)
        {
            string id = ddl_Estilos.SelectedItem.Value;
            Response.Redirect("/ASPX/ConfirmarBajas/EstiloBaja.aspx?idEstilo=" + id);
        }

        protected void btn_Baja_Estilo_Click(object sender, EventArgs e)
        {
            if (ddl_Estilos.SelectedIndex == 0)
            {
                return;
            }
            FunNegocio.Eliminar(Funcionalidad.Id);//el metodo permite usar un if para comprobar que se pudo eliminar (1) o que no afecto ninguna row (0)
            Response.Redirect("../PersonalizarUsuario.aspx");
        }

        protected void btn_Pagina_Baja_Click(object sender, EventArgs e)
        {
            string id = ddl_Paginas.SelectedItem.Value;
            Response.Redirect("/ASPX/ConfirmarBajas/PaginaBaja.aspx?idPagina=" + id);
        }
    }
}