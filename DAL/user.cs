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
        /// <summary>
        /// 增加新用户
        /// </summary>
        /// <param name="user"></param>
        /// <returns></returns>
        public static bool add(Model.User user)
        {
            bool result = false;
            int i = MSH.MsSqlHelper.ExecuteSql("insert into t_user (username, password, userstatus) values ('" + user.Name + "', '" + user.Password + "', " + user.Status + ")");

            if (i > 0)
                result = true;
            return result;
        }
        /// <summary>
        /// 删除用户
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public static bool del(int id)
        {
            bool result = false;
            string strsql = "delete from t_user where userid = " + id + "";

            int i = MSH.MsSqlHelper.ExecuteSql(strsql);

            if (i > 0)
            {
                result = true;
            }

            return result;
        }
        /// <summary>
        /// 更新用户数据
        /// </summary>
        /// <param name="user"></param>
        /// <returns></returns>
        public static bool update(Model.User user)
        {
            bool result = false;

            string strsql = "update t_user set username='" + user.Name + "',password='" + user.Password + "',userstatus=" + user.Status + " where userid=" + user.Id + "";
            int i = MSH.MsSqlHelper.ExecuteSql(strsql);

            if (i > 0)
            {
                result = true;
            }

            return result;
        }

        /// <summary>
        /// 用户登录
        /// </summary>
        /// <param name="username"></param>
        /// <param name="password"></param>
        /// <returns></returns>
        public static bool login(string username, string password)
        {
            bool result = false;

            string strsql = "select * from t_user where username='" + username + "' and password=" + password + "";
            DataTable dt = MSH.MsSqlHelper.Query(strsql).Tables[0];
            

            if (dt.Rows.Count == 0 || int.Parse(dt.Rows[0]["userstatus"].ToString())==-1)
            {
                result = false;
            }
            else
            {
                result = true;
            }

            return result;
        }
        /// <summary>
        /// 查询用户名是否重复
        /// </summary>
        /// <param name="username"></param>
        /// <returns></returns>
        public static bool Search(string username)
        {
            bool result = false;

            string strsql = "select * from t_user where username='" + username + "'";
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
        /// <summary>
        /// 查询所有用户
        /// </summary>
        /// <returns></returns>
        public static List<Model.User> List()
        {
            string strsql = "select * from t_user order by userid desc";
            DataTable dt = MSH.MsSqlHelper.Query(strsql).Tables[0];
            return Dttolist(dt);
        }
        /// <summary>
        /// 将datatable转换成list
        /// </summary>
        /// <param name="dt"></param>
        /// <returns></returns>
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
        /// <summary>
        /// 根据id取出用户
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public static Model.User GetUser(int id)
        {
            Model.User user = new Model.User();

            string strsql = "select * from t_user where userid="+ id +"";
            DataTable dt = MSH.MsSqlHelper.Query(strsql).Tables[0];

            if (dt.Rows.Count != 0)
            {
                user.Id = int.Parse(dt.Rows[0]["userid"].ToString());
                user.Name = dt.Rows[0]["username"].ToString();
                user.Password = dt.Rows[0]["password"].ToString();
                user.Status = int.Parse(dt.Rows[0]["userstatus"].ToString());
            }

            return user;
        }
        /// <summary>
        /// 根据用户名取出用户
        /// </summary>
        /// <param name="username"></param>
        /// <returns></returns>
        public static Model.User GetUser(string username)
        {
            Model.User user = new Model.User();

            string strsql = "select * from t_user where username='" + username + "'";
            DataTable dt = MSH.MsSqlHelper.Query(strsql).Tables[0];

            if (dt.Rows.Count != 0)
            {
                user.Id = int.Parse(dt.Rows[0]["userid"].ToString());
                user.Name = dt.Rows[0]["username"].ToString();
                user.Password = dt.Rows[0]["password"].ToString();
                user.Status = int.Parse(dt.Rows[0]["userstatus"].ToString());
            }

            return user;
        }
    }
}