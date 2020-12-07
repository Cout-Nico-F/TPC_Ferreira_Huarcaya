using System;

namespace Modelo
{
    public class Pagina
    {
        public Int16 ID { get; set; }
        public string Descripcion { get; set; }

        public string Url_Imagen { get; set; }
        public bool Habilitado { get; set; }
    }
}
