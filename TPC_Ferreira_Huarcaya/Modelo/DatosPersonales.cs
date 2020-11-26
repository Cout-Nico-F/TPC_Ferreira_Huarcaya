using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelo
{
    public class DatosPersonales
    {
        public Int16 IdUsuario { get; set; }
        public string NombreApellido { get; set; }
        public Int32 TelefonoMovil { get; set; }
        public string Email { get; set; }
        public Int32 TelefonoFijo { get; set; }
        public DateTime FechaNacimiento { get; set; }
        public string EmailRecuperacion { get; set; }

    }
}
