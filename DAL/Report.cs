using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace DAL
{
    public class Report
    {

        public static bool add(Model.Report report)
        {
            bool result = false;

            string strsql = "insert into t_report(fid, uid, status, date, feedback) values (" + report.Fid + "," + report.Uid + "," + report.Status + ",'" + report.Addate + "','" + report.FeedBack + "')";
            int i = MSH.MsSqlHelper.ExecuteSql(strsql);

            if (i > 0)
            {
                result = true;
            }

            return result;
        }

        public static bool del(int id)
        {
            bool result = false;
            string strsql = "delete from t_report where rid = " + id + "";

            int i = MSH.MsSqlHelper.ExecuteSql(strsql);

            if (i > 0)
            {
                result = true;
            }

            return result;
        }

        public static List<Model.Report> list()
        {
            string strsql = "select * from t_report";
            DataTable dt = MSH.MsSqlHelper.Query(strsql).Tables[0];
            return dotoList(dt);
        }

        public static List<Model.Report> dotoList(DataTable dt)
        {
            List<Model.Report> list = new List<Model.Report>();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                Model.Report report = new Model.Report();

                report.Fid = int.Parse(dt.Rows[i]["fid"].ToString());
                report.Uid = int.Parse(dt.Rows[i]["uid"].ToString());
                report.Rid = int.Parse(dt.Rows[i]["rid"].ToString());
                report.Status = int.Parse(dt.Rows[i]["status"].ToString());
                report.Addate = DateTime.Parse(dt.Rows[i]["date"].ToString());
                report.FeedBack = dt.Rows[i]["feedBack"].ToString();

                list.Add(report);

            }

            return list;
        }

        public static List<Model.Report> GetReport(int uid)
        {
            string strsql = "select * from t_report where uid=" + uid + "";

            DataTable dt = MSH.MsSqlHelper.Query(strsql).Tables[0];
            List<Model.Report> list = dotoList(dt);

            return list;
        }

        public static bool update(int rid)
        {
            bool result = false;

            string strsql = "update t_report set status=1 where rid="+rid+"";
            int i = MSH.MsSqlHelper.ExecuteSql(strsql);

            if (i > 0)
            {
                result = true;
            }

            return result;
        }

    }
}
