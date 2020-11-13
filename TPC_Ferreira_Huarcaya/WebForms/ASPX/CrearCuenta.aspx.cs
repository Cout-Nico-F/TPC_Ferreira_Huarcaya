﻿using Modelo;
using Negocio;
using System.Threading;
using System.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebForms.ASPX
{
    public partial class CrearCuenta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

           

        }

        protected void btn_CrearCuenta_Click(object sender, EventArgs e)
        {
            try
            {
                CrearCuentaNegocio cuentaNeg = new CrearCuentaNegocio();
                Usuario user = new Usuario();
                DatosPersonales dat = new DatosPersonales();

                user.NombreUsuario = txtNombreUsuario.Text;
                user.Contrasenia = txt_Contrasenia.Text;
                user.Id_Acceso = 1;
                dat.NombreApellido = txtNombreApellido.Text;
                dat.TelefonoMovil = Convert.ToInt32(txtTelefonoMovil.Text);
                dat.Email = txtEmail.Text;
                dat.TelefonoFijo = Convert.ToInt32(txtTelefonoFijo.Text);
                dat.FechaNacimiento = Convert.ToDateTime(txtFechaNacimiento.Text);
                dat.EmailRecuperacion = txtEmailRecuperacion.Text;


                try
                {
                    cuentaNeg.CrearCuenta(user, dat);
                    //lbl_texto.Visible = true;
                    //lbl_texto.Text = "Usuario creado correctamente";
                    Thread.Sleep(5000);
                    Response.Redirect("CrearCuenta.aspx");
                }
                catch (SqlException)
                {

                    Response.Redirect("Error.aspx");

                }

            }
            catch (SqlException ex)
            {
                Session.Add("errorEncontrado", ex.ToString());
                Response.Redirect("Error.aspx");
            }

            

            /*
             faltan las validaciones de cada textbox y validaciones en la base de datos
            ademas que cuando aprete el boton se borren los datos pero eso es un clear para cada txt (creo)
             */

        }
       
    }
}