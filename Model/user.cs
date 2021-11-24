using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class User
    {
        private int id;
        public int Id { get => id; set => id = value; }

        private string name;
        public string Name { get => name; set => name = value; }

        private string password;
        public string Password { get => password; set => password = value; }

        private int status;
        public int Status { get => status; set => status = value; }

    }
}
