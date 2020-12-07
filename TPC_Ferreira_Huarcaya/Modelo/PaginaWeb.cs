using System;

namespace Modelo
{
    public class PaginaWeb
    {
        public Int16 ID { get; set; }
        public string Titulo { get; set; }
        public string Descripcion { get; set; }
        public string Url_PaginaWeb { get; set; }
        public string Url_Imagen { get; set; }
        public bool Habilitado { get; set; }
        public Int32 Precio { get; set; }
    }
}
