using Negocio;
using Modelo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForms.ASPX
{
    public partial class RecuperarContaseña : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Recuperar_Click(object sender, EventArgs e)
        {
            DatosPersonalesNegocios datNeg = new DatosPersonalesNegocios();
            
           //  DatosPersonales correo =  datNeg.TraerDatosXCorreo();
            
            // ahora que lo pienso correo no va a ser null
            // podria hacer un procedimiento almacenado que en caso de que no lo encuentre me mando un return de algo entonces hago el if con eso pero primero tengo que hacer que funcione
           /* if(Convert.ToString(correo.Email) != "") //si no es vacio 
            {
                lbl_Recuperar.Text = "Revise su bandeja de entrada";
            }
            else
            {
                lbl_Recuperar.Text = "No se encontro el correo";
            }*/
           //TODO: No podemos buscar por correo porque la contraseña esta en Usuarios y lo unico que conecta con Datos_Personales es el id pero el usuario no sabe el ID que tiene entonces como hacemos??


        }
    }
}