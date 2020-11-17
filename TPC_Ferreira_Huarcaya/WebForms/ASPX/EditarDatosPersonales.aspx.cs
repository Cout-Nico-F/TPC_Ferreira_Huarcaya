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
    public partial class EditarDatosPersonales : System.Web.UI.Page
    {
        public Usuario Usuario { get; set; }
        public Int16 idUsuario; 
        protected void Page_Load(object sender, EventArgs e)
        {
            Usuario = (Usuario)Session["usersession"];
            if(Usuario != null)
            {
                if (!IsPostBack)
                {
                    try
                    { 
                        DatosPersonales dat = new DatosPersonales();
                        DatosPersonalesNegocios edNeg = new DatosPersonalesNegocios();

                        dat = edNeg.TraerDatos(Usuario.ID); //esta mal la conexion a la DB sqlexception must declare scalar @id_Usuario en command = executeNonQuery();

                        idUsuario = Usuario.ID; //guardo el id de la session en una variable

                        //Muestra en cada textbox los datos que encontro del usuario

                        txtNombreApellido.Text = dat.NombreApellido;
                        txtTelefonoMovil.Text = Convert.ToString(dat.TelefonoMovil);
                        txtTelefonoFijo.Text = Convert.ToString(dat.TelefonoFijo);
                        txtEmail.Text = dat.Email;
                        txtEmailRecuperacion.Text = dat.EmailRecuperacion;
                        txtContrasenia.Text = Usuario.Contrasenia;
                        txtNombreUsuario.Text = Usuario.NombreUsuario;
                    }
                    catch (Exception)
                    {
                        // el usuario no fue encontrado o hubo un error inesperado
                        Response.Redirect("Error.aspx");
                    }

                }

            }
            else
            {
                Response.Redirect("InicioSesion.aspx");//si no esta logeado me manda a iniciar sesion
            }

        }
        protected void btn_Cambio_Click(object sender, EventArgs e)
        {

            //validar primero que los campos no sean vacios (los campos opcionales son los unicos vacios)

            //enviarlo de nuevo a la DB con update
            DatosPersonales datos = new  DatosPersonales();
            Usuario usu = new Usuario();
            PaginasWebNegocios pagNeg = new PaginasWebNegocios();

            datos.NombreApellido = txtNombreApellido.Text;
            datos.TelefonoMovil = Convert.ToInt32(txtTelefonoMovil.Text);
            datos.TelefonoFijo = Convert.ToInt32(txtTelefonoFijo.Text);
            datos.Email = txtEmail.Text;
            datos.EmailRecuperacion = txtEmailRecuperacion.Text;
            usu.NombreUsuario = txtNombreUsuario.Text;
            usu.Contrasenia = txtContrasenia.Text;
            usu.ID = idUsuario; //le envio el id guardo en el page load


            pagNeg.ActualizarDatos(usu,datos);

        }
    }
}