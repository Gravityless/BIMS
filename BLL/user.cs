using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class User
    {
        public static bool add(Model.User user)
        {
            return DAL.User.add(user);
        }

        public static bool login(string username, string password)
        {
            return DAL.User.login(username, password);
        }

        public static  bool Search(string username)
        {
            return DAL.User.Search(username);
        }

        public static List<Model.User> list()
        {
            return DAL.User.List();
        }
    }
}
