using Modelo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio
{
    public class LoginNegocio
    {
        public Usuario login(Usuario user)
        {
            // tengo que ir a la DB y buscarlo
            user.IdUsuario = 6;
            return user;
        }
    }
}
