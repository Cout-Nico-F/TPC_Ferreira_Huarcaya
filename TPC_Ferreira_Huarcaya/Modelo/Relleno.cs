using System;

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
        public string Titulo_Catalogo { get; set; }
        public string Titulo_Card_Catalogo { get; set; }
        public string Descripcion_Catalogo { get; set; }
        public Int32 Precio_Catalogo { get; set; }

        //Pagina 3 

        //Home
        public string Url_Logo { get; set; }
        public string Nombre_Categoria1 { get; set; }
        public string Url_Video1_Categoria1 { get; set; }
        public string Url_Video2_Categoria1 { get; set; }
        public string Url_Video3_Categoria1 { get; set; }
        public string Nombre_Categoria2 { get; set; }
        public string Url_Video1_Categoria2 { get; set; }
        public string Url_Video2_Categoria2 { get; set; }
        public string Url_Video3_Categoria2 { get; set; }

        //Contacto
        //reutilizo las prop de contacto de la pagina 1

    }
}
