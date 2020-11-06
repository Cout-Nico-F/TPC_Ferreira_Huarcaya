using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelo
{
    // falto algregarle public a Color porque no me dejaba usarlo en ColoresNegocios
    public class Color 
    {
        public Int16 Id { get; set; } // Int16 para convertir el smallint de la base de datos al leerla.

        public string  Descripcion { get; set; }

    }
}
