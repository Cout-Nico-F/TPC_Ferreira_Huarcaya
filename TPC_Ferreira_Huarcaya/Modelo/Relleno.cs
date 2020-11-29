using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelo
{
    public class Relleno
    {
        //Pagina 1
        public string Titulo { get; set; }
        public string Nombre_Pagina { get; set; }
        public string Titulo_Home { get; set; }
        public string Texto_Home { get; set; }
        public string Texto_Contacto { get; set; }
        public string Email { get; set; }
        public string Telefono { get; set; }
        public string Direccion { get; set; }

        //Pagina 2

        //Pagina
        //Reutilizo Nombre Pagina
        public string Url_Logo_Pagina { get; set; }
        //Carousel
        public string Url_Imagen_Home { get; set; }//
        public string Url_Imagen_Home2 { get; set; }//
        public string Titulo_Pagina1 { get; set; }//
        public string Titulo_Pagina2 { get; set; }//
        
        //Catalogo
        public string url_Imagen_Catalogo { get; set; }
        public string  Titulo_Catalogo { get; set; }
        public string Titulo_Card_Catalogo { get; set; }
        public string  Descripcion_Catalogo { get; set; }

    }
}
