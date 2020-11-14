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
        public  DatosPersonales TraerDatos(int id)
        {
            
            ConexionMSSQL conexion = new ConexionMSSQL();
            SqlDataReader lectura =  conexion.Consulta_Rapida("Select * From Datos_Personales Where id_Usuario = @id_Usuario");

            conexion.AgregarParametro("@id_Usuario", Convert.ToString(id));

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
        public int ActualizarDatos(DatosPersonales dat)
        {
            int RowsModificadas;

            //aca va el codigo para un update del usuario

            //hace un return de la rows que modificaron si es mas de 1 se modificaron correctamente

            return RowsModificadas;
        }
    }
}
