using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    public class Admin
    {
        public int ID { get; set; }
        public int IDUsuario { get; set; }

        /*
          Porque Admin tiene un usuario y en caso de necesitarlo 
        desde admin puedo solicitar los datos del usuario

         */

        public Usuario Usuario { get; set; }
    }
}
