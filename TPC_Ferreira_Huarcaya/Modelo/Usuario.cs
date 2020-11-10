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

        public string Nombre { get; set; }

        public string Apellido { get; set; }

        public string NombreUsuario { get; set; }

        public string Contraseña { get; set; }

    }
}
