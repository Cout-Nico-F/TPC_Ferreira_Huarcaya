using Modelo;
using Negocios;
using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace Negocio
{
    public class CrearCuentaNegocio
    {

        public int CrearCuenta(Usuario user,DatosPersonales dat)
        {
            //retorna un entero porque asi esta en la DB
            ConexionMSSQL conexion = new ConexionMSSQL();

            conexion.Conectar();

            string SpCrearCuenta = "Exec SP_CrearUsuario";

            conexion.SetStoredProcedure(SpCrearCuenta);

            conexion.AgregarParametro("@NombreUsuario",user.NombreUsuario);
            conexion.AgregarParametro("@Contrasenia",user.Contrasenia);
            conexion.AgregarParametro("@ID_Nivel",Convert.ToString(user.Nivel.ID));
            conexion.AgregarParametro("@NombreApellido",dat.NombreApellido);
            conexion.AgregarParametro("@TelefonoMovil",Convert.ToString(dat.TelefonoMovil));
            conexion.AgregarParametro("@Email", dat.Email);
            conexion.AgregarParametro("@Email",Convert.ToString(dat.TelefonoFijo));
            conexion.AgregarParametro("@FechaNacimiento",Convert.ToString(dat.FechaNacimiento));
            conexion.AgregarParametro("@EmailRecuperacion",dat.EmailRecuperacion);


            DbDataReader lectura = conexion.Leer();

            lectura.Read();

            int num = lectura.GetInt32(0);

            return num;


        }

    }
}
