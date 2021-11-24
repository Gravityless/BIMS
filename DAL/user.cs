using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace DAL
{
    public class User
    {
        public static bool add(Model.User user)
        {
            bool result = false;
            int i = MSH.MsSqlHelper.ExecuteSql("insert into t_user (username, password, userstatus) values (" + user.Name + ", " + user.Password + ", " + user.Status + ")");

            if (i > 0)
                result = true;
            return result;
        }


        public static bool login(string username, string password)
        {
            bool result = false;

            string strsql = "select * from t_user where username=" + username + " and password=" + password + "";
            DataTable dataTable = MSH.MsSqlHelper.Query(strsql).Tables[0];

            if (dataTable.Rows.Count == 0)
            {
                result = false;
            }
            else
            {
                result = true;
            }

            return result;
        }

        public static bool Search(string username)
        {
            bool result = false;

            string strsql = "select * from t_user where username=" + username + "";
            DataTable dataTable = MSH.MsSqlHelper.Query(strsql).Tables[0];

            if (dataTable.Rows.Count == 0)
            {
                result = true;
            }
            else
            {
                result = false;
            }
            return result;
        }

        public static List<Model.User> List()
        {
            string strsql = "select * from t_user order by userid desc";
            DataTable dt = MSH.MsSqlHelper.Query(strsql).Tables[0];
            return Dttolist(dt);
        }

        public static List<Model.User> Dttolist(DataTable dt)
        {
            List<Model.User> list = new List<Model.User>();

            for (int i = 0; i< dt.Rows.Count; i++)
            {
                Model.User user = new Model.User();

                user.Id = int.Parse(dt.Rows[i]["userid"].ToString());
                user.Name = dt.Rows[i]["username"].ToString();
                user.Password = dt.Rows[i]["password"].ToString();
                user.Status = int.Parse(dt.Rows[i]["userstatus"].ToString());

                list.Add(user);
            }

            return list;
        }
    }
}