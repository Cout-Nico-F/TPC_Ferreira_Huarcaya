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
        public DatosPersonales TraerDatos(int id)
        { 

            ConexionMSSQL conexion = new ConexionMSSQL();
            var lectura = conexion.Consulta_Rapida("Select Nombre_Y_Apellido,Telefono_Movil,Email,Telefono_Fijo,Email_Recuperacion From Datos_Personales Where ID_Usuario=" + id+"");


            lectura.Read();
                DatosPersonales aux = new DatosPersonales();
                aux.NombreApellido = lectura.GetString(0);
                aux.TelefonoMovil = lectura.GetInt32(1);
                aux.Email = lectura.GetString(2);
                aux.TelefonoFijo = lectura.GetInt32(3);
                aux.EmailRecuperacion = lectura.GetString(4);
            return aux;

        }
        public DatosPersonales TraerDatosXCorreo(Int16 id)
        {
            ConexionMSSQL conexion = new ConexionMSSQL();
            var lectura = conexion.Consulta_Rapida("Select Email From Datos_Personales Where Email="+correo+"");

            lectura.Read();
            DatosPersonales aux = new DatosPersonales();
            aux.Email = lectura.GetString(0);
            return aux;
        }
    }
}
