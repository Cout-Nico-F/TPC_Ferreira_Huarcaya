using Modelo;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Text;

namespace Negocio
{
    public class UsuarioNegocio
    {
        public List<Usuario> listaDeUsuarios()
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
        public void CambiarHabilitado(Int16 id, bool habilitado)
        {
            ConexionMSSQL conexion = new ConexionMSSQL();
            conexion.SentenciaNonQuery("update Usuarios set Habilitado=" + Convert.ToInt16(habilitado) + " Where ID=" + id);
            conexion.Desconectar();
        }
        public static string GetSHA256(string str)
        {
            SHA256 sha256 = SHA256Managed.Create();
            ASCIIEncoding encoding = new ASCIIEncoding();
            byte[] stream = null;
            StringBuilder sb = new StringBuilder();
            stream = sha256.ComputeHash(encoding.GetBytes(str));
            for (int i = 0; i < stream.Length; i++) sb.AppendFormat("{0:x2}", stream[i]);
            return sb.ToString();
        }

    }
    //TODO: se que informacion Negocio hace lo mismo pero solo trae los id Nivel 3 podria sacar el where y hacer un if en el back del aspx de info para que solo muestre
    //los id nivel 3 pero bueno
}
