﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Modelo;
using System.Data.SqlClient;

namespace Negocio
{
    public class PaginasWebNegocios
    {
        public List<PaginaWeb> listaPaginassWeb()
        {
            ConexionMSSQL conexion = new ConexionMSSQL();

            List<PaginaWeb> listaPaginaWeb = new List<PaginaWeb>();

            SqlDataReader lectura = conexion.Consulta_Rapida("Select ID,Titulo,Descripcion,Url_Pagina,Url_Image From PaginaWeb");

            while (lectura.Read())
            {
                PaginaWeb aux = new PaginaWeb();
                aux.ID = lectura.GetInt16(0);
                aux.Titulo = lectura.GetString(1);
                aux.Descripcion = lectura.GetString(2);
                aux.Url_PaginaWeb = lectura.GetString(3);
                aux.Url_Imagen = lectura.GetString(4);

                listaPaginaWeb.Add(aux);
            }
            conexion.Desconectar();
            return listaPaginaWeb;
        }
    }
}
