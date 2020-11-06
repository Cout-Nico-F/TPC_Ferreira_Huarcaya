using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelo
{
    class Cliente : Usuario
    {
        public Int16 Id { get; set; }

        //el id de usuario lo recibe por herencia asi como los demas atributos de Usuario.
    }
}
