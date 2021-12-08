using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class Report
    {

        public static bool add(Model.Report report)
        {
            return DAL.Report.add(report);
        }

        public static bool del(int id)
        {
            return DAL.Report.del(id);
        }

        public static List<Model.Report> list()
        {
            return DAL.Report.list();
        }

        public static List<Model.Report> GetReport(int uid)
        {
            return DAL.Report.GetReport(uid);
        }

        public static bool update(int rid)
        {
            return DAL.Report.update(rid);
        }
    }
}
