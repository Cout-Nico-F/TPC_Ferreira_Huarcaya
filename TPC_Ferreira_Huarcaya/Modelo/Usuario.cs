using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelo
{
    //usuario podria ser una clase abstracta. pero para no meterle mas complejidad al tp vamos a dejarlo asi hasta mas adelante.
    public class Usuario
    {
        //public Int16 IdUsuario { get; set; } la tabla usuario ahora es identity el id
        public Int16 ID { get; set; }
        public string Nombre { get; set; }

        public string Apellido { get; set; }

        public string NombreUsuario { get; set; }

        public string Contrasenia { get; set; }

        public Int16 Id_Acceso { get; set; }
        public string Descripcion { get; set; }
        public string Url_Imagen { get; set; }
    }
}
