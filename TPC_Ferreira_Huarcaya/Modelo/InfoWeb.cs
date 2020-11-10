using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;

namespace Modelo
{
    public class InfoWeb
    {
        public Int16 ID_Usuario { get; set; }
        public Int16 ID_Nivel { get; set; }
        public string NombreApellido { get; set; }
        public string Descripcion { get; set; }
        public string UrlImagen { get; set; }
    }
}
