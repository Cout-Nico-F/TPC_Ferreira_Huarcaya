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
    public partial class PersonalizarEstilos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                IniciarLlenadoDeDropDownEstilos();
            }
        }
        private void IniciarLlenadoDeDropDownEstilos()
        {
            DropdownsNegocio estNeg = new DropdownsNegocio();
            
            //Estilos
            ddl_Estilos.DataSource = estNeg.ConsultaDataSet("Select * From Estilos");
            ddl_Estilos.DataTextField = "Descripcion";
            ddl_Estilos.DataValueField = "ID";
            ddl_Estilos.DataBind();
            ddl_Estilos.Items.Insert(0, new ListItem("[Estilos]", "0"));
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {

            string est = ddl_Estilos.SelectedValue;

            Session["listaObjetos"] = est;
        }

        protected void ddl_Estilos_SelectedIndexChanged(object sender, EventArgs e)
        {
            /* PersonalizarUsuarioNegocio perNeg = new PersonalizarUsuarioNegocio();
             string est = "Creativo";
             string urlImagen;
             urlImagen = perNeg.BuscarImagen(est);*/
            Response.Redirect("PersonalizarFuncionalidades.aspx");
        }
    }
}