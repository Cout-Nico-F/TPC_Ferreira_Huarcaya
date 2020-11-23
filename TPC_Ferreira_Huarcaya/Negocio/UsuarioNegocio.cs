using Modelo;
using Negocio;
using System.Data.SqlClient;
using System.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio
{
    public class UsuarioNegocio
    {
        public  List<Usuario> listaDeUsuarios()
        {
            ConexionMSSQL conexion = new ConexionMSSQL();

            List<Usuario> listaDeUsuarios = new List<Usuario>();

            SqlDataReader lectura = conexion.Consulta_Rapida("Select ID,NombreUsuario,Contrasenia,ID_Nivel,Habilitado From Usuarios");

            while (lectura.Read())
            {
                Usuario aux = new Usuario();
                aux.ID = lectura.GetInt16(0);
                aux.NombreUsuario = lectura.GetString(1);
                aux.Contrasenia = lectura.GetString(2);
                aux.Id_Acceso = lectura.GetInt16(3);
                aux.Habilitado = lectura.GetBoolean(4);

                listaDeUsuarios.Add(aux);
            }
            conexion.Desconectar();
            return listaDeUsuarios;

        }
        public void CambiarHabilitado(Int16 id,bool habilitado)
        {
            ConexionMSSQL conexion = new ConexionMSSQL();
            conexion.SentenciaNonQuery("update Usuarios set Habilitado=" + Convert.ToInt16(habilitado) + " Where ID=" + id);
            conexion.Desconectar();
        }
    }
    //TODO: se que informacion Negocio hace lo mismo pero solo trae los id Nivel 3 podria sacar el where y hacer un if en el back del aspx de info para que solo muestre
    //los id nivel 3 pero bueno
}
