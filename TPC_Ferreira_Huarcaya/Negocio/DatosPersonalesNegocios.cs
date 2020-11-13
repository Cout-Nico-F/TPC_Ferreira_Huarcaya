using Modelo;
using System.Data.SqlClient;
using System.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio
{
    public class DatosPersonalesNegocios
    {
        private DatosPersonales TraerDatos(DatosPersonales dat)
        {
            SqlConnection Connection = new SqlConnection("data source = localhost\\SQLEXPRESS01; initial catalog = Ferreira_Huarcaya_DB; integrated security = sspi");
            SqlCommand Command = new SqlCommand();
            Command.Connection = Connection;
            Command.Parameters.AddWithValue("@id_Usuario", dat.Usuario.ID);
            Connection.Open();
            SqlDataReader lectura = Command.ExecuteReader();
            DatosPersonales aux = new DatosPersonales();
            aux.NombreApellido = lectura.GetString(0);
            aux.TelefonoMovil = lectura.GetInt32(1);
            aux.TelefonoFijo = lectura.GetInt32(2);
            aux.Email = lectura.GetString(3);
            aux.FechaNacimiento = lectura.GetDateTime(4);
            aux.EmailRecuperacion = lectura.GetString(5);

            //nose donde poner el select

            return aux;
        }
    }
}
