using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class User
    {
        public static bool add(Model.User user)
        {
            bool result = false;
            int i = MsSqlHelper.YFMsSqlHelper.ExecuteSql("insert into initial (name) values ('"+ user.Name +"')");

            if (i > 0)
                result = true;
            return result;
        }
    }
}
